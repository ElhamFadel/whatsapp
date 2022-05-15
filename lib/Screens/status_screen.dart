import 'package:challenge/screens/story_viwe.dart';
import 'package:flutter/material.dart';


class StatusScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            child: ListTile(
              leading:Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration:   BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const CircleAvatar(
                       backgroundImage: NetworkImage("https://s3.amazonaws.com/wll-community-production/images/no-avatar.png"),
                     ),
                  ),
                   Positioned(
                     bottom: 0,
                     right: 0,
                     child: Container(
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(50),
                         color: Colors.green
                       ),
                       child: const Icon(Icons.add,color: Colors.white,size: 18,),
                     ),
                   )
                ],
              ) ,
               title: const Text(
                 'My Status',
                 style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                 ),
               ),
               subtitle: const Text('Tap to add status update',
               style: TextStyle(
                 fontSize:15.0
               ),
               ),
            ),
          ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Viewed updates',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Color.fromARGB(255, 129, 129, 129)
          ),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.white,
            child: ListTile(
              leading: const CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage("https://s3.amazonaws.com/wll-community-production/images/no-avatar.png"),
              ),
              title: const Text("Elham Elshami",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              ),
              subtitle: const Text("Today,20:16 PM"),
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => StoryViwe(),)),
            )
          ),
        )
        ],
      ),
    );
  }
}