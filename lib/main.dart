import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> name = [
    'name 1',
    'name 2',
    'name 3',
  ];
  List<String> image = [
    'https://img.thread-bare.com/store/thread-bare/q7AYwrRT/iHn8cARP.mockup',
    'https://avatars.mds.yandex.net/get-mpic/4303532/img_id5842608009454310690.jpeg/orig',
    'https://avatars.mds.yandex.net/i?id=830e506f47de919458f80a03aca17a801616c71b-10090660-images-thumbs&n=13'
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return Divider(
            height: 20,
            color: CupertinoColors.black,
          );
        },
        itemCount: name.length,
        itemBuilder: (context, index) {
          final item = name[index];
          return Dismissible(
            key: Key(item),
            onDismissed: (direction){
              setState(() {
                name.removeAt(index);
              });
            },
            child: ListTile(
              title: Text(name[index]),
              trailing: Icon(CupertinoIcons.person_2_alt),
            ),
          );
        },
      ),
    );
  }
}
