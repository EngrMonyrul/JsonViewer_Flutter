import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key, this.title, this.actionWidgets, required this.useLeading, this.leadingIcon, this.leadingOnPressed, required this.appbarSize, this.bottomItems});
  final Widget? title;
  final List<Widget>? actionWidgets;
  final bool useLeading;
  final IconData? leadingIcon;
  final VoidCallback? leadingOnPressed;
  final double appbarSize;
  final Column? bottomItems;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          automaticallyImplyLeading: false,
          title: title,
          actions: actionWidgets,
          leading: useLeading ? IconButton(
              onPressed: (){},
              icon: const Icon(Icons.arrow_back_ios_new)) :
          leadingIcon != null? IconButton(
              onPressed: (){},
              icon: Icon(leadingIcon)):
          null,
        ),
        bottomItems ?? const SizedBox(),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight + appbarSize);
}
