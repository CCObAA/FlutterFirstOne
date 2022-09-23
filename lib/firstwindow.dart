import 'package:flutter/material.dart';

class FirstWN extends StatelessWidget {
  const FirstWN ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(3, 158, 162, 1),
     body: Column( 
      
      children: [

        Container(
          margin: const EdgeInsets.fromLTRB(0, 80, 0, 0),
          alignment: Alignment.center,
          child: const Text("medinow", style: TextStyle(fontSize: 30, color: Colors.white)),
        ),

        Container(
          margin: const EdgeInsets.fromLTRB(0, 4, 0, 0),
          alignment: Alignment.center,
          child: const Text("Meditate With Us!", style: TextStyle(fontSize: 14, color: Colors.white)),
        ),

        Container(
          margin: const EdgeInsets.fromLTRB(0, 45, 0, 0),
          alignment: Alignment.center,
          child: ElevatedButton(
            onPressed: (){},
            style: ElevatedButton.styleFrom(shape: const StadiumBorder(), minimumSize: const Size(269, 50), primary: Colors.white),
            child: const Text("Sign in with Apple", style: TextStyle(fontSize: 13, color: Colors.black)),
          ),
        ),

        Container(
          margin: const EdgeInsets.fromLTRB(0, 12, 0, 0),
          alignment: Alignment.center,
          child: ElevatedButton(
            onPressed: (){},
            style: ElevatedButton.styleFrom(shape: const StadiumBorder(), minimumSize: const Size(269, 50), primary: Colors.white),
            child: const Text("Continue with Email or Phone", style: TextStyle(fontSize: 13, color: Colors.black)),
          ),
        ),

        Container(
          margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          alignment: Alignment.center,
          child: const Text("Continue With Google", style: TextStyle(fontSize: 10, color: Colors.white)),
        ),

        Container(

          alignment: Alignment.center,

          child: Image.asset("lib/picture/FirstWindow/firstwindow(1).png", width: 350, height: 250,),
        ),
      ],

      ),
      
     );
    
  }
}