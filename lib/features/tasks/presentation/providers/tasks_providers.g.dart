// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasks_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(tasksRepository)
final tasksRepositoryProvider = TasksRepositoryProvider._();

final class TasksRepositoryProvider
    extends
        $FunctionalProvider<TasksRepository, TasksRepository, TasksRepository>
    with $Provider<TasksRepository> {
  TasksRepositoryProvider._()
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
final tasksProvider = TasksNotifierProvider._();

final class TasksNotifierProvider
    extends $NotifierProvider<TasksNotifier, TasksState> {
  TasksNotifierProvider._()
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

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TasksState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TasksState>(value),
    );
  }
}

String _$tasksNotifierHash() => r'ef0095f7588139085220338dcba65317b8a1ba2b';

abstract class _$TasksNotifier extends $Notifier<TasksState> {
  TasksState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<TasksState, TasksState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<TasksState, TasksState>,
              TasksState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(TaskOrdersNotifier)
final taskOrdersProvider = TaskOrdersNotifierProvider._();

final class TaskOrdersNotifierProvider
    extends $NotifierProvider<TaskOrdersNotifier, TaskOrdersState> {
  TaskOrdersNotifierProvider._()
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

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TaskOrdersState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TaskOrdersState>(value),
    );
  }
}

String _$taskOrdersNotifierHash() =>
    r'43d739d3f67e21f5108b1cda9b92f6c3e9c008d1';

abstract class _$TaskOrdersNotifier extends $Notifier<TaskOrdersState> {
  TaskOrdersState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<TaskOrdersState, TaskOrdersState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<TaskOrdersState, TaskOrdersState>,
              TaskOrdersState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(ReserveCommentNotifier)
final reserveCommentProvider = ReserveCommentNotifierProvider._();

final class ReserveCommentNotifierProvider
    extends $NotifierProvider<ReserveCommentNotifier, ReserveCommentState> {
  ReserveCommentNotifierProvider._()
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

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ReserveCommentState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ReserveCommentState>(value),
    );
  }
}

String _$reserveCommentNotifierHash() =>
    r'fe3d6ee0389fb64561500aa5e1ab3b1be576ca18';

abstract class _$ReserveCommentNotifier extends $Notifier<ReserveCommentState> {
  ReserveCommentState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<ReserveCommentState, ReserveCommentState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ReserveCommentState, ReserveCommentState>,
              ReserveCommentState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(AddTaskOrderNotifier)
final addTaskOrderProvider = AddTaskOrderNotifierProvider._();

final class AddTaskOrderNotifierProvider
    extends $NotifierProvider<AddTaskOrderNotifier, AddTaskOrderState> {
  AddTaskOrderNotifierProvider._()
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

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AddTaskOrderState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AddTaskOrderState>(value),
    );
  }
}

String _$addTaskOrderNotifierHash() =>
    r'2b052eefc7825637367ba73fc3745a3ca1dac5d1';

abstract class _$AddTaskOrderNotifier extends $Notifier<AddTaskOrderState> {
  AddTaskOrderState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AddTaskOrderState, AddTaskOrderState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AddTaskOrderState, AddTaskOrderState>,
              AddTaskOrderState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(tasksList)
final tasksListProvider = TasksListProvider._();

final class TasksListProvider
    extends
        $FunctionalProvider<
          List<TaskEntity>,
          List<TaskEntity>,
          List<TaskEntity>
        >
    with $Provider<List<TaskEntity>> {
  TasksListProvider._()
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

String _$tasksListHash() => r'a3924df58aad55d9a7fd6e3e78fc6bbe5ad6a103';

@ProviderFor(isTasksLoading)
final isTasksLoadingProvider = IsTasksLoadingProvider._();

final class IsTasksLoadingProvider extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  IsTasksLoadingProvider._()
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

String _$isTasksLoadingHash() => r'042de74df968bf0cd94014bf47ffee7a27db2d31';

@ProviderFor(tasksErrorMessage)
final tasksErrorMessageProvider = TasksErrorMessageProvider._();

final class TasksErrorMessageProvider
    extends $FunctionalProvider<String?, String?, String?>
    with $Provider<String?> {
  TasksErrorMessageProvider._()
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

String _$tasksErrorMessageHash() => r'a05ffa3c2525f29450d960d8ee7956ec28c52852';

@ProviderFor(hasTasksError)
final hasTasksErrorProvider = HasTasksErrorProvider._();

final class HasTasksErrorProvider extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  HasTasksErrorProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'hasTasksErrorProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$hasTasksErrorHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return hasTasksError(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$hasTasksErrorHash() => r'e17e10c5fa0fc0d88ac6561301dc4cf7ac180192';

@ProviderFor(hasTasksData)
final hasTasksDataProvider = HasTasksDataProvider._();

final class HasTasksDataProvider extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  HasTasksDataProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'hasTasksDataProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$hasTasksDataHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return hasTasksData(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$hasTasksDataHash() => r'eeab0683bab39c78b36605999ad844daf361099c';

@ProviderFor(isTasksRefreshing)
final isTasksRefreshingProvider = IsTasksRefreshingProvider._();

final class IsTasksRefreshingProvider
    extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  IsTasksRefreshingProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'isTasksRefreshingProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$isTasksRefreshingHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return isTasksRefreshing(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$isTasksRefreshingHash() => r'8891d450066a7e4ca4dd01e0578b3d9c25a075c1';

@ProviderFor(isTaskOrdersLoading)
final isTaskOrdersLoadingProvider = IsTaskOrdersLoadingProvider._();

final class IsTaskOrdersLoadingProvider
    extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  IsTaskOrdersLoadingProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'isTaskOrdersLoadingProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$isTaskOrdersLoadingHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return isTaskOrdersLoading(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$isTaskOrdersLoadingHash() =>
    r'919db27433dcd675f4fcefbcf6fb3bcf0b529843';

@ProviderFor(taskOrdersErrorMessage)
final taskOrdersErrorMessageProvider = TaskOrdersErrorMessageProvider._();

final class TaskOrdersErrorMessageProvider
    extends $FunctionalProvider<String?, String?, String?>
    with $Provider<String?> {
  TaskOrdersErrorMessageProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'taskOrdersErrorMessageProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$taskOrdersErrorMessageHash();

  @$internal
  @override
  $ProviderElement<String?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String? create(Ref ref) {
    return taskOrdersErrorMessage(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }
}

String _$taskOrdersErrorMessageHash() =>
    r'e11cea9102d74409416fc7e021139c5475bb06ff';

@ProviderFor(taskOrdersData)
final taskOrdersDataProvider = TaskOrdersDataProvider._();

final class TaskOrdersDataProvider
    extends
        $FunctionalProvider<
          TasksOrdersEntity?,
          TasksOrdersEntity?,
          TasksOrdersEntity?
        >
    with $Provider<TasksOrdersEntity?> {
  TaskOrdersDataProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'taskOrdersDataProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$taskOrdersDataHash();

  @$internal
  @override
  $ProviderElement<TasksOrdersEntity?> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  TasksOrdersEntity? create(Ref ref) {
    return taskOrdersData(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TasksOrdersEntity? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TasksOrdersEntity?>(value),
    );
  }
}

String _$taskOrdersDataHash() => r'6cebca89ef6e77f50608cab96396af8d1e2a539f';

@ProviderFor(isReserveCommentLoading)
final isReserveCommentLoadingProvider = IsReserveCommentLoadingProvider._();

final class IsReserveCommentLoadingProvider
    extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  IsReserveCommentLoadingProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'isReserveCommentLoadingProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$isReserveCommentLoadingHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return isReserveCommentLoading(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$isReserveCommentLoadingHash() =>
    r'0be016ea553eb06ce0b0fd62a89dbe11542e5fa9';

@ProviderFor(reserveCommentErrorMessage)
final reserveCommentErrorMessageProvider =
    ReserveCommentErrorMessageProvider._();

final class ReserveCommentErrorMessageProvider
    extends $FunctionalProvider<String?, String?, String?>
    with $Provider<String?> {
  ReserveCommentErrorMessageProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'reserveCommentErrorMessageProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$reserveCommentErrorMessageHash();

  @$internal
  @override
  $ProviderElement<String?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String? create(Ref ref) {
    return reserveCommentErrorMessage(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }
}

String _$reserveCommentErrorMessageHash() =>
    r'f7134260f4049424eb0219d3296fad1cb22bbfe9';

@ProviderFor(reserveCommentResult)
final reserveCommentResultProvider = ReserveCommentResultProvider._();

final class ReserveCommentResultProvider
    extends
        $FunctionalProvider<
          ReserveCommentEntity?,
          ReserveCommentEntity?,
          ReserveCommentEntity?
        >
    with $Provider<ReserveCommentEntity?> {
  ReserveCommentResultProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'reserveCommentResultProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$reserveCommentResultHash();

  @$internal
  @override
  $ProviderElement<ReserveCommentEntity?> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ReserveCommentEntity? create(Ref ref) {
    return reserveCommentResult(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ReserveCommentEntity? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ReserveCommentEntity?>(value),
    );
  }
}

String _$reserveCommentResultHash() =>
    r'88f50b10249237df6cdfbc3d6494e2c80d8c34f4';

@ProviderFor(isAddTaskOrderLoading)
final isAddTaskOrderLoadingProvider = IsAddTaskOrderLoadingProvider._();

final class IsAddTaskOrderLoadingProvider
    extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  IsAddTaskOrderLoadingProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'isAddTaskOrderLoadingProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$isAddTaskOrderLoadingHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return isAddTaskOrderLoading(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$isAddTaskOrderLoadingHash() =>
    r'5b23cc5a0d82a9af39ad3e41475f8e8f0686c045';

@ProviderFor(addTaskOrderErrorMessage)
final addTaskOrderErrorMessageProvider = AddTaskOrderErrorMessageProvider._();

final class AddTaskOrderErrorMessageProvider
    extends $FunctionalProvider<String?, String?, String?>
    with $Provider<String?> {
  AddTaskOrderErrorMessageProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'addTaskOrderErrorMessageProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$addTaskOrderErrorMessageHash();

  @$internal
  @override
  $ProviderElement<String?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String? create(Ref ref) {
    return addTaskOrderErrorMessage(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }
}

String _$addTaskOrderErrorMessageHash() =>
    r'ebe5ce9be732005153f38c7b1083b82224911b50';

@ProviderFor(addTaskOrderSuccess)
final addTaskOrderSuccessProvider = AddTaskOrderSuccessProvider._();

final class AddTaskOrderSuccessProvider
    extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  AddTaskOrderSuccessProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'addTaskOrderSuccessProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$addTaskOrderSuccessHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return addTaskOrderSuccess(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$addTaskOrderSuccessHash() =>
    r'93145409c85d31b0483f7fccc42150a67d7b31b3';
