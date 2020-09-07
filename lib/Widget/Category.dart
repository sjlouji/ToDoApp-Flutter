import 'package:flutter/material.dart';
import 'package:todo_flutter/Model/Category.dart';
import 'package:todo_flutter/Screen/Home.dart';
import 'package:todo_flutter/Widget/Avatar.dart';

void main() {
  runApp(CategoryWidget());
}

class CategoryWidget extends StatelessWidget {
  // This widget is the root of your application.
  CategoryWidget({Key key, this.cat}) : super(key: key);

  Category cat;
  @override
  Widget build(BuildContext context) {
    return CategoryWidgetHome(cat: cat,);
  }
}

class CategoryWidgetHome extends StatefulWidget {
  CategoryWidgetHome({Key key, this.title, this.cat}) : super(key: key);
  final String title;
  Category cat;

  @override
  _CategoryWidgetHome createState() => _CategoryWidgetHome();
}

class _CategoryWidgetHome extends State<CategoryWidgetHome> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: getColor(widget.cat.color),
          borderRadius: BorderRadius.circular(15)
      ),
      child: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(widget.cat.cat_name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: getIconColor(widget.cat.color)),),
                    Text(widget.cat.date, style: TextStyle(fontSize: 13,color: getIconColor(widget.cat.color) ),),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(widget.cat.time, style: TextStyle(color: getIconColor(widget.cat.color)),),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      child: AvatarWidget(),
                    ),
                    Container(
                      child: AvatarWidget(),
                    ),
                    Container(
                      child: AvatarWidget(),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    color: getDarkColor(widget.cat.color),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Icon(Icons.call, color: getIconColor(widget.cat.color),),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        child: Icon(Icons.video_call, color: getIconColor(widget.cat.color)),
                      ),
                      Container(
                        height: 40,
                        width: 40,

                        child: Icon(Icons.comment_sharp, color: getIconColor(widget.cat.color)),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

getIconColor(color){
  if(color == 'blue'){
    return Colors.blue;
  }else if(color == 'red'){
    return Colors.red;
  }else if(color == 'green'){
    return Colors.green;
  }else {
    return Colors.blue;
  }
}

getDarkColor(color){
  if(color == 'blue'){
    return Colors.blue.shade100;
  }else if(color == 'red'){
    return Colors.red.shade100;
  }else if(color == 'green'){
    return Colors.green.shade100;
  }else {
    return Colors.blue.shade100;
  }
}


getColor(String color){
  if(color == 'blue'){
    return Color(0XFFe7f0fe);
  }else if(color == 'red'){
    return Color(0XFFfee7e7);
  }else if(color == 'green'){
    return Color(0XFFecfee7);
  }else {
    return Color(0XFFe7fefc);
  }
}
