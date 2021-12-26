import 'package:flutter/material.dart';
import 'package:todo_app/utilities/utilities.dart';

class AppScaffold extends StatelessWidget {
  @Deprecated("Switch to scaffold messenger")
  final GlobalKey<ScaffoldState>? scaffoldKey;

  /// Title of the page. e.g Withdrawal...
  final Widget? widgetBesidePageTitle;
  final Widget? child;

  final String? title;

  /// Signifies if the entire widget should use [bodyPadding].
  /// Set to false if only the header should be padded
  final bool? hasWholePadding;

  final Widget? floatingActionButton;

  final Color? backgroundColor;

  AppScaffold(
      {@required this.child,
      @required this.title,
      this.hasWholePadding = true,
      this.widgetBesidePageTitle,
      this.scaffoldKey,
      this.floatingActionButton,
      this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.navyBlue,
        title: Text(
          title!,
          style: AppTextStyles.headline6(context)!
              .copyWith(color: AppColors.shadowColor, fontSize: 16),
        ),
      ),
      backgroundColor: backgroundColor ?? Colors.white,
      key: scaffoldKey,
      floatingActionButton: floatingActionButton,
      body: SafeArea(
        child: Padding(
          padding: hasWholePadding! ? bodyPaddingNoBottom! : EdgeInsets.zero,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: hasWholePadding! ? EdgeInsets.zero : bodyPadding,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [widgetBesidePageTitle ?? SizedBox()],
                    ),
                    SizedBox(
                      height: 6,
                    )
                  ],
                ),
              ),
              Expanded(
                child: child!,
              )
            ],
          ),
        ),
      ),
    );
  }
}
