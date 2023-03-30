import 'package:flutter/material.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

import 'profile.dart';


class MyApp extends StatelessWidget {
  /// To initialize this example, an instance of [client] and [channel] is required.
  const MyApp({
    Key? key,
    required this.client,
    required this.channel,
  }) : super(key: key);

  /// Instance of [StreamChatClient] we created earlier. This contains information about
  /// our application and connection state.
  final StreamChatClient client;

  /// The channel we'd like to observe and participate.
  final Channel channel;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, widget) {
        return StreamChat(
          client: client,
          child: widget,
        );
      },
      home: StreamChannel(
        channel: channel,
        child: const ChannelPage(),
      ),
    );
  }
}

/// Displays the list of messages inside the channel
class ChannelPage extends StatelessWidget {
  const ChannelPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  StreamChannelHeader(backgroundColor: Colors.green,title:Text('Welcome'),
 actions: [
          IconButton(
            icon: Icon(Icons.person,size: 35,),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
              );
            },
          ),
        ],
          ),
      body: Column(
        
        children: const <Widget>[
          
          Expanded(
            child: StreamMessageListView(
              
            ),
            
          ),
          StreamMessageInput(),
        ],
      ),
    );
  }
}
