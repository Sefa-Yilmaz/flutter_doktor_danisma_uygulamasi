// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_doktor_danisma_uygulamasi/constant.dart';

class CategoriCard extends StatelessWidget {
  var _title;
  var _imgUrl;
  var _bgColor;

  CategoriCard(Key? key, this._title, this._imgUrl, this._bgColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 160,
      child: Stack(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              width: 110,
              height: 137,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  _title,
                  style: TextStyle(
                    color: kTitleTextColor,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: 0,
            child: Container(
              width: 84,
              height: 84,
              decoration: BoxDecoration(
                color: _bgColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset(_imgUrl),
            ),
          )
        ],
      ),
    );
  }
}
