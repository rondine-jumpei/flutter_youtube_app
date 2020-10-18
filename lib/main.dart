import 'package:flutter/material.dart';
import 'package:youtube_app/video_detail.dart';

//最初に呼ばれるメソッド、myappが起動
void main() {
  runApp(MyApp());
}

final items = List<String>.generate(10000, (i) => "Item $i");

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leading: Icon(Icons.videocam),
          title: const Text("YoutubeApp"),
          actions: [
            SizedBox(
                width: 44,
                child: FlatButton(
                  child: Icon(Icons.search),
                  onPressed: () {},
                )),
            SizedBox(
                width: 44,
                child: FlatButton(
                  child: Icon(Icons.more_vert),
                  onPressed: () {},
                )),
          ],
        ),
        body: Container(
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                      width: 80,
                      height: 80,
                      child: Image.network(
                          "https://www.sponichi.co.jp/entertainment/news/2018/06/17/jpeg/20180618s00041000050000p_view.jpg")),
                  const SizedBox(
                    width: 8,
                  ),
                  Column(
                    children: [
                      const Text(
                        "ボンゴレX世",
                        textAlign: TextAlign.start,
                      ),
                      FlatButton(
                        child: Row(
                          children: [
                            Icon(
                              Icons.video_call,
                              color: Colors.red,
                            ),
                            Text("登録する"),
                          ],
                        ),
                        onPressed: () {},
                      )
                    ],
                  )
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () async {
                       await Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => VideoDetail()),
                        );

                      },
                      contentPadding: EdgeInsets.all(8),
                      leading: Image.network(
                          "https://img.mandarake.co.jp/aucimg/8/5/0/9/0000718509.jpeg"),
                      title: Column(
                        children: [
                          Text(
                            '[ボンゴレ]未来編：終盤',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Row(children: [
                            SizedBox(
                              width: 40,
                            ),
                            Text(
                              '345回再生',
                              style: TextStyle(fontSize: 12),
                            ),
                            Text(
                              "５ヶ月前",
                              style: TextStyle(fontSize: 12),
                            ),
                          ])
                        ],
                      ),
                      trailing: Icon(Icons.more_vert),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
