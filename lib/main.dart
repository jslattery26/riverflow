import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverflow/auth/auth_handler.dart';
import 'package:riverflow/auth/register_view.dart';
import 'package:riverflow/firebase_options.dart';
import 'package:riverflow/home/home_view.dart';
import 'package:riverflow/providers.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
    return Consumer(
      builder: (context, ref, _) => MaterialApp(
        theme: ref.watch(themeProvider),
        darkTheme: ref.watch(darkThemeProvider),
        home: AuthHandler(
          authed: (context) => const HomeView(),
          notAuthed: (context) => const RegisterView(),
        ),
      ),
    );
  }
}
