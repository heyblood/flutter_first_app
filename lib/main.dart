import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

Widget _colorBox({required Color color}) {
  return Container(
    width: 50,
    height: 50,
    decoration: BoxDecoration(color: color),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            // alignment: Alignment.center,
            // margin: EdgeInsets.only(left: 50, right: 10),
            // margin: EdgeInsets.symmetric(vertical: 240, horizontal: 50),
            // margin: EdgeInsets.all(16),
            // padding: EdgeInsets.all(16),
            // transform: Matrix4.translationValues(100, -100, 0),
            height: 300,
            width: 400,
            // Cannot provide both a color and a decoration To provide both, use "decoration: BoxDecoration(color: color)".
            // color: Colors.blue[400],
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(color: Colors.purple, width: 8),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),

            child: Stack(
              alignment: Alignment.topRight, // equals Alignment(1, -1)
              children: [
                SizedBox(
                  width: 150,
                  height: 150,
                  child: _colorBox(color: Colors.green),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: _colorBox(color: Colors.yellow),
                  ),
                ),
                Positioned(
                  height: 100,
                  width: 70,
                  left: 30,
                  top: 100,
                  child: _colorBox(color: Colors.red),
                ),
              ],
            ),

            /* child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(flex: 1, child: _colorBox(color: Colors.red)),
                SizedBox(
                  width: 100,
                  height: 100,
                  child: _colorBox(color: Colors.yellow),
                ),
                Spacer(flex: 2),
                Flexible(flex: 2, child: _colorBox(color: Colors.green)),
                // _colorBox(color: Colors.white),
              ],
            ), */

            /* child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _colorBox(color: Colors.red),
                SizedBox(width: 100, child: _colorBox(color: Colors.yellow)),
                _colorBox(color: Colors.green),
                // _colorBox(color: Colors.white),
              ],
            ), */

            /* child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                _colorBox(color: Colors.red),
                SizedBox(height: 100, child: _colorBox(color: Colors.yellow)),
                _colorBox(color: Colors.green),
                // _colorBox(color: Colors.white),
              ],
            ), */

            /* child: Padding(
              padding: EdgeInsets.all(20),
              child: Text("Padding"),
            ), */

            /* child: SafeArea(
              child: GridView.builder(
                  itemCount: 20,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 260,
                    mainAxisSpacing: 2,
                    crossAxisSpacing: 2,
                  ),
                  /* gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 2,
                    crossAxisSpacing: 2,
                    mainAxisExtent: 150
                  ),  */
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.yellow[300],
                      child: Center(
                        child: Text(
                          'Item $index',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                      ),
                    );
                  }),
            ), */

            /* child: SafeArea(
              child: GridView.count(
                crossAxisCount: 2,
                // scrollDirection: Axis.horizontal, // default Axiss.vertical
                padding: EdgeInsets.all(16),
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: 2,
                children: List.generate(20, (index) {
                  return Container(
                    color: Colors.yellow[300],
                    child: Center(
                      child: Text(
                        'Item $index',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    ),
                  );
                }),
              ),
            ), */

            /* child: ListView.separated(
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Image.network(
                    "https://files.flutter-io.cn/posts/flutter-cn/2019/flutter-1dot12-release/the-flutter-favorite-program.png",
                  ),
                  title: Text("Title $index"),
                  subtitle: Text("Subtitle $index"),
                  trailing: Icon(Icons.more_vert),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Divider(indent: 8, endIndent: 8);
              },
            ), */

            /* child: ListView.builder(
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return Center(
                  child: Text(
                    "Item $index",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                );
              },
            ), */

            /* child: ListView(
              // padding: EdgeInsets.all(20),
              // scrollDirection: Axis.horizontal, // default as Axis.vertical
              // physics: NeverScrollableScrollPhysics(),
              reverse: true,
              shrinkWrap: true, // such as wrap_content
              children: List.generate(
                20,
                (index) => Text(
                  "Item $index",
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
            ), */

            // child: ClipOval(
            //   child: Image.asset(
            //     "assets/images/flutter.png",
            //     fit: BoxFit.cover,
            //   ),
            // ),

            // child: Image.asset(
            //   "assets/images/flutter.png",
            //   alignment: Alignment.center,
            //   color: Colors.yellow,
            //   colorBlendMode: BlendMode.darken,
            //   fit: BoxFit.contain,
            //   repeat: ImageRepeat.repeat,
            // ),

            // child: Image.network(
            //   "https://images.frandroid.com/wp-content/uploads/2018/09/flutter.png",
            //   alignment: Alignment.center,
            //   color: Colors.yellow,
            //   colorBlendMode: BlendMode.darken,
            //   fit: BoxFit.contain,
            //   repeat: ImageRepeat.repeat,
            // ),

            //  Container Widget & Text Widget
            // child: const Text(
            //   "This is Container Widget\n"
            //   "margin is all 30\n"
            //   "padding is all 20\n"
            //   "height and width are 350\n"
            //   "green and 2 width border, 20 circular radius\n",
            //   style: TextStyle(
            //     color: Colors.white,
            //     fontSize: 18,
            //     fontFamily: "Roboto",
            //     fontWeight: FontWeight.w300,
            //     fontStyle: FontStyle.italic,
            //     decoration: TextDecoration.lineThrough,
            //     decorationColor: Colors.lightBlue,
            //     decorationStyle: TextDecorationStyle.wavy,
            //     letterSpacing: 4,
            //     wordSpacing: 10,
            //   ),
            // ),
          ),
        ),
      ),
    );
  }
}
