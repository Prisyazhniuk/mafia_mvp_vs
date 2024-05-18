import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  // const MyApp({super.key});

  final List<String> items = [
    "Мирный житель",
    "Мафия",
    "Врач",
    "Шериф",
    "Дон",
    "Маньяк",
    "Любовница",
    "Адвокат",
    "Журналист",
    "Самоубийца",
    "Камикадзе",
    "Якудзе",
    "Лунатик",
    "Сержант",
  ];


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const title = "Mafia MVP";

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return MyListView(items[index]);
        },
      ),
    ),
  );
}

}

class MyListView extends StatelessWidget {
  const MyListView(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MyDetails(title),
          ),
        );
      },
    );
  }
}

class MyDetails extends StatelessWidget {
  const MyDetails(this.itemTitle);

  final String itemTitle;

  @override
  Widget build(BuildContext context) {
    const title = 'Details Page';

    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: SafeArea(
        top: false,
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 338.0,
                width: 800.0,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(itemTitle),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ); 
  }
}