import 'package:flutter/material.dart';


class DashBoardView extends StatefulWidget {
  String mail;
  String password;
  DashBoardView({Key? key,required this.mail,required this.password}) : super(key: key);

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  //variable
  int indexCurrent = 1;
  PageController controllerPage = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(
        width: MediaQuery.of(context).size.width *0.5,
        height : MediaQuery.of(context).size.height,
        color: Colors.white,
        child : MyDrawer()
      ),
      appBar: AppBar(
        title: Text(widget.mail),
      ),
      body : bodyPage(),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexCurrent,
        onTap: (value){
          setState((){
            indexCurrent = value;
            controllerPage.jumpToPage(value);
          });


        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.list),
            label: "Personnes"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit_outlined),
            label: "Favoris"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.back_hand),
              label: "Nouveau"
          ),
        ],
      ),

    );



  }

  Widget bodyPage(){
    return PageView(
      controller: controllerPage,
      onPageChanged: (value){
        setState(() {
          controllerPage.jumpToPage(value);
          indexCurrent = value;
        });

      },
      children: [
        Text("première page"),
        Text("Deuxième page"),
        Text("Troisème page"),
      ],
    );
  }



}


class MyDrawer extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyDrawerState();
  }

}

class MyDrawerState extends State<MyDrawer>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
        padding: const EdgeInsets.all(15),
      child: Column(
        children : [
          //avatar
          //cliqubale pour changer la photo de l'avatar

          CircleAvatar(
            radius: 60,
            backgroundImage: NetworkImage("https://www.auto-moto.com/wp-content/uploads/sites/9/2022/02/01-peugeot-208-750x410.jpg",),
          ),

         /* Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage("https://www.auto-moto.com/wp-content/uploads/sites/9/2022/02/01-peugeot-208-750x410.jpg",),
                fit: BoxFit.fill
              )
            ),
          ),*/


          //prenom et nom
          Text("NOM et PRENOM"),

          //pseudo
          //poura enregitrer un nouveau pseudo
          Text("Pseudo"),


          //mail
          Text("afficher le mail")

        ]

      ),
    );
  }

}
