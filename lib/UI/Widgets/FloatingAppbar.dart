import 'package:flutter/material.dart';
import 'package:instaknown/UI/Resources/Constants.dart' as R;

class FloatingAppbar extends StatelessWidget {
  FloatingAppbar({
    this.title,
    this.fontSize = 16,
  });

  final String title;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 5,
      right: 5,
      child: SafeArea(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Card(
                child: Container(
                  height: 50,
                  child: Center(
                    child: Hero(
                      tag: 'appName',
                      child: Text(title,
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                          style: TextStyle(
                            fontFamily: R.amaranthFontFamily,
                            fontWeight: FontWeight.w600,
                            fontSize: fontSize,
                          )),
                    ),
                  ),
                ),
              ),
            ),
            Card(
              child: Container(
                height: 50,
                width: 50,
                child: RawMaterialButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.info,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
