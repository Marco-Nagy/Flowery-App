import 'package:flutter/material.dart';

class VisibilityIcon extends StatefulWidget {
   VisibilityIcon({super.key, required this.isVisible });

late final bool isVisible ;

  @override
  _VisibilityIconState createState() => _VisibilityIconState();
}

class _VisibilityIconState extends State<VisibilityIcon> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          setState(() {
           widget.isVisible = !widget.isVisible;
          });
        },
        child: Icon(widget.isVisible
            ? Icons.visibility_off_rounded
            : Icons.visibility_rounded));
  }
}
