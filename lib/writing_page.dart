import 'package:flutter/material.dart';
import 'package:our_home_town/painter.dart';
import 'hometown_theme.dart';


class WritingPage extends StatefulWidget {

  @override
  _WritingPageState createState() => _WritingPageState();
}


class _WritingPageState extends State<WritingPage> {

  // コントローラ
  PaintController _controller = PaintController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text('ペイント'),
        centerTitle: true,
      ),

      body: Container(
        child: Painter(
          paintController: _controller,
        ),
      ),

      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[

          // undoボタン
          FloatingActionButton(
            heroTag: "undo",
            onPressed: () {
              if (_controller.canUndo) _controller.undo();
            },
            child: Text("undo"),
          ),

          SizedBox(
            height: 20.0,
          ),

          // redoボタン
          FloatingActionButton(
            heroTag: "redo",
            onPressed: () {
              if (_controller.canRedo) _controller.redo();
            },
            child: Text("redo"),
          ),

          SizedBox(
            height: 20.0,
          ),

          // クリアボタン
          FloatingActionButton(
            heroTag: "clear",
            onPressed: () => _controller.clear(),
            child: Text("clear"),
          ),
        ],
      ),
    );
  }
}