import 'package:flutter/material.dart';

class BackMenuXD extends StatelessWidget {

  final Color _color = Colors.grey[700];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatar(
                radius: 2.4,
                backgroundColor: _color
              ),
              SizedBox(width: 14,),
              CircleAvatar(
                radius: 2.4,
                backgroundColor: _color,
              )
            ],
          ),
          SizedBox(height: 14,),
          Row(
            children: <Widget>[
              CircleAvatar(
                radius: 2.4,
                backgroundColor: _color,
              ),
              SizedBox(width: 14,),
              CircleAvatar(
                radius: 2.4,
                backgroundColor: _color,
              )
            ],
          ),
        ],
      ),
    );
  }
}