import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  final child;

  const AuthScreenAppBar({
    super.key,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: Colors.transparent,
      leadingWidth: 75.w,
      leading: IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      actions: [
        child,
        SizedBox(
          width: 30.w,
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
