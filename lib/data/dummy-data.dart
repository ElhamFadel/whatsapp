import 'package:challenge/Models/ChatModel.dart';

class DummyData {
  DummyData._();
  static DummyData fakeData = DummyData._();
  List<ChatModel> getData(){
    return [
    ChatModel(
      name: "Saurabh",
      time: "12:30",
      avaterUrl: "https://randomuser.me/api/portraits/med/men/94.jpg",
      message: "hello Elham!!",
    ),
    ChatModel(
        name: "Stanley Way",
        time: "1:00",
        avaterUrl: "https://randomuser.me/api/portraits/med/men/94.jpg",
        message: "who's going that!!"),
        ChatModel(
        name: "Stanley",
        time: "3:00",
        avaterUrl: "https://randomuser.me/api/portraits/med/men/94.jpg",
        message: " going that!!"),
        ChatModel(
        name: "Elham Fadel",
        time: "1:00",
        avaterUrl: "https://randomuser.me/api/portraits/med/men/94.jpg",
        message: "who's going that!!"),
        ChatModel(
        name: "Saleem Elshami",
        time: "1:00",
        avaterUrl: "https://randomuser.me/api/portraits/med/men/94.jpg",
        message: "who's going that!!"),
  ];
  }
}
