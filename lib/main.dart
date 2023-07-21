import 'package:flutter/material.dart';
import 'package:know_our_school/View/school_info.dart';
import 'package:provider/provider.dart';

import 'ViewModel/view_model.dart';

void main() {
  var ensureInitialized = WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>ShowData())
      ],
      child: MaterialApp(
        title: 'know our school',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SchoolInfo(),
      ),
    );
  }
}
