import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverflow/auth/auth_service.dart';
import 'package:riverflow/providers.dart';

final registerViewModelProvider =
    StateNotifierProvider.autoDispose<RegisterViewModel, AsyncValue<void>>(
        (ref) {
  return RegisterViewModel(
    authService: ref.watch(authServiceProvider),
  );
});

class RegisterViewModel extends StateNotifier<AsyncValue<void>> {
  RegisterViewModel({required this.authService})
      : super(const AsyncData<void>(null));

  final AuthService authService;

  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
    state = const AsyncLoading<void>();

    state = await AsyncValue.guard<void>(
      () => authService.signInWithEmailAndPassword(email, password),
    );
  }
}
