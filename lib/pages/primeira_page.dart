import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_projeto/pages/contact.dart';
import 'package:mini_projeto/pages/projetos.dart';
import 'package:mini_projeto/pages/sobre.dart';
import 'package:url_launcher/url_launcher.dart';

class PrimeiraPage extends StatefulWidget {
  @override
  _PrimeiraPageState createState() => _PrimeiraPageState();
}

class _PrimeiraPageState extends State<PrimeiraPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text('Renata'),
        backgroundColor: Colors.black87,
      ),
      body: Stack(children: [
        Container(
            // height: MediaQuery.of(context).size.height,
            // width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/renata1.png'),
            fit: BoxFit.cover,
          ),
        )),
        Container(
            alignment: Alignment.bottomLeft,
            child: Text(
              ''' 

       Olá, 

       Eu sou,
       Renata Matsumoto, 
       futura web developer
            
       Front End Developer
      
      
      ''',
              style: GoogleFonts.yanoneKaffeesatz(
                  textStyle: TextStyle(
                      color: Color(0Xff07F2C7),
                      shadows: [
                        BoxShadow(
                            color: Color(0xFFF22259),
                            offset: Offset(1, 1),
                            blurRadius: 25.0,
                            spreadRadius: 15.0)
                      ],
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1)),
            )),
      ]),
      drawer: Drawer(
        child: Container(
            padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
            color: Colors.black,
            child: ListView(children: <Widget>[
              ListTile(
                leading: FaIcon(
                  FontAwesomeIcons.user,
                  size: 28,
                  color: Colors.white,
                ),
                title: Text('Sobre',
                    style: TextStyle(color: Colors.white, fontSize: 20)),
                subtitle: Text('Renata Matsumoto...',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                trailing: IconButton(
                  icon: FaIcon(FontAwesomeIcons.arrowRight,
                      size: 25, color: Colors.white),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Sobre()));
                  },
                ),
              ),
              ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.lightbulb,
                    size: 28,
                    color: Colors.white,
                  ),
                  title: Text('Meus Projetos',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                  subtitle: Text(' Projetos...',
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                  trailing: IconButton(
                    icon: FaIcon(FontAwesomeIcons.arrowRight,
                        size: 25, color: Colors.white),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Projetos()));
                    },
                  )),
              ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.mobileAlt,
                    size: 28,
                    color: Colors.white,
                  ),
                  title: Text('Contato',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                  trailing: IconButton(
                    icon: FaIcon(FontAwesomeIcons.arrowRight,
                        size: 25, color: Colors.white),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Contact()));
                    },
                  )),
              Container(
                color: Colors.black12,
                height: 350,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.linkedinIn,
                            size: 30,
                            color: Color(0xff07F2C7),
                          ),
                          onPressed: () async => await launch(
                              "https://www.linkedin.com/in/renatas-matsumoto/")),
                      SizedBox(
                        width: 10,
                      ),
                      IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.githubAlt,
                            size: 28,
                            color: Color(0xff07F2C7),
                          ),
                          onPressed: () async => await launch(
                              "https://github.com/renata-matsumoto")),
                      SizedBox(
                        width: 10,
                      ),
                      IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.instagram,
                            size: 28,
                            color: Color(0xff07F2C7),
                          ),
                          onPressed: () async =>
                              await launch("https://instagram.com")),
                    ]),
              )
            ])),
      ),
    );
  }
}
