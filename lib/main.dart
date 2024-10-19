import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

String misal = "Ahmad Fatih";
List bulan = ['januari', 12, 'Candra'];

class Hewan {
  String nama;

  Hewan(this.nama);

  void bersuara() {
    print('$nama bersuara...');
  }
}

Future getDataFromServer(int delay) async {
  print("get");
  await Future.delayed(Duration(seconds: delay));
  return "Data dari server";
}

int hitung(int a, int b) {
  return a + b;
}

void panggil() {
  print("ini panggil");
  print("ini panggil");
  print("ini panggil");
  print("ini panggil");
  print("ini panggil");
}

void main() {
  getDataFromServer(6).then((value) => print(value));
  // print(bulan[1]);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        /*asdadad
        asdasdasd
        asdasd
        asdasdasd
        */
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});
 

  @override
  Widget build(BuildContext context) {
    String nama;
    return Material(
      child: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.14,
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    margin: EdgeInsets.only(left: 20),
                    child: Icon(Icons.arrow_back)),
                Text(
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade500,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    margin: EdgeInsets.only(right: 20),
                    child: Icon(Icons.more_vert)),
              ],
            ),
          ),
          CircleAvatar(
            radius: 60, // Size of the avatar
            backgroundColor: Colors.blue, // Background color of the circle
            child: Icon(
              Icons.person, // Icon inside the circle
              size: 80, // Size of the icon
              color: Colors.white, // Color of the icon
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(40),
            height: 200,
            decoration: BoxDecoration(
              color: Colors.blue.shade400,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Text(
                      "Nama",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Ahmad Fatih Fadhlillah",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "TTL",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      width: 23,
                    ),
                    Text(
                      "Dili, 28 Februari 1996",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.facebook, size: 50, color: Colors.red),
                    Icon(FontAwesomeIcons.whatsapp,
                        size: 50, color: Colors.green),
                    Icon(FontAwesomeIcons.instagram,
                        size: 50, color: Colors.blue),
                    Icon(FontAwesomeIcons.twitter,
                        size: 50, color: Colors.purple),
                  ],
                )
              ],
            ),
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              // Background widget
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.1,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
              ),
              // Positioned widget
              Positioned(
                top: 15,
                left: MediaQuery.of(context).size.width * 0.15,
                child: Column(
                  children: [
                    Icon(
                      Icons.home,
                      size: 40,
                      color: Colors.white,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                top: -40,
                left: MediaQuery.of(context).size.width * 0.40,
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(
                    Icons.camera,
                    size: 70,
                    color: Colors.lightBlue,
                  ),
                ),
              ),
              Positioned(
                top: 15,
                left: MediaQuery.of(context).size.width * 0.70,
                child: Column(
                  children: [
                    Icon(
                      Icons.person,
                      size: 40,
                      color: Colors.white,
                    ),
                    Text(
                      "Profil",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}

class Tugas1 extends StatelessWidget {
  const Tugas1({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.14,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade500,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Icon(
                      Icons.arrow_back,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    "PROFIL",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 20),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade500,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Icon(
                      Icons.more_vert,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            //foto profil
            CircleAvatar(
              radius: 60, // Size of the avatar
              backgroundColor: Colors.blue, // Background color of the circle
              child: Icon(
                Icons.person, // Icon inside the circle
                size: 80, // Size of the icon
                color: Colors.white, // Color of the icon
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(40),
              height: 200,
              decoration: BoxDecoration(
                color: Colors.blue.shade400,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Text(
                        "Nama",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Ahmad Fatih Fadhlillah",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "TTL",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        width: 36,
                      ),
                      Text(
                        "Dili, 28 Februari 1996",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.facebook, size: 50, color: Colors.red),
                      Icon(FontAwesomeIcons.whatsapp,
                          size: 50, color: Colors.green),
                      Icon(FontAwesomeIcons.instagram,
                          size: 50, color: Colors.blue),
                      Icon(FontAwesomeIcons.twitter,
                          size: 50, color: Colors.purple),
                    ],
                  )
                ],
              ),
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                // Background widget
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.14,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                // Positioned widget
                Positioned(
                  top: 15,
                  left: MediaQuery.of(context).size.width * 0.15,
                  child: Column(
                    children: [
                      Icon(
                        Icons.home,
                        size: 40,
                        color: Colors.white,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: -20,
                  left: MediaQuery.of(context).size.width * 0.40,
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(
                      Icons.camera,
                      size: 70,
                      color: Colors.lightBlue,
                    ),
                  ),
                ),
                Positioned(
                  top: 15,
                  left: MediaQuery.of(context).size.width * 0.70,
                  child: Column(
                    children: [
                      Icon(
                        Icons.person,
                        size: 40,
                        color: Colors.white,
                      ),
                      Text(
                        "Profil",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _counter2 = 10;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
      _counter2--;
    });
  }

  void _incrementCounte2() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter2++;
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
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Colors.amber,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Material(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Center(
          child: Column(
            // Column is also a layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).
            //
            // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
            // action in the IDE, or press "p" in the console), to see the
            // wireframe for each widget.
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              InkWell(
                onTap: _incrementCounter,
                child: Text(
                  '$_counter & $_counter2',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              IconButton(
                onPressed: _incrementCounter,
                icon: Icon(Icons.add),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounte2,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
