import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:youtube_app/main_model.dart';
import 'package:youtube_app/nextpage.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  final String yoshikiText = '練習中だよ❗️';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
                'ヨシキングのチャンネル',
            ),
          ),
          body: Consumer<MainModel>(builder: (context, model, child) {
              return Center(
                child: Column(
                  children: [
                    Text(
                    model.yoshikiText,
                    style: TextStyle(
                      fontSize: 40,
                    ),
                    ),
                    ElevatedButton(
                        onPressed: (){
                          model.changeyoshikiText();
                        },
                        child: Text('ボタン'),
                    ),
                  ],
                ),
              );
            }
          ),
        ),
      ),
    );
  }
}



