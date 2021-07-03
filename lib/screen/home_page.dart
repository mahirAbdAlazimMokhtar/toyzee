import 'package:flutter/material.dart';
import 'package:toyzee/widget/all_categories.dart';
import 'package:toyzee/widget/row_categories.dart';
import 'package:toyzee/widget/slide_show.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(
                  left: 12,
                  right: 12,
                  top: 72,
                ),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    )),
                height: MediaQuery.of(context).size.height * 0.2,
                child:const TextField(
                  decoration: InputDecoration(
                    hintText: 'Search for a product',
                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              const SlideImageshow(),
              SizedBox(height: MediaQuery.of(context).size.height* 0.02),
              RowCategories(),
              SizedBox(height: 20,),
              RowCategories(),
              SizedBox(height: 20,),
              Row(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Latest Product',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
                SizedBox(width: 40,),
                Text('Sea All')
              ],),
              SizedBox(height: 200,),
              Row(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Our Blog Posts',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
                SizedBox(width: 40,),
                Text('Sea All')
              ],),
              Card(
                child: Container(
                  height: 200,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey
                  ),
                ),
              )
    ]),
        );
  }
}


