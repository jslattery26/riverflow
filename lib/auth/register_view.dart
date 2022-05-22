import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverflow/extensions/context_extensions.dart';
import 'package:riverflow/providers.dart';

class RegisterView extends ConsumerWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final email = useTextEditingController();
    final password = useTextEditingController();
    final obscureText = useState(true);
    final authService = ref.watch(authServiceProvider);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(36),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Register',
              style: context.textTheme.headlineLarge,
            ),
            TextField(
              controller: email,
              decoration: const InputDecoration(
                hintText: 'email',
              ),
            ),
            TextField(
              controller: password,
              decoration: InputDecoration(
                hintText: 'password',
                suffixIcon: Icon(obscureText.value
                    ? Icons.visibility
                    : Icons.visibility_off),
              ),
              obscureText: obscureText.value,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    authService.isLoading
                        ? null
                        : authService.register(email.text, password.text);
                  },
                  child: const Text('Register'),
                ),
                const SizedBox(
                  width: 8,
                ),
                ElevatedButton(
                  onPressed: () {
                    authService.isLoading
                        ? null
                        : authService.register(email.text, password.text);
                  },
                  child: const Text('Already a user? Log in..'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
