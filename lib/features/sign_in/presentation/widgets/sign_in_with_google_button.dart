import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hamrah_food_app/core/assets/assets.gen.dart';
import 'package:hamrah_food_app/core/constants/size_constants.dart';
import 'package:hamrah_food_app/core/widgets/buttons/custom_text_button.dart';

class SignInWithGoogleButton extends ConsumerWidget {
  const SignInWithGoogleButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final AsyncValue<bool?> signInWithGoogleAsync = ref.watch(
    //   signInWithGoogleProvider,
    // );
    // final SignInWithGoogleAccountProvider signInWithGoogleNotifier = ref.read(
    //   signInWithGoogleProvider.notifier,
    // );

    // ref.listen<AsyncValue<bool?>>(signInWithGoogleProvider, (
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
    //         title: 'Sign In With Google', // Tr
    //         message: next.error.toString(),
    //         type: SnackbarType.ERROR,
    //       ).show(context);
    //     },
    //   );
    // });

    return CustomTextButton(
      // onPressed: () => signInWithGoogleNotifier.signInWithGoogle(),
      onPressed: () {},
      backgroundColor: Theme.of(context).colorScheme.surface,
      iconPath: Assets.icons.google.path,
      colorfulIcon: true,
      height: SizeConstants.instance.buttonHeightMedium,
      label: 'Sign In with Google', // Tr
      // isLoading: signInWithGoogleAsync.isLoading,
    );
  }
}
