import 'package:client_app/common/AppColor.dart';
import 'package:client_app/common/AppTextStyle.dart';
import 'package:client_app/models/param/NavigatorHome.dart';
import 'package:flutter/material.dart';

class ButtonCustom extends StatefulWidget {
  final String? title;
  final VoidCallback? onTap;
  final bool? onFocus;
  final Color? background;
  final int? id;
  const ButtonCustom(
      {this.id,
      this.title,
      this.onTap,
      this.onFocus = false,
      this.background,
      super.key});

  @override
  // ignore: no_logic_in_create_state
  State<ButtonCustom> createState() => _ButtonCustomState(id: this.id);
}

class _ButtonCustomState extends State<ButtonCustom> {
  bool onFocus = false;
  int? id;
  _ButtonCustomState({this.id});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onTap?.call();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            color: NavigatorHome.select == id ? AppColor.blackColors : null),
        child: Text(
          widget.title!,
          style: NavigatorHome.select == id
              ? AppConfigStyle.textWhite14
              : AppConfigStyle.textBlack14,
        ),
      ),
    );
  }
}
