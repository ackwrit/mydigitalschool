import 'package:digitaldschool/view/dashboard_view.dart';
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

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //variables
  TextEditingController mail = TextEditingController();
  TextEditingController  password = TextEditingController();



  //


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(

        title: const Text("Digital Campus"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: bodyPage(),
      )
    );
  }


  Widget bodyPage(){
    //image
    //entrer mail
    //entrer le mot de passe
    //bouton de validation
    return Column(
      children: [
        //image
        const SizedBox(height:10),
        Image.network("https://www.auto-moto.com/wp-content/uploads/sites/9/2022/02/01-peugeot-208-750x410.jpg"),
        const SizedBox(height:10),

        //mail
        TextField(
          controller: mail,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            hintText: "Entrer votre mail"
          ),
        ),
        const SizedBox(height:10),


        //password
        TextField(
          controller: password,
          obscureText: true,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
              ),
              hintText: "Entrer votre password"
          ),
        ),
        const SizedBox(height:10),


        //bouton
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: const StadiumBorder()
          ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context){
                    return DashBoardView(mail: mail.text,password: password.text,);
                  }
              ));
            },
            child: const Text("Validation")
        )
      ],
    );
  }
}
