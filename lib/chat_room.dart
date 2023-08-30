class ChatRoom {

  final String? imageUrl;
  final String roomName;
  final String lastChat;
  final String lastChatAt;

  ChatRoom({
    this.imageUrl,
    required this.roomName,
    required this.lastChat,
    required this.lastChatAt,
  });

  String get initialName {
    final splitName = roomName.split(' ').map((e) => e[0]).toList();
    return splitName.join();
  }

}