import 'package:flutter/material.dart';
import 'package:hamrah_food_app/core/constants/size_constants.dart';

class UpdateAppDialog<T> extends StatelessWidget {
  const UpdateAppDialog({super.key});

  Future<T?> show(BuildContext context) async {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) => BackButtonListener(
        onBackButtonPressed: () => Future<bool>.value(false),
        child: this,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(
            SizeConstants.instance.radiusLarge,
          ),
        ),
        margin: EdgeInsetsDirectional.all(SizeConstants.instance.spacingLarge),
        padding: EdgeInsetsDirectional.all(SizeConstants.instance.spacingLarge),
        child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            
          ],
        ),
      ),
    );
  }
}
