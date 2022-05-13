import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverflow/auth/auth_service.dart';
import 'package:riverflow/theme/app_theme.dart';

final authServiceProvider = ChangeNotifierProvider<AuthService>(
  (ref) => AuthService(auth: ref.watch(userProvider)),
);
//Firebase Auth
final userProvider = Provider<FirebaseAuth>((ref) => FirebaseAuth.instance);

final userChangesProvider = StreamProvider.autoDispose<User?>(
    (ref) => ref.watch(userProvider).authStateChanges());

//Theme
final themeProvider = Provider((ref) => lightTheme);
final darkThemeProvider = Provider((ref) => darkTheme);
