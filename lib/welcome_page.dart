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
                body: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.lightGreen[200],
                          ),),
                          Expanded(
                            flex: 2,
                            child: Container(
                              color: Colors.yellow[100],
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.network(
                                        'https://scontent-nrt1-1.xx.fbcdn.net/v/t1.18169-9/17760229_1103611766411955_1234258523540735361_n.jpg?_nc_cat=106&ccb=1-3&_nc_sid=8bfeb9&_nc_ohc=sTxD19-trcQAX_Djfxm&tn=nw2CDFpCnAx5XB9B&_nc_ht=scontent-nrt1-1.xx&oh=c210abc6d537dbb3da108fd1e24ae0b1&oe=61221ABA',
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
                                    padding: EdgeInsets.fromLTRB(150, 10, 150, 0),
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
                          ),
                          Expanded(
                             flex: 1,
                              child: Container(
                                color: Colors.lightGreen[200],
                              ),
                      ),], ),
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