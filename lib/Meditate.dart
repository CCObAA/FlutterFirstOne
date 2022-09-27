import 'package:flutter/material.dart';

class SecondWN extends StatelessWidget {
  const SecondWN({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
     body: Column( 
      children: [
        
        Stack(
          alignment: Alignment.center,
          children: [
          Image.asset("assets/picture/SecondWindow/two.png"),
          Image.asset("assets/picture/SecondWindow/Firs.png")
          ],
        ),

        Container(
          margin: const EdgeInsets.fromLTRB(0, 10, 290, 0),
          alignment: Alignment.center,
          child: Text("Peter Mach", style: TextStyle(fontSize: 8, color: Colors.black.withOpacity(0.5))),
        ),

        Container(
          margin: const EdgeInsets.fromLTRB(0, 10, 150, 0),
          alignment: Alignment.center,
          child: const Text("Mind Deep Relax", style: TextStyle(fontSize: 25, color: Colors.black)),
        ),

        Container(
          margin: const EdgeInsets.fromLTRB(350, 10, 340, 0),
          alignment: Alignment.center,
          child: const Text("Join the Community as we prepare over 33 days to relax and feel joy with the mind and happnies session across the World.", style: TextStyle(fontSize: 16, color: Colors.black)),
        ),
        
        Container(
          margin: const EdgeInsets.fromLTRB(350, 12, 350, 0),
          alignment: Alignment.center,
          child: ElevatedButton(
            onPressed: (){},
            style: ElevatedButton.styleFrom(shape: const StadiumBorder(), minimumSize: const Size(0, 50), primary: const Color.fromRGBO(3, 158, 162, 1)),
            child: Row(
              children: [
                Image.asset("assets/picture/SecondWindow/three.png"),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Text("Continue with Email or Phone", style: TextStyle(fontSize: 13, color: Colors.black)),
                )
              ],
            ),
            
          ),
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
                style: ElevatedButton.styleFrom(shape: const StadiumBorder(), primary: const Color.fromRGBO(47, 128, 237, 1),),
                child: Image.asset("assets/picture/SecondWindow/three.png"),
              ),
              const SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text("Sweet Memories", style: TextStyle(fontSize: 20, color: Colors.black)),
                  Text("December 29 Pre-Launch", style: TextStyle(fontSize: 12, color: Colors.black.withOpacity(0.5))),
                ],
              ),
              const SizedBox(width: 50),
              ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(primary: Colors.transparent, shadowColor: Colors.transparent),
                child: Image.asset("assets/picture/SecondWindow/Four.png"),
              )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(shape: const StadiumBorder(), primary: const Color.fromRGBO(3, 158, 162, 1),),
                child: Image.asset("assets/picture/SecondWindow/three.png"),
              ),
              const SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text("A Day Dream", style: TextStyle(fontSize: 20, color: Colors.black)),
                  Text("December 29 Pre-Launch", style: TextStyle(fontSize: 12, color: Colors.black.withOpacity(0.5))),
                ],
              ),
              const SizedBox(width: 65),
              ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(shape: const StadiumBorder(), primary: Colors.transparent, shadowColor: Colors.transparent),
                child: Image.asset("assets/picture/SecondWindow/Four.png"),
              )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(shape: const StadiumBorder(), primary: const Color.fromRGBO(240, 146, 53, 1),),
                child: Image.asset("assets/picture/SecondWindow/three.png"),
              ),
              const SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text("Mind Explore", style: TextStyle(fontSize: 20, color: Colors.black)),
                  Text("December 29 Pre-Launch", style: TextStyle(fontSize: 12, color: Colors.black.withOpacity(0.5))),
                ],
              ),
              const SizedBox(width: 65),
              ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(shape: const StadiumBorder(), primary: Colors.transparent, shadowColor: Colors.transparent),
                child: Image.asset("assets/picture/SecondWindow/Four.png"),
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