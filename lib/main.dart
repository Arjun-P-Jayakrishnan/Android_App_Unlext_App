// import 'package:flutter/material.dart';
//
// void main()=>runApp(App_code());
//
// class App_code extends StatelessWidget{
//
//   @override
//   Widget build(BuildContext context){
//
//     return MaterialApp(
//       title:'Unlext App',
//       theme:ThemeData(primarySwatch:Colors.blue),
//       home:LoginPage(),
//     );
//
//   }
//
// }
//
// class LoginPage extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar:AppBar(
//         title:Text("Unlext App"),
//       ),
//       body:Column(
//         children:[
//           TaskDoneBar(),
//           TaskLists(),
//           MentorPage(),
//         ],
//       ),
//     );
//   }
// }
//
// class TaskDoneBar extends StatelessWidget{
//
//   @override
//   Widget build(BuildContext context){
//     return Column(
//       children:[
//       Text("Tasks Done"),
//       LinearProgressIndicator(value:0.0),
//       ],
//     );
//   }
//
// }
//
// class TaskLists extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//
//     return Column(
//       children:[
//         TaskItem(label:"Task 1"),
//         TaskItem(label:"Task 2"),
//         TaskItem(label:"Task 3"),
//         TaskItem(label:"Task 4"),
//       ],
//     );
//
//   }
// }
//
// class TaskItem extends StatefulWidget {
//   final String label;
//   TaskItem({Key? key,required this.label}) : super(key: key);
//
//   @override
//   _TaskItemState createState() => _TaskItemState();
// }
//
// class _TaskItemState extends State<TaskItem> {
//   bool? _value=false;
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children:[
//         Checkbox(
//             onChanged:(newValue)=>setState(()=>_value=newValue),
//             value:_value),
//         Text(widget.label),
//       ],
//     );
//   }
// }
//
// class MentorPage extends StatefulWidget {
//   const MentorPage({Key? key}) : super(key: key);
//
//   @override
//   _MentorPageState createState() => _MentorPageState();
// }
//
// class _MentorPageState extends State<MentorPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child:Text('Hi'),
//       color:Colors.blue,
//       padding:EdgeInsets.all(20.0),
//       alignment:Alignment.center,
//     );
//   }
// }



import "package:flutter/material.dart";
import "login_page.dart";
import "subject_select.dart";
import "add_file.dart";

void main()=>runApp(Select_App());

class Select_App extends StatelessWidget{

  @override
  Widget build(BuildContext){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:Login_Page.id,
      routes:{
        Login_Page.id:(context)=>Login_Page(),
        Subject_Select.id:(context)=>Subject_Select(),
        Add_File.id:(context)=>Add_File(),
      },
      title:"Unlext App",
      theme:ThemeData(
        primarySwatch:Colors.blue,
      ),
      home:Selection_area(),
    );
  }

}

class Selection_area extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:Text("Something"),
        backgroundColor: Colors.indigoAccent,
      ),
        body:Column(
          children:[
          TextButton(
            style:ButtonStyle(
              foregroundColor:MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed:(){},
            child:Text('Text Button'),
          ),
          ],
    ),
    );

  }

}
