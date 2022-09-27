import 'package:flutter/material.dart';

class ThirdWN extends StatelessWidget {
  const ThirdWN({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 200,
            child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset("assets/picture/ThirdWindow/one.png"),
              Image.asset("assets/picture/ThirdWindow/two.png", width: 235,),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(shape: const CircleBorder(), minimumSize: const Size(80, 80), primary: const Color.fromRGBO(254, 122, 21, 1), side: const BorderSide(width: 10.0, color: Color.fromRGBO(250, 246, 245, 1)), shadowColor: Colors.transparent),
                 child: Image.asset("assets/picture/ThirdWindow/third.png", width: 10, height: 10)),
              ),  
            ],
          ),
          ),

          const Text("Secrets of Atlantis", style: TextStyle(fontSize: 24, color: Colors.black)),

          Container(
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(primary: Colors.transparent, side: const BorderSide(width: 1.0, color: Color.fromRGBO(254, 122, 21, 1)), shadowColor: Colors.transparent),
              child: const Text("Follow", style: TextStyle(color: Color.fromRGBO(254, 122, 21, 1))),
            ),
          ),

          Container(
            alignment: Alignment.center,
             width: 300,
             margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.asset("assets/picture/ThirdWindow/Rectangle1.png", alignment: Alignment.topCenter, width: 220),
                Image.asset("assets/picture/ThirdWindow/Rectangle2.png", alignment: Alignment.topCenter, width: 220),
              Container(
                margin: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                child: Column(
                children: [
                Row(
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    child: Image.asset("assets/picture/ThirdWindow/FirstRow.png", width: 60),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: const Text("The Secrets of Atlantis podcast is\n designed for all fantasy\n enthusiasts, everything from\n debunking underwat", style: TextStyle(fontSize: 9, color: Colors.white),),
                  )

                ],
                ),
                
                Row(
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    child: Image.asset("assets/picture/ThirdWindow/TwoRow.png", width: 100),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(65, 0, 0, 0),
                    child: ElevatedButton(
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(primary: Colors.transparent, side: const BorderSide(width: 1.0, color: Colors.transparent), shadowColor: Colors.transparent),
                      child: Image.asset("assets/picture/ThirdWindow/TwoRow(2).png", width: 15),
                    ),
                  )
                ],
                ),
                
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Row(
                  children: [
                    Container(
                      alignment: Alignment.topCenter,
                      child: Image.asset("assets/picture/ThirdWindow/ThirdRow.png", width: 100),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                      child: ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(primary: Colors.transparent, side: const BorderSide(width: 1.0, color: Colors.transparent), shadowColor: Colors.transparent),
                        child: Image.asset("assets/picture/ThirdWindow/ThirdRow(2).png", width: 40),
                      ),
                    )
                  ],
                ),
                ),
                
              ],
            ),
              ),
              
              ],
            )

          ),

          Container(
            alignment: Alignment.center,
             width: 300,
             margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Stack(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Image.asset("assets/picture/ThirdWindow/Four(1).png", width: 200,),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.fromLTRB(45, 25, 0, 10),
                        child: const Text("Invite your\n friends to join", style: TextStyle(fontSize: 12, color: Colors.black)),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(200, 25, 0, 10),
                      child: ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(primary: Colors.transparent, side: const BorderSide(width: 1.0, color: Colors.transparent), shadowColor: Colors.transparent),
                        child: Image.asset("assets/picture/ThirdWindow/Four(2).png", width: 30),
                      ),),
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}