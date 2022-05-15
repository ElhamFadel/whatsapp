import 'dart:async';

import 'package:flutter/material.dart';

class StoryViwe extends StatefulWidget {
  @override
  State<StoryViwe> createState() => _StoryViweState();
}

class _StoryViweState extends State<StoryViwe> {
   double _percentage = 0.0;

    late Timer _timer;
   void startTimer() {
     const oneSec = Duration(seconds: 1);
     _timer = Timer.periodic(
       oneSec,
       ( _timer) => setState(
         () {
           if (_percentage < 1.0) {
             _percentage += 0.1;
           } else {
             _timer.cancel();
             Navigator.pop(context);
           }
         },
       ),
     );
   }
   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }
   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(image: NetworkImage('https://www.diocesecpa.org/blog/wp-content/uploads/2019/07/Focus.jpg'), fit:BoxFit.cover)
          ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 36.0),
            child: Column(
              children: [
                LinearProgressIndicator(
                  value: _percentage,
                  backgroundColor: Colors.grey[200],
                  valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
                ),
                const SizedBox(height: 8.0,),
                Row(
                  children: const [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage('https://www.diocesecpa.org/blog/wp-content/uploads/2019/07/Focus.jpg'),
                    ),
                    SizedBox(width: 8.0,),
                    Text("Elham Fadel",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white
                    ),),
                  
                   
                  ],
                )
              ],
            ),
          )
        ],
      ),
      
    );  
      
    
  }
}