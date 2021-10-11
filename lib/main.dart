import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:youtube_app/nextpage.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  final items = List<String>.generate(10000, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),

      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leading: Icon(Icons.video_call),
          title: const Text(
              'ヨシキングのチャンネル',
          ),
          actions: [
            SizedBox(
              width: 40,
              child: IconButton(
               onPressed: () {  },
               icon: Icon(Icons.search,),
              ),
            ),
            SizedBox(
              width: 40,
              child: IconButton(
                onPressed: () {  },
                icon: Icon(Icons.more_vert,),
              ),
            ),
          ],
        ),
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Image.network('https://pbs.twimg.com/profile_images/760151493232078848/9L8KQb1t_400x400.jpg',
                    height: 80,
                      width: 80,
                    ),
                   SizedBox(
                     width: 15,
                   ),
                   Column(
                     children: [
                      const Text(
                        'よしきのモーニングルーティーン',
                      ) ,
                       TextButton.icon(

                         icon: Icon(
                           Icons.video_call,
                           color: Colors.red,
                         ),
                         label: Text('登録する'),
                         onPressed: () {},
                       )
                     ],
                   ) ,
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () async{
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => NextPage()),
                        );
                      },
                       contentPadding: EdgeInsetsDirectional.all(5),
                      leading: Image.network('https://cdn.amebaowndme.com/madrid-prd/madrid-web/images/sites/27260/30bd4d7ee6c47d52a06af08a9965cd57_53f00f4cefc7be7da182494c771f8eb1.jpg?width=544',
                        height: 80,
                        width: 80,
                      ),
                      title: Column(
                        children: [
                          Text('よしきの朝ごはん❗超時短飯️',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                          ),
                          Row(
                            children: [
                              Text('95万回再生',
                              style: TextStyle(fontSize: 13),
                              ),
                              Text('2日前',
                              style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
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



