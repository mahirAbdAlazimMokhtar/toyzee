import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class SlideImageshow extends StatelessWidget {
  const SlideImageshow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: ImageSlideshow(
        width: MediaQuery.of(context).size.width* 0.9,
        height: MediaQuery.of(context).size.height* 0.2,
        initialPage: 0,
        indicatorColor: Colors.blue,
        indicatorBackgroundColor: Colors.grey,
        children: [
          Image.network(
            'https://images.unsplash.com/photo-1500995617113-cf789362a3e1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80',
            width: 300,
            height: 100,
            fit: BoxFit.cover,
          ),
          Image.network(
            'https://images.unsplash.com/photo-1515488042361-ee00e0ddd4e4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=754&q=80',
            fit: BoxFit.cover,
          ),
          Image.network(
            'https://images.unsplash.com/photo-1535572290543-960a8046f5af?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',
            fit: BoxFit.cover,
          ),
        ],
        autoPlayInterval: 3000,
      ),
    );
  }
}
