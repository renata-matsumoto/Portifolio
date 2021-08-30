import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mini_projeto/pages/contact.dart';
import 'package:url_launcher/url_launcher.dart';

class DrawerPage extends StatefulWidget {
  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
      child: Container(
        color: Colors.black87,
        child: ListView(
          children: <Widget>[
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
                icon: FaIcon(
                  FontAwesomeIcons.arrowRight,
                  size: 25,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Contact()));
                },
              ),
              // onTap: () {
              //   print('ir para sobre');
              //   Navigator.of(context).push(
              //       MaterialPageRoute(builder: (context) => Contact()));
              // },
            ),
            ListTile(
              leading: FaIcon(
                FontAwesomeIcons.lightbulb,
                size: 28,
                color: Colors.white,
              ),
              title: Text('Minhas Skills',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
              subtitle: Text('Skills & Projetos...',
                  style: TextStyle(color: Colors.white, fontSize: 16)),
              trailing: FaIcon(
                FontAwesomeIcons.arrowRight,
                size: 25,
                color: Colors.white,
              ),
              // onTap: () {
              //   print('toquei no skill');
              //   // Navigator.of(context).push(MaterialPageRoute(
              //   //     builder: (BuildContext, context) => Page()));
              // },
            ),
            ListTile(
              leading: FaIcon(
                FontAwesomeIcons.mobileAlt,
                size: 28,
                color: Colors.white,
              ),
              title: Text('Contato',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
              trailing: FaIcon(
                FontAwesomeIcons.arrowRight,
                size: 25,
                color: Colors.white,
              ),
              // onTap: () {
              //   print('toquei no contato');
              //   Navigator.of(context).push(
              //       MaterialPageRoute(builder: (context) => Contact()));
              // },
            ),
            Container(
              color: Colors.black87,
              height: 550,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.linkedinIn,
                        size: 28,
                        color: Color(0xff07F2C7),
                      ),
                      onPressed: () async {
                        const url =
                            'https://www.linkedin.com/in/renatas-matsumoto/';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      }),
                  SizedBox(
                    width: 10,
                  ),
                  IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.githubAlt,
                        size: 28,
                        color: Color(0xff07F2C7),
                      ),
                      onPressed: () async {
                        const url = 'https://github.com/renata-matsumoto';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      }),
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
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
