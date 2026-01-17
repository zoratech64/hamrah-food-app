import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hamrah_food_app/core/assets/assets.gen.dart';
import 'package:hamrah_food_app/core/constants/size_constants.dart';
import 'package:hamrah_food_app/core/widgets/icons/custom_svg_icon.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    required this.controller,
    super.key,
    this.hintText,
    this.labelText,
    this.emptyValidatorText,
    this.helperText,
    this.errorText,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    this.textStyle,
    this.hintStyle,
    this.labelStyle,
    this.prefixIconPath,
    this.onPrefixIconPressed,
    this.prefixIconConstraints,
    this.isLoadingSuffix,
    this.suffixIconPath,
    this.onSuffixIconPressed,
    this.suffixIconConstraints,
    this.enabled = true,
    this.readOnly = false,
    this.focusNode,
    this.autofocus = false,
    this.obscureText = false,
    this.maxLines = 1,
    this.minLines,
    this.maxLength = 64,
    this.height,
    this.contentPadding,
    this.borderRadius = 8.0,
    this.fillColor,
    this.borderColor,
    this.focusedBorderColor,
    this.errorBorderColor,
    this.disabledBorderColor,
    this.cursorColor,
    this.onChanged,
    this.onSubmitted,
    this.onTap,
    this.onTapOutside,
    this.validator,
    this.enableSuggestions = true,
    this.autocorrect = true,
    this.optional = false,
  });

  final TextEditingController controller;
  final String? hintText;
  final String? labelText;
  final String? emptyValidatorText;
  final String? helperText;
  final String? errorText;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final TextStyle? labelStyle;
  final String? prefixIconPath;
  final VoidCallback? onPrefixIconPressed;
  final BoxConstraints? prefixIconConstraints;
  final bool? isLoadingSuffix;
  final String? suffixIconPath;
  final VoidCallback? onSuffixIconPressed;
  final BoxConstraints? suffixIconConstraints;
  final bool enabled;
  final bool readOnly;
  final FocusNode? focusNode;
  final bool autofocus;
  final bool obscureText;
  final int maxLines;
  final int? minLines;
  final int? maxLength;
  final double? height;
  final EdgeInsetsGeometry? contentPadding;
  final double borderRadius;
  final Color? fillColor;
  final Color? borderColor;
  final Color? focusedBorderColor;
  final Color? errorBorderColor;
  final Color? disabledBorderColor;
  final Color? cursorColor;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final VoidCallback? onTap;
  final Function(PointerUpEvent)? onTapOutside;
  final String? Function(String)? validator;
  final bool enableSuggestions;
  final bool autocorrect;
  final bool optional;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final FocusNode _internalFocusNode = FocusNode();
  FocusNode get _focusNode => widget.focusNode ?? _internalFocusNode;

  bool obscureText = false;

  @override
  void initState() {
    super.initState();

    obscureText = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        if (widget.labelText != null) ...<Widget>[
          RichText(
            text: TextSpan(
              children: <InlineSpan>[
                TextSpan(
                  text: widget.labelText!,
                  style:
                      widget.labelStyle ??
                      Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                if (widget.optional) ...<InlineSpan>[
                  WidgetSpan(
                    child:
                        SizeConstants.instance.spacingXXSmall.horizontalSpace,
                  ),
                  TextSpan(
                    text: '(optional)',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: Theme.of(context).hintColor,
                    ),
                  ),
                ],
              ],
            ),
          ),
          SizeConstants.instance.spacingXSmall.verticalSpace,
        ],
        TextFormField(
          controller: widget.controller,
          enabled: widget.enabled,
          readOnly: widget.readOnly,
          focusNode: _focusNode,
          autofocus: widget.autofocus,
          obscureText: obscureText,
          keyboardType: widget.keyboardType,
          textInputAction: widget.textInputAction,
          cursorErrorColor: Theme.of(context).colorScheme.error,
          style: widget.textStyle ?? Theme.of(context).textTheme.titleMedium,
          maxLines: widget.maxLines,
          minLines: widget.minLines,
          maxLength: widget.maxLength,
          onChanged: widget.onChanged,
          onFieldSubmitted: (String value) {
            widget.onSubmitted?.call(value);
            _focusNode.unfocus();
          },
          onTap: widget.onTap,
          onTapUpOutside: widget.onTapOutside,
          validator: widget.labelText == null
              ? null
              : (String? value) => validate(value),
          onTapOutside: (PointerDownEvent event) => _focusNode.unfocus(),
          enableSuggestions: widget.enableSuggestions,
          autocorrect: widget.autocorrect,
          cursorColor:
              widget.cursorColor ?? Theme.of(context).colorScheme.primary,
          decoration: InputDecoration(
            hintText:
                widget.hintText ?? (widget.obscureText ? '••••••••' : null),
            helperText: widget.helperText,
            errorText: widget.errorText,
            hintStyle:
                widget.hintStyle ??
                Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Theme.of(context).hintColor,
                ),
            fillColor: widget.fillColor,
            contentPadding: widget.contentPadding,
            prefixIcon: widget.prefixIconPath != null
                ? Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      IconButton(
                        onPressed: widget.prefixIconPath != null
                            ? widget.onPrefixIconPressed
                            : null,
                        icon: Padding(
                          padding: EdgeInsetsDirectional.all(
                            SizeConstants.instance.spacingSmall,
                          ),
                          child: CustomSvgIcon(
                            widget.prefixIconPath!,
                            size: SizeConstants.instance.iconMedium,
                          ),
                        ),
                      ),
                    ],
                  )
                : null,
            prefixIconConstraints: widget.prefixIconConstraints,
            suffixIcon: widget.suffixIconPath != null
                ? Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      InkWell(
                        onTap: widget.suffixIconPath != null
                            ? widget.onSuffixIconPressed
                            : null,
                        borderRadius: BorderRadius.circular(
                          SizeConstants.instance.radiusMax,
                        ),
                        child: CustomSvgIcon(
                          widget.suffixIconPath!,
                          size: SizeConstants.instance.iconMedium,
                        ),
                      ),
                    ],
                  )
                : widget.obscureText
                ? Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      InkWell(
                        onTap: () => setState(() => obscureText = !obscureText),
                        borderRadius: BorderRadius.circular(
                          SizeConstants.instance.radiusMax,
                        ),
                        child: CustomSvgIcon(
                          Assets.icons.view.path,
                          size: SizeConstants.instance.iconMedium,
                        ),
                      ),
                    ],
                  )
                : null,
            suffixIconConstraints: widget.suffixIconConstraints,
          ),
        ),
      ],
    );
  }

  String? validate(String? value) {
    if (widget.optional) {
      return null;
    }

    if (value == null) {
      return value;
    }

    if (value.isEmpty) {
      return 'Please enter your ${widget.emptyValidatorText?.toLowerCase() ?? widget.labelText?.toLowerCase()}!'; // Tr
    }

    return widget.validator?.call(value.trim());
  }

  @override
  void dispose() {
    _internalFocusNode.dispose();

    super.dispose();
  }
}
