import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hamrah_food_app/config/router/route_names.dart';
import 'package:hamrah_food_app/core/constants/size_constants.dart';
import 'package:hamrah_food_app/core/widgets/app_bar/custom_app_bar.dart';
import 'package:hamrah_food_app/features/sign_in/presentation/widgets/sign_in_button.dart';
import 'package:hamrah_food_app/features/sign_in/presentation/widgets/sign_in_form.dart';
import 'package:hamrah_food_app/features/sign_in/presentation/widgets/sign_in_with_google_button.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Sign In', // Tr
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: SizeConstants.instance.spacingLarge.verticalSpace,
          ),
          SliverPadding(
            padding: EdgeInsetsDirectional.symmetric(
              horizontal: SizeConstants.instance.spacingLarge,
            ),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Welcome Back!', // Tr
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizeConstants.instance.spacingXSmall.verticalSpace,
                  Text(
                    'Sign in to continue to your account.', // Tr
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Theme.of(context).hintColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizeConstants.instance.spacingXXLarge.verticalSpace,
          ),
          SliverPadding(
            padding: EdgeInsetsDirectional.symmetric(
              horizontal: SizeConstants.instance.spacingLarge,
            ),
            sliver: SliverToBoxAdapter(child: SignInForm()),
          ),
          SliverToBoxAdapter(
            child: SizeConstants.instance.spacingSmall.verticalSpace,
          ),
          SliverPadding(
            padding: EdgeInsetsDirectional.symmetric(
              horizontal: SizeConstants.instance.spacingLarge,
            ),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  InkWell(
                    onTap: () =>
                        context.pushNamed(RouteNames.instance.forgotPassword),
                    borderRadius: BorderRadius.circular(
                      SizeConstants.instance.radiusSmall,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.symmetric(
                        horizontal: SizeConstants.instance.spacingXSmall,
                        vertical: SizeConstants.instance.spacingXXSmall,
                      ),
                      child: Text(
                        'Forgot Password?', // Tr
                        style: Theme.of(context).textTheme.titleMedium!
                            .copyWith(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizeConstants.instance.spacingXXLarge.verticalSpace,
          ),
          SliverPadding(
            padding: EdgeInsetsDirectional.symmetric(
              horizontal: SizeConstants.instance.spacingLarge,
            ),
            sliver: SliverToBoxAdapter(child: SignInButton()),
          ),
          SliverToBoxAdapter(
            child: SizeConstants.instance.spacingSmall.verticalSpace,
          ),
          SliverPadding(
            padding: EdgeInsetsDirectional.symmetric(
              horizontal: SizeConstants.instance.spacingLarge,
            ),
            sliver: SliverToBoxAdapter(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Divider(
                      height: 1,
                      thickness: 0.1,
                      radius: BorderRadius.circular(
                        SizeConstants.instance.radiusSmall,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.symmetric(
                      horizontal: SizeConstants.instance.spacingMedium,
                    ),
                    child: Text(
                      'Or', // Tr
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Theme.of(context).hintColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      height: 1,
                      thickness: 0.1,
                      radius: BorderRadius.circular(
                        SizeConstants.instance.radiusSmall,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizeConstants.instance.spacingSmall.verticalSpace,
          ),
          SliverPadding(
            padding: EdgeInsetsDirectional.symmetric(
              horizontal: SizeConstants.instance.spacingLarge,
            ),
            sliver: SliverToBoxAdapter(child: SignInWithGoogleButton()),
          ),
          SliverToBoxAdapter(
            child: SizeConstants.instance.spacingSmall.verticalSpace,
          ),
          SliverPadding(
            padding: EdgeInsetsDirectional.symmetric(
              horizontal: SizeConstants.instance.spacingLarge,
            ),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Don\'t have an account?', // Tr
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Theme.of(context).hintColor,
                    ),
                  ),
                  SizeConstants.instance.spacingXXSmall.horizontalSpace,
                  InkWell(
                    onTap: () => context.pushNamed(RouteNames.instance.signUp),
                    borderRadius: BorderRadius.circular(
                      SizeConstants.instance.radiusSmall,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.symmetric(
                        horizontal: SizeConstants.instance.spacingXSmall,
                        vertical: SizeConstants.instance.spacingXXSmall,
                      ),
                      child: Text(
                        'Sign Up', // Tr
                        style: Theme.of(context).textTheme.titleMedium!
                            .copyWith(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizeConstants.instance.spacingLarge.verticalSpace,
          ),
        ],
      ),
    );
  }
}
