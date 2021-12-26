import 'package:flutter/material.dart';
import 'package:todo_app/utilities/utilities.dart';

class AppMaterial extends StatelessWidget {
  final Widget? child;
  final EdgeInsets? padding;

  const AppMaterial({@required this.child, this.padding});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      shadowColor: AppColors.shadowColor.withOpacity(0.3),
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
      child:
          Padding(padding: padding ?? const EdgeInsets.all(12), child: child),
    );
  }
}
