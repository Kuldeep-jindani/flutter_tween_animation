import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
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
      home: const TwinIcon(),
    );
  }
}

class TwinIcon extends StatefulWidget {
  const TwinIcon({super.key});

  @override
  State<TwinIcon> createState() => _TwinIconState();
}

class _TwinIconState extends State<TwinIcon> {
  double targetValue = 250;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TweenAnimationBuilder(
          key: ValueKey(1),
          tween: Tween<double>(begin: 0, end: 1),
          duration: Duration(milliseconds: 500),
          builder: (context, value, child) => Opacity(
              opacity: value,
              child: child,
          ),
          child:  IconButton(
              iconSize: 250,
              color: Colors.red,
              icon: Icon(Icons.flutter_dash_rounded),
              onPressed: () {
                targetValue = targetValue == 100 ? 250 : 100;
              })),
    );
  }
}
