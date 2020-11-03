import "package:Chats/models/userModel.dart";

class Message {
  final User sender;
  final String time; //Would be generally DateTime or Firebase TimeStamp
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.isLiked,
    this.unread,
  });
}

// Users
//User details--YOU!
final User currentUser = User(id: 0, name: 'one', imageUrl: "asset/images/one.jpg");

//User details -- Other Users
final User two = User(id: 1, name: 'Two', imageUrl: "asset/images/two.jpg");
final User three =
    User(id: 2, name: 'Three', imageUrl: "asset/images/three.jpg");
final User four = User(id: 3, name: 'Four', imageUrl: "asset/images/four.jpg");
final User five = User(id: 4, name: 'Five', imageUrl: "asset/images/five.jpg");
final User six = User(id: 5, name: 'Six', imageUrl: "asset/images/six.jpg");
final User seven =
    User(id: 6, name: 'Seven', imageUrl: "asset/images/seven.jpg");
final User eight =
    User(id: 7, name: 'Eight', imageUrl: "asset/images/eight.jpg");

// Favourite Contacts
List<User> favourite = [four, five, six, seven, eight];

List<Message> chats = [
  Message(
    sender: two,
    time: '5:30 PM',
    isLiked: false,
    unread: true,
    text: 'Hey, how are you? lroem ipsum sui at late yui sonk',
  ),
  Message(
    sender: three,
    time: '6:00 PM',
    isLiked: false,
    unread: false,
    text: 'Hey, how are you?',
  ),
  Message(
    sender: four,
    time: '5:30 PM',
    isLiked: false,
    unread: true,
    text: 'Hey, how are you?',
  ),
  Message(
    sender: five,
    time: '5:30 PM',
    isLiked: false,
    unread: true,
    text: 'Hey, how are you?',
  ),
  Message(
    sender: six,
    time: '5:30 PM',
    isLiked: false,
    unread: false,
    text: 'Hey, how are you?',
  ),
  Message(
    sender: seven,
    time: '5:30 PM',
    isLiked: false,
    unread: false,
    text: 'Hey, how are you?',
  ),
];

// Example message in Chat Screen
List<Message> message = [
  Message(
    sender: seven,
    time: '5:30 PM',
    isLiked: true,
    unread: false,
    text: 'Hey',
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    isLiked: true,
    unread: false,
    text: 'Hey you?',
  ),
  Message(
    sender: seven,
    time: '3:30 PM',
    isLiked: false,
    unread: false,
    text: ' how are you?',
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    isLiked: false,
    unread: false,
    text: 'Fine',
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    isLiked: true,
    unread: false,
    text: 'Hey, how are you?',
  ),
  Message(
    sender: seven,
    time: '1:30 PM',
    isLiked: true,
    unread: false,
    text: 'Hey, how are you?',
  ),
  Message(
    sender: currentUser,
    time: '12:30 PM',
    isLiked: false,
    unread: false,
    text: 'Hey, how are you?',
  ),
];
