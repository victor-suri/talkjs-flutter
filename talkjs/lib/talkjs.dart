library talkjs;

import 'dart:convert' show json, utf8;
import 'package:crypto/crypto.dart' show sha1;

export 'src/chatoptions.dart';
export 'src/conversation.dart';
export 'src/session.dart';
export 'src/ui.dart';
export 'src/user.dart';
export 'src/webview.dart';

class Talk {
  static String oneOnOneId(String me, String other) {
    List ids = [me, other];
    ids.sort();

    final encoded = json.encode(ids);
    final digest =  sha1.convert(utf8.encode(encoded));

    final hash = digest.toString().toLowerCase();
    return hash.substring(0, 20);
  }
}
