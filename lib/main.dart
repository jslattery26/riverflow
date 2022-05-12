import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverflow/auth/auth_handler.dart';
import 'package:riverflow/auth/register_screen.dart';

final helloWorldProvider = Provider((_) => 'Hello world');

final userProvider = Provider<FirebaseAuth>((ref) => FirebaseAuth.instance);

final userChangesProvider = StreamProvider.autoDispose<User?>(
    (ref) => ref.watch(userProvider).authStateChanges());

// final databaseProvider = Provider.autoDispose<FirebaseFirestore?>((ref) {
//   final auth = ref.watch(authStateChangesProvider);

//   if (auth.asData?.value?.uid != null) {
//     return FirestoreDatabase(uid: auth.asData!.value!.uid);
//   }
//   return null;
// });

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

// Note: MyApp is a HookConsumerWidget, from hooks_riverpod.
class MyApp extends HookConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      home: AuthHandler(
        authed: (context) => Container(),
        notAuthed: (context) => const RegisterScreen(),
      ),
    );
  }
}
