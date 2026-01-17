import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hamrah_food_app/core/widgets/buttons/custom_elevated_button.dart';

class SignUpButton extends ConsumerWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final AsyncValue<bool?> signInWithEmailAsync = ref.watch(
    //   signInWithEmailProvider,
    // );
    // final SignInWithEmailProvider signInWithEmailNotifier = ref.read(
    //   signInWithEmailProvider.notifier,
    // );

    // ref.listen<AsyncValue<bool?>>(signInWithEmailProvider, (
    //   AsyncValue<bool?>? previous,
    //   AsyncValue<bool?> next,
    // ) {
    //   next.whenOrNull(
    //     data: (bool? success) {
    //       if (success == true) {
    //         context.goNamed(RouteNames.instance.home);
    //       }
    //     },
    //     error: (Object error, StackTrace stackTrace) {
    //       CustomSnackbar(
    //         title: 'Sign In', // Tr
    //         message: next.error.toString(),
    //         type: SnackbarType.ERROR,
    //       ).show(context);
    //     },
    //   );
    // });

    return CustomElevatedButton(
      // onPressed: () => signInWithEmailNotifier.signInWithEmail(),
      onPressed: () {},
      label: 'Sign Up', // Tr
      // isLoading: signInWithEmailAsync.isLoading,
    );
  }
}
