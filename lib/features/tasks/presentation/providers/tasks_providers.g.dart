// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasks_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(tasksRepository)
const tasksRepositoryProvider = TasksRepositoryProvider._();

final class TasksRepositoryProvider
    extends
        $FunctionalProvider<TasksRepository, TasksRepository, TasksRepository>
    with $Provider<TasksRepository> {
  const TasksRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'tasksRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$tasksRepositoryHash();

  @$internal
  @override
  $ProviderElement<TasksRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  TasksRepository create(Ref ref) {
    return tasksRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TasksRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TasksRepository>(value),
    );
  }
}

String _$tasksRepositoryHash() => r'9056be2713fa35de0dc859db8690d6ab74f7f703';

@ProviderFor(TasksNotifier)
const tasksProvider = TasksNotifierProvider._();

final class TasksNotifierProvider
    extends $AsyncNotifierProvider<TasksNotifier, TasksEntity> {
  const TasksNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'tasksProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$tasksNotifierHash();

  @$internal
  @override
  TasksNotifier create() => TasksNotifier();
}

String _$tasksNotifierHash() => r'0605bdbff820b336501ba2361b50e650ca4e4257';

abstract class _$TasksNotifier extends $AsyncNotifier<TasksEntity> {
  FutureOr<TasksEntity> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<TasksEntity>, TasksEntity>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<TasksEntity>, TasksEntity>,
              AsyncValue<TasksEntity>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(TaskOrdersNotifier)
const taskOrdersProvider = TaskOrdersNotifierProvider._();

final class TaskOrdersNotifierProvider
    extends $AsyncNotifierProvider<TaskOrdersNotifier, TasksOrdersEntity?> {
  const TaskOrdersNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'taskOrdersProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$taskOrdersNotifierHash();

  @$internal
  @override
  TaskOrdersNotifier create() => TaskOrdersNotifier();
}

String _$taskOrdersNotifierHash() =>
    r'a7a5e9d83bbe1fdf727513eade40d611751ddb3a';

abstract class _$TaskOrdersNotifier extends $AsyncNotifier<TasksOrdersEntity?> {
  FutureOr<TasksOrdersEntity?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AsyncValue<TasksOrdersEntity?>, TasksOrdersEntity?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<TasksOrdersEntity?>, TasksOrdersEntity?>,
              AsyncValue<TasksOrdersEntity?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(ReserveCommentNotifier)
const reserveCommentProvider = ReserveCommentNotifierProvider._();

final class ReserveCommentNotifierProvider
    extends
        $AsyncNotifierProvider<ReserveCommentNotifier, ReserveCommentEntity?> {
  const ReserveCommentNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'reserveCommentProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$reserveCommentNotifierHash();

  @$internal
  @override
  ReserveCommentNotifier create() => ReserveCommentNotifier();
}

String _$reserveCommentNotifierHash() =>
    r'bb4d4a7200142f961015bb21551819511fa8ce4e';

abstract class _$ReserveCommentNotifier
    extends $AsyncNotifier<ReserveCommentEntity?> {
  FutureOr<ReserveCommentEntity?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<AsyncValue<ReserveCommentEntity?>, ReserveCommentEntity?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<ReserveCommentEntity?>,
                ReserveCommentEntity?
              >,
              AsyncValue<ReserveCommentEntity?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(AddTaskOrderNotifier)
const addTaskOrderProvider = AddTaskOrderNotifierProvider._();

final class AddTaskOrderNotifierProvider
    extends $AsyncNotifierProvider<AddTaskOrderNotifier, bool?> {
  const AddTaskOrderNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'addTaskOrderProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$addTaskOrderNotifierHash();

  @$internal
  @override
  AddTaskOrderNotifier create() => AddTaskOrderNotifier();
}

String _$addTaskOrderNotifierHash() =>
    r'2ec7552e5ad432bba7c1abd9097340403e05d156';

abstract class _$AddTaskOrderNotifier extends $AsyncNotifier<bool?> {
  FutureOr<bool?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<bool?>, bool?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<bool?>, bool?>,
              AsyncValue<bool?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(tasksList)
const tasksListProvider = TasksListProvider._();

final class TasksListProvider
    extends
        $FunctionalProvider<
          List<TaskEntity>,
          List<TaskEntity>,
          List<TaskEntity>
        >
    with $Provider<List<TaskEntity>> {
  const TasksListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'tasksListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$tasksListHash();

  @$internal
  @override
  $ProviderElement<List<TaskEntity>> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  List<TaskEntity> create(Ref ref) {
    return tasksList(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<TaskEntity> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<TaskEntity>>(value),
    );
  }
}

String _$tasksListHash() => r'355f547cdba220cfd952ff831afc4cfa6d451e83';

@ProviderFor(isTasksLoading)
const isTasksLoadingProvider = IsTasksLoadingProvider._();

final class IsTasksLoadingProvider extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  const IsTasksLoadingProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'isTasksLoadingProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$isTasksLoadingHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return isTasksLoading(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$isTasksLoadingHash() => r'c7c9c1ad6582b5a4ac8742926cfaaebb909f6887';

@ProviderFor(tasksErrorMessage)
const tasksErrorMessageProvider = TasksErrorMessageProvider._();

final class TasksErrorMessageProvider
    extends $FunctionalProvider<String?, String?, String?>
    with $Provider<String?> {
  const TasksErrorMessageProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'tasksErrorMessageProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$tasksErrorMessageHash();

  @$internal
  @override
  $ProviderElement<String?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String? create(Ref ref) {
    return tasksErrorMessage(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }
}

String _$tasksErrorMessageHash() => r'9c7fc5a7e0c3dd29c5e158e08e775eb557067660';
