import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'hiragana.dart';
import 'mapping_page.dart';
import 'writing_page.dart';
import 'journal_page.dart';


class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage>{
  int _selectedIndex = 0;

  static List<Widget> pages = <Widget>[
    const MappingPage(),
    const WritingPage(),
    const JournalPage(),
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('さあ　はじめましょう',
          style: Theme.of(context).textTheme.headline6),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.network(
                    'https://scontent-nrt1-1.xx.fbcdn.net/v/t1.18169-9/17522554_1096553430451122_1075037664490641253_n.jpg?_nc_cat=106&ccb=1-3&_nc_sid=730e14&_nc_ohc=K5TLhKJCQnsAX8PclqL&_nc_ht=scontent-nrt1-1.xx&oh=6c41f92f69514869b5958c7a2e8682d4&oe=60FA94C8',
                    width: 250,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Text(
                  'わたしたちの町',
                  style: Theme.of(context).textTheme.headline1),
                ),

              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Text(
                  'ふらったー小学校',
                    style: Theme.of(context).textTheme.headline2),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(500, 10, 500, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: Alignment(0, 0),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'ねん',
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'くみ',
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: 'ばん',
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber,
                  ),
                  child: Text('なまえをかきましょう',
                      style: Theme.of(context).textTheme.headline3),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Hiragana('なまえをかきましょう')
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),

        bottomNavigationBar: BottomNavigationBar(
          // 5
            selectedItemColor:
            Theme.of(context).textSelectionTheme.selectionColor,
            // 10
            currentIndex: _selectedIndex,
            // 11
            onTap: _onItemTapped,
            // 6
            items: <BottomNavigationBarItem>[
              const BottomNavigationBarItem(
                  icon: Icon(Icons.map), label: 'ちず'),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.border_color), label: 'かく'),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.auto_awesome_mosaic_sharp), label: 'みる'),
            ]));

  }
}