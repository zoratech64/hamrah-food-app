import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hamrah_food_app/config/router/route_names.dart';
import 'package:hamrah_food_app/core/constants/size_constants.dart';
import 'package:hamrah_food_app/core/widgets/app_bar/custom_app_bar.dart';
import 'package:hamrah_food_app/features/sign_up/presentation/widgets/sign_up_button.dart';
import 'package:hamrah_food_app/features/sign_up/presentation/widgets/sign_up_form.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Sign Up', // Tr
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
                    'Create Account', // Tr
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizeConstants.instance.spacingXSmall.verticalSpace,
                  Text(
                    'Sign up to get started with our app.', // Tr
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
            sliver: SliverToBoxAdapter(child: SignUpForm()),
          ),
          SliverToBoxAdapter(
            child: SizeConstants.instance.spacingXXLarge.verticalSpace,
          ),
          SliverPadding(
            padding: EdgeInsetsDirectional.symmetric(
              horizontal: SizeConstants.instance.spacingLarge,
            ),
            sliver: SliverToBoxAdapter(child: SignUpButton()),
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
                    'Already have an account?', // Tr
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
                        'Sign In', // Tr
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
