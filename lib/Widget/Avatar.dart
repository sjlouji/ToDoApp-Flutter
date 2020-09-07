import 'package:flutter/material.dart';
import 'package:todo_flutter/Screen/Home.dart';

void main() {
  runApp(AvatarWidget());
}

class AvatarWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AvatarWidgetHome();
  }
}

class AvatarWidgetHome extends StatefulWidget {
  AvatarWidgetHome({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _AvatarWidgetHomeState createState() => _AvatarWidgetHomeState();
}

class _AvatarWidgetHomeState extends State<AvatarWidgetHome> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CircleAvatar(
        radius: 20,
        backgroundColor: Colors.white,
        backgroundImage: NetworkImage('https://hips.hearstapps.com/digitalspyuk.cdnds.net/18/44/1540913834-sigourneyweaveravatar.jpg?resize=480:*'),
      ),
    );
  }
}
