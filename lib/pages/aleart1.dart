import 'package:flutter/material.dart';

class AleartOne extends StatefulWidget {
  const AleartOne({super.key});

  @override
  State<AleartOne> createState() => _AleartOneState();
}

Mysnackbar(massage,context){
  return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(massage)));
}

Aleart(context){
  return showDialog(context: context,
      builder: (BuildContext context){
       return Expanded(child: AlertDialog(
         title: Text("do you delete this?"),
         content: Text("please delete this"),
         actions: [TextButton(onPressed: (){
           Mysnackbar("Thank You", context);
           Navigator.of(context).pop();}, child: Text("yes")),
                   TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("no")),],
       ));
      });
}

class _AleartOneState extends State<AleartOne> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        Text("Masuk"),
        backgroundColor: Colors.green,
      ),

      body:
      Center(
        child: ElevatedButton(onPressed: (){Aleart(context);}, child: Text("clik me")),

      )
      ,
    );
  }
}
