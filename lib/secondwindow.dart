import 'package:flutter/material.dart';

class SecondWN extends StatelessWidget {
  const SecondWN({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
     body: Column( 
      children: [
        
        Stack(
          children: [
          Image.asset("lib/picture/SecondWindow/two.png"),
          Image.asset("lib/picture/SecondWindow/Firs.png")
          ],
          alignment: Alignment.center,
        ),

        Container(
          child: Text("Peter Mach", style: TextStyle(fontSize: 8, color: Colors.black.withOpacity(0.5))),
          margin: const EdgeInsets.fromLTRB(0, 10, 290, 0),
          alignment: Alignment.center,
        ),

        Container(
          child: Text("Mind Deep Relax", style: TextStyle(fontSize: 25, color: Colors.black)),
          margin: const EdgeInsets.fromLTRB(0, 10, 150, 0),
          alignment: Alignment.center,
        ),

        Container(
          child: Text("Join the Community as we prepare over 33 days to relax and feel joy with the mind and happnies session across the World.", style: TextStyle(fontSize: 16, color: Colors.black)),
          margin: const EdgeInsets.fromLTRB(350, 10, 340, 0),
          alignment: Alignment.center,
        ),
        
        Container(
          margin: const EdgeInsets.fromLTRB(350, 12, 350, 0),
          child: ElevatedButton(
            onPressed: (){},
            style: ElevatedButton.styleFrom(shape: StadiumBorder(), minimumSize: Size(0, 50), primary: Color.fromRGBO(3, 158, 162, 1)),
            child: Row(
              children: [
                Image.asset("lib/picture/SecondWindow/three.png"),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Text("Continue with Email or Phone", style: TextStyle(fontSize: 13, color: Colors.black)),
                )
              ],
            ),
            
          ),
          alignment: Alignment.center,
        ),
        
        Container(
          margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                onPressed: (){},
                child: Image.asset("lib/picture/SecondWindow/three.png"),
                style: ElevatedButton.styleFrom(shape: StadiumBorder(), primary: Color.fromRGBO(47, 128, 237, 1),),
              ),
              SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Sweet Memories", style: TextStyle(fontSize: 20, color: Colors.black)),
                  Text("December 29 Pre-Launch", style: TextStyle(fontSize: 12, color: Colors.black.withOpacity(0.5))),
                ],
              ),
              SizedBox(width: 50),
              ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(primary: Colors.transparent, shadowColor: Colors.transparent),
                child: Image.asset("lib/picture/SecondWindow/Four.png"),
              )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                onPressed: (){},
                child: Image.asset("lib/picture/SecondWindow/three.png"),
                style: ElevatedButton.styleFrom(shape: StadiumBorder(), primary: Color.fromRGBO(3, 158, 162, 1),),
              ),
              SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("A Day Dream", style: TextStyle(fontSize: 20, color: Colors.black)),
                  Text("December 29 Pre-Launch", style: TextStyle(fontSize: 12, color: Colors.black.withOpacity(0.5))),
                ],
              ),
              SizedBox(width: 65),
              ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(shape: StadiumBorder(), primary: Colors.transparent, shadowColor: Colors.transparent),
                child: Image.asset("lib/picture/SecondWindow/Four.png"),
              )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                onPressed: (){},
                child: Image.asset("lib/picture/SecondWindow/three.png"),
                style: ElevatedButton.styleFrom(shape: StadiumBorder(), primary: Color.fromRGBO(240, 146, 53, 1),),
              ),
              SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Mind Explore", style: TextStyle(fontSize: 20, color: Colors.black)),
                  Text("December 29 Pre-Launch", style: TextStyle(fontSize: 12, color: Colors.black.withOpacity(0.5))),
                ],
              ),
              SizedBox(width: 65),
              ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(shape: StadiumBorder(), primary: Colors.transparent, shadowColor: Colors.transparent),
                child: Image.asset("lib/picture/SecondWindow/Four.png"),
              )
              ],
            ),
          ],
        )
        ),
      ],
     )
    );
  }
}