import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
void _showDialog(){
  showDialog(
    context: context, 
    builder: (context){
      return AlertDialog(
        backgroundColor: Colors.grey,
        title: Text("Show Dialog"),
        content: Text("This is an Alert Dialog description"),
        actions: [
          MaterialButton(
            color: Colors.white,
            onPressed: (){
             Navigator.of(context).pop();
            }, 
            child: Text("OK",style: TextStyle(
              color: Colors.amber
            ),),

            ), 
             MaterialButton(
            onPressed: (){
            Navigator.of(context).pop();
            }, 
            child: Text("Cancel"),

            )
        ],
      );
    }
    );
}

void _showDialogThree(){
  showDialog(
    context: context, 
    builder: (context){
      return CupertinoAlertDialog(
        
        title: Text("Show Dialog"),
        content: Text("This is an Alert Dialog description"),
        actions: [
          MaterialButton(
            onPressed: (){
             Navigator.of(context).pop();
            }, 
            child: Text("OK"),

            ), 
             MaterialButton(
            onPressed: (){
            Navigator.of(context).pop();
            }, 
            child: Text("Cancel"),

            )
        ],
      );
    }
    );
}

void _showAlertFour(){
  QuickAlert.show(
  context: context, 
  type: QuickAlertType.success, 
  );

}

void _showAlertFive(){
  QuickAlert.show(
  context: context, 
  type: QuickAlertType.error, 
  );

}
void _showAlertSix(){
  QuickAlert.show(
  context: context, 
  type: QuickAlertType.loading, 
  );

}

void _showAlertSeven(){
  QuickAlert.show(
  context: context, 
  type: QuickAlertType.info, 
  );

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: Text("Map"),
      ),
      body: Column(
        
        children: [
          Center(
            child: ElevatedButton(
              child: const Text("Elevated Button"),
              onPressed: (){
                showDialog(
                  context: context, 
                builder: ((context) => AlertDialog(
                  actions: [
                    TextButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                      },
                      child: const Text("OK")
                      ),
                      TextButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                      },
                      child: const Text("Cancel")
                      ),
                  ],
                  title: const Text("Flutter Map"),
                  contentPadding: const EdgeInsets.all(20),
                  content: const Text("This is alert Dillog"),
                )
                )
                );
              },
            ),
            
          ), 
          MaterialButton(
            color: Colors.amberAccent,
            onPressed: _showDialog,
            child: Icon(Icons.car_crash), 
          ), 
          MaterialButton(
            onPressed: _showDialogThree,
            // child:Text("Cupertino Alert Dialog"),
            child: Icon(Icons.abc),
          ), 
          ElevatedButton(
            onPressed: _showAlertFour,
            child: Text("Success")),
            ElevatedButton(
            onPressed:_showAlertFive, 
            child: Text("Failure")),
            ElevatedButton(
            onPressed: _showAlertSix,
            child: Text("Loading")),
            ElevatedButton(
            onPressed:_showAlertSeven, 
            child: Text("Info")),
 ],
      )
      
    );
  }
}