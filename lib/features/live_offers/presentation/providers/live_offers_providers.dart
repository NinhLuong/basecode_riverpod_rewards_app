import 'package:flutter/material.dart';
import 'package:riverpod_rewards/features/live_offers/presentation/state/live_offers_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_rewards/config/di/injectable_config.dart';
import 'package:riverpod_rewards/features/live_offers/domain/entities/live_offer_entity.dart';
import 'package:riverpod_rewards/features/live_offers/domain/parameters/live_offers_parameters.dart';
import 'package:riverpod_rewards/features/live_offers/domain/usecases/get_live_offers_usecase.dart';

part 'live_offers_providers.g.dart';

// Use case provider
@riverpod
GetLiveOffersUseCase getLiveOffersUseCase(Ref ref) {
  return getIt<GetLiveOffersUseCase>();
}

// Main live offers notifier with explicit state management
@riverpod
class LiveOffersNotifier extends _$LiveOffersNotifier {
  int _page = 0;
  static const int _length = 10;
  LiveOffersEntity _currentEntity = const LiveOffersEntity(liveOffers: []);

  @override
  LiveOffersState build() {
    // Auto-fetch on build
    WidgetsBinding.instance.addPostFrameCallback((_) {
      fetchLiveOffers(refresh: true);
    });
    return const LiveOffersState.initial();
  }

  Future<void> fetchLiveOffers({bool refresh = false}) async {
    if (refresh) {
      _resetPagination();
      state = const LiveOffersState.loading();
    } else if (state.isSuccess || state.isLoadingMore) {
      state = LiveOffersState.loadingMore(_currentEntity);
    } else {
      state = const LiveOffersState.loading();
    }

    final useCase = ref.read(getLiveOffersUseCaseProvider);
    final result = await useCase.call(
      params: GetLiveOffersParameters(length: _length, page: _page),
    );

    result.fold(
      (failure) => state = LiveOffersState.error(failure),
      (newData) {
        _page++;
        _currentEntity = LiveOffersEntity(
          liveOffers: refresh
              ? newData.liveOffers
              : _currentEntity.liveOffers + newData.liveOffers,
        );
        state = LiveOffersState.success(_currentEntity);
      },
    );
  }

  Future<void> refresh() => fetchLiveOffers(refresh: true);

  Future<void> loadMore() => fetchLiveOffers(refresh: false);

  void _resetPagination() {
    _page = 0;
    _currentEntity = const LiveOffersEntity(liveOffers: []);
  }

  bool get hasMore => _currentEntity.liveOffers.length >= _page * _length;
}

// Convenience providers using @riverpod
@riverpod
List<LiveOfferEntity> liveOffersData(Ref ref) {
  final state = ref.watch(liveOffersProvider);
  return state.data?.liveOffers ?? [];
}

@riverpod
bool isLoadingLiveOffers(Ref ref) {
  final state = ref.watch(liveOffersProvider);
  return state.isLoading;
}

@riverpod
bool isLoadingMoreLiveOffers(Ref ref) {
  final state = ref.watch(liveOffersProvider);
  return state.isLoadingMore;
}

@riverpod
String? liveOffersErrorMessage(Ref ref) {
  final state = ref.watch(liveOffersProvider);
  return state.errorMessage;
}

@riverpod
bool hasLiveOffersError(Ref ref) {
  final state = ref.watch(liveOffersProvider);
  return state.isError;
}