import 'package:flutter/material.dart';
import 'package:todo_flutter/Data/Category.dart';
import 'package:todo_flutter/Widget/Category.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Container(
          child: Text('ToDo', style: TextStyle(color: Colors.purple.shade900, fontWeight: FontWeight.w800, fontSize: 25),),
        ),
        actions: [
          Container(
            padding: EdgeInsets.all(20),
            child: Icon(Icons.more_vert, color: Colors.purple.shade900,),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 120,
                padding: EdgeInsets.only( left: 15, right: 15, bottom: 10),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey[50],
                        ),
                        child: Center(
                          child: TextField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.search, color: Colors.grey[700],),
                              hintText: 'Search',
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: ListView.builder(
                  itemCount: category.length,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index){
                    return Container(
                      padding: EdgeInsets.all(10),
                      child: CategoryWidget(cat: category[index],),
                    );
                  },
                ),
              ),
              Container(
                height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0XFFf6f5fa),
                  ),
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color(0XFFe7e5f3)
                            ),
                            child: Icon(Icons.add, size: 35,),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text('Add New Task',style: TextStyle(color: Colors.deepPurple.shade300),),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
