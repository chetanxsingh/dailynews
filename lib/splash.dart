import 'package:dailynews/login_page.dart';
import 'package:dailynews/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash>
with SingleTickerProviderStateMixin{

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    super.initState();
    
    Future.delayed(Duration(seconds: 2), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder:(_) => const Wrapper(),
      ));
    }
    );
  }
  
@override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.purple, Colors.blue
          ],
          begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          )
        ),
     child: const Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Icon(
           Icons.check_circle,
           size: 80,
             color: Colors.white,
         ),
         SizedBox(height: 20,),
         Text(
           'Daily NEWS',
           style: TextStyle(
             fontStyle: FontStyle.italic,
             color: Colors.white,
             fontSize: 32,
           ),
         ),
       ],
     ),
      )
    );
  }
}
