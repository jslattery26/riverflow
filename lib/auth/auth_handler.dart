import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverflow/providers.dart';

class AuthHandler extends HookConsumerWidget {
  final WidgetBuilder authed;
  final WidgetBuilder notAuthed;

  const AuthHandler({
    Key? key,
    required this.authed,
    required this.notAuthed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Consumer(
      builder: (context, ref, child) {
        final userChange = ref.watch(userChangesProvider);
        return userChange.when(
            error: (err, stack) => Center(child: Text(err.toString())),
            loading: () => const CircularProgressIndicator(),
            data: (user) {
              if (user != null) {
                return authed(context);
              }
              return notAuthed(context);
            });
      },
    );
  }
}
