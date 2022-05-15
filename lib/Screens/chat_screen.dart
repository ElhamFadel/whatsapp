import 'package:challenge/data/dummy-data.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount:DummyData.fakeData.getData().length,
      itemBuilder: (context, index) {
      return ListTile(
        leading: CircleAvatar(
          radius: 25,
          backgroundImage: NetworkImage(DummyData.fakeData.getData()[index].avaterUrl),
        ),
        title: Text(DummyData.fakeData.getData()[index].name,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18
        ),),
        subtitle: Text(DummyData.fakeData.getData()[index].message),
        trailing: Text(
          DummyData.fakeData.getData()[index].time,
          style:const TextStyle(
            fontSize: 13.0,
            color: Colors.grey,
          ),
        ),
      );
    }, separatorBuilder: (BuildContext context, int index) {
      return const Divider();
      },);
  }
}