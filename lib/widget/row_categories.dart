import 'package:flutter/material.dart';

import 'all_categories.dart';

class RowCategories extends StatelessWidget {
  const RowCategories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AllCategories(textDescription: 'Toys',imageURl: 'https://images.unsplash.com/photo-1505692069463-edfaea445fcd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80',),
        AllCategories(textDescription: 'Hat',imageURl: 'https://images.unsplash.com/photo-1528066588405-9e20509b9e34?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80',),
        AllCategories(textDescription: 'API',imageURl: 'https://images.unsplash.com/photo-1455884981818-54cb785db6fc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=690&q=80',),
        AllCategories(textDescription: 'test',imageURl: 'https://images.unsplash.com/photo-1545558014-8692077e9b5c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80',),
      ],);
  }
}