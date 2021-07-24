import 'package:flutter/material.dart';
import 'package:our_home_town/model/hiragana_model.dart';
import 'package:provider/provider.dart';

class Hiragana extends StatelessWidget {
  Hiragana(this.message);
  String message;

  final items = [
    'よ',
    'や',
    'ら',
    'ま',
    'ば',
    'ぱ',
    'は',
    'な',
    'だ',
    'た',
    'ざ',
    'さ',
    'が',
    'か',
    'あ',
    'ょ',
    'ゃ',
    'り',
    'み',
    'び',
    'ぴ',
    'ひ',
    'に',
    'ぢ',
    'ち',
    'じ',
    'し',
    'ぎ',
    'き',
    'い',
    'わ',
    'ゆ',
    'る',
    'む',
    'ぶ',
    'ぷ',
    'ふ',
    'ぬ',
    'づ',
    'つ',
    'ず',
    'す',
    'ぐ',
    'く',
    'う',
    'を',
    'ゅ',
    'れ',
    'め',
    'べ',
    'ぺ',
    'へ',
    'ね',
    'で',
    'て',
    'ぜ',
    'せ',
    'げ',
    'け',
    'え',
    'ん',
    'っ',
    'ろ',
    'も',
    'ぼ',
    'ぽ',
    'ほ',
    'の',
    'ど',
    'と',
    'ぞ',
    'そ',
    'ご',
    'こ',
    'お'
  ];
  @override
  Widget build(BuildContext context) {
    final title = 'ひらがな';
    String inputText = '';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(message),
        ),
        body: ChangeNotifierProvider<HiraganaModel>(
          create: (_) => HiraganaModel(),
          child: Consumer<HiraganaModel>(builder: (_, model, __) {
            return Column(
              children: [
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 15,
                    children: List.generate(75, (index) {
                      return Center(
                        child: TextButton(
                          onPressed: () {
                            model.appendText('${items[index]}');
                          },
                          child: Text('${items[index]}'),
                        ),
                      );
                    }),
                  ),
                ),
                Container(
                  width: 250,
                  height: 35,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.red),
                  ),
                  child: Text(
                    model.getText(),
                    style: TextStyle(fontSize: 24, color: Colors.indigo),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(50),
                  child: TextButton(
                      onPressed: () {
                        model.resetText();
                      },
                      child: Icon(Icons.highlight_remove)),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
