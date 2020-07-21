 import 'package:flutter/material.dart';
 import 'package:url_launcher/url_launcher.dart';
 import 'package:flutter_web_browser/flutter_web_browser.dart';
 void main() {
   WidgetsFlutterBinding.ensureInitialized();
   runApp(MyApp());
 }

 class MyApp extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       home: DemoPage(),
     );
   }
 }

 class DemoPage extends StatelessWidget {
   launchURL() {
     launch('https://flutter.dev');
   }

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: Center(
          child: new RaisedButton(
            onPressed: () => openBrowserTab(),
            child: new Text('Open website'),
          ),
        ),       

//         child: RaisedButton(
//           onPressed: launchURL,
//           child: Text('Show Flutter homepage'),
//         ),
//       ),
     );
   }
 }

 openBrowserTab() async {
    await FlutterWebBrowser.openWebPage(url: "https://gadgets.ndtv.com/", androidToolbarColor: Colors.deepPurple);
  }
