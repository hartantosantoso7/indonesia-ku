import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            // 1
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 2
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Dirgahayu Republik Indonesia ke-74',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                     ),
                  ),
                ),
                Text(
                  'Indonesia, Jakarta',
                  style: TextStyle(
                    color: Colors.grey[400],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Text('74',)
        ],
      ),
    );
    
    Column _buildButtonColum(Color color, IconData icon, String label) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color:color),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Color color = Theme.of(context).primaryColorDark;
   
   Widget buttonSection = Container(
     child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       children: [
         _buildButtonColum(color, Icons.call, 'Call'),
         _buildButtonColum(color, Icons.near_me, 'Route'),
         _buildButtonColum(color, Icons.share, 'Share'),
       ],
     ),
   );

   Widget textSection = Container(
     padding: const EdgeInsets.all(32),
     child: Text(
       'Di dalam proses terciptanya kemerdekaan Indonesia, terdapat sejarah ' 
       'panjang yang penuh dengan perjuangan tanpa henti dan semangat ' 
       'pantang menyerah dari para pahlawan kita. Makna yang bisa kita petik ' 
       'adalah bahwa sebuah perjuangan yang dilakukan dengan sungguh-'
       'sungguh pasti akan mendapatkan hasil yang kita harapkan.', softWrap: true, textAlign: TextAlign.justify,
     ),
   );

    return MaterialApp(
      
      title: 'Indonesia-Ku',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Indonesia-Ku'),
        ),
        
      body: SingleChildScrollView(
        child: Column (
        children: [
          Image.asset(
            'images/indonesia.jpg',
            width: 600,
            height: 300,
            fit: BoxFit.cover,
          ),
          titleSection,
          buttonSection,
          textSection,
         
          ],
         ),
        ),
       ),
      );
    }
  }


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
