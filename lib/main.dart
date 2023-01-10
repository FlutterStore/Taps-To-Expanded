import 'package:flutter/material.dart';
import 'package:tap_to_expand/tap_to_expand.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('TapToExpand',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15),),
        centerTitle: true,
      ),
      body: Center(
        child: TapToExpand(
          color: Colors.green,
          content: Column(
            children: <Widget>[
              for (var i = 0; i < 20; i++)
                ListTile(
                  leading: Container(
                    width: 60,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: const [ BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5.0,
                      ),]
                    ),
                    child: Center(child: Icon(Icons.person_rounded,color: Colors.black,)),
                  ),
                  title: const Text("Successoft Infotech",maxLines: 2,style: TextStyle(fontSize: 14,height: 1,fontWeight: FontWeight.w500,overflow: TextOverflow.ellipsis,color: Colors.white),),
                  subtitle: const Text("Flutter Store",style: TextStyle(color: Colors.white,fontSize: 10,height: 1.5)),
                  trailing: const Icon(Icons.arrow_forward_ios,size: 12,color: Colors.white),
                )
            ],
          ),
          title: const Text(
            'TapToExpand',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              height: 0.5
            ),
          ),
          onTapPadding: 10,
          closedHeight: 60,
          scrollable: true,
          borderRadius: 10,
          openedHeight: 300,
        ),
      )
    );
  }
}