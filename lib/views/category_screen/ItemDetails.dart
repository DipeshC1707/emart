// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:e_mart/consts/consts.dart';
import 'package:flutter/material.dart';

import 'package:e_mart/consts/colors.dart';
import 'package:velocity_x/velocity_x.dart';

class ItemDetails extends StatelessWidget {
  final String ? title;
  const ItemDetails({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        title: title!.text.color(darkFontGrey).fontFamily(bold).make(),
        actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_outline)),
      ]),
    );
  }
}
