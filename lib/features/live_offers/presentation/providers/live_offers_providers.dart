import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:magic_rewards/config/di/injectable_config.dart';
import 'package:magic_rewards/features/live_offers/domain/entities/live_offer_entity.dart';
import 'package:magic_rewards/features/live_offers/domain/parameters/live_offers_parameters.dart';
import 'package:magic_rewards/features/live_offers/domain/usecases/get_live_offers_usecase.dart';

part 'live_offers_providers.g.dart';

// Use case provider
@riverpod
GetLiveOffersUseCase getLiveOffersUseCase(Ref ref) {
  return getIt<GetLiveOffersUseCase>();
}

// Main live offers notifier with pagination support
@riverpod
class LiveOffersNotifier extends _$LiveOffersNotifier {
  int _page = 0;
  static const int _length = 10;
  List<LiveOfferEntity> _allOffers = [];

  @override
  FutureOr<LiveOffersEntity> build() async {
    return fetchLiveOffers(refresh: true);
  }

  Future<LiveOffersEntity> fetchLiveOffers({bool refresh = false}) async {
    if (refresh) {
      _resetPagination();
    }

    final useCase = ref.read(getLiveOffersUseCaseProvider);
    final result = await useCase.call(
      params: GetLiveOffersParameters(
        length: _length,
        page: _page,
      ),
    );

    return result.fold(
      (failure) => throw failure,
      (newData) {
        _page++;
        if (refresh) {
          _allOffers = newData.liveOffers;
        } else {
          _allOffers.addAll(newData.liveOffers);
        }
        return LiveOffersEntity(liveOffers: _allOffers);
      },
    );
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    try {
      final result = await fetchLiveOffers(refresh: true);
      state = AsyncData(result);
    } catch (error, stackTrace) {
      state = AsyncError(error, stackTrace);
    }
  }

  Future<void> loadMore() async {
    if (state.isLoading) return;

    try {
      final currentData = state.value;
      if (currentData == null) return;

      final result = await fetchLiveOffers(refresh: false);
      state = AsyncData(result);
    } catch (error, stackTrace) {
      state = AsyncError(error, stackTrace);
    }
  }

  void _resetPagination() {
    _page = 0;
    _allOffers = [];
  }

  bool get hasMore {
    // Add logic based on your API response to determine if more data is available
    // This is a placeholder - adjust based on your API structure
    return true;
  }
}

// Convenience providers for easy access to specific data
@riverpod
List<LiveOfferEntity> liveOffersData(Ref ref) {
  final asyncValue = ref.watch(liveOffersProvider);
  return asyncValue.value?.liveOffers ?? [];
}

@riverpod
bool isLoadingLiveOffers(Ref ref) {
  final asyncValue = ref.watch(liveOffersProvider);
  return asyncValue.isLoading;
}

@riverpod
bool hasLiveOffersError(Ref ref) {
  final asyncValue = ref.watch(liveOffersProvider);
  return asyncValue.hasError;
}

@riverpod
String? liveOffersErrorMessage(Ref ref) {
  final asyncValue = ref.watch(liveOffersProvider);
  return asyncValue.hasError ? asyncValue.error.toString() : null;
}