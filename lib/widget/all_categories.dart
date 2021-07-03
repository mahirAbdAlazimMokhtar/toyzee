import 'package:flutter/material.dart';
class AllCategories extends StatelessWidget {
  final String textDescription;
  final String imageURl;
  const AllCategories({Key? key, required this.textDescription, required this.imageURl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
             height: MediaQuery.of(context).size.height*0.1,
            width: MediaQuery.of(context).size.width*0.2,
            child: Stack(alignment: AlignmentDirectional.bottomStart,
              children: [
                Image.network(imageURl,
                  fit: BoxFit.cover,
                ),
                Text(textDescription,
                style: TextStyle(
                  color: Colors.red,
                  backgroundColor: Colors.white,
                  fontSize: 15
                ),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
