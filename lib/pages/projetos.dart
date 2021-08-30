import 'package:flutter/material.dart';

class Projetos extends StatefulWidget {
  Projetos({Key? key}) : super(key: key);

  @override
  _ProjetosState createState() => _ProjetosState();
}

class _ProjetosState extends State<Projetos> {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
      ),
      body: Container(
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage('assets/images/IFlutter1.gif'),
        //     fit: BoxFit.cover,
        //   ),
        color: Colors.black,
        child: PageView(controller: controller, children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 100,
                  alignment: Alignment.topCenter,
                  child: Text('Projeto Cine - HTLM',
                      style: TextStyle(
                        color: Color(0xFFf22259),
                        fontSize: 30,
                        shadows: [
                          BoxShadow(
                              color: Color(0xFF07f2c7),
                              offset: Offset(0, 0),
                              blurRadius: 2.0,
                              spreadRadius: 2.0),
                          BoxShadow(
                              color: Color(0xFFF2F2F2),
                              offset: Offset(0, 0),
                              blurRadius: 4.0,
                              spreadRadius: 4.0),
                        ],
                      ))),
              Center(
                child: Image(image: AssetImage('assets/images/cine.png')),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 100,
                  alignment: Alignment.topCenter,
                  child: Text('Projeto - Calculadora - JS ',
                      style: TextStyle(
                        color: Color(0xFF07F2C7),
                        fontSize: 30,
                        shadows: [
                          BoxShadow(
                              color: Color(0xFF07f2c7),
                              offset: Offset(0, 0),
                              blurRadius: 2.0,
                              spreadRadius: 2.0),
                          BoxShadow(
                              color: Color(0xFFF2F2F2),
                              offset: Offset(0, 0),
                              blurRadius: 4.0,
                              spreadRadius: 4.0),
                        ],
                      ))),
              Center(
                child: Image(image: AssetImage('assets/images/calc.png')),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 100,
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.all(1),
                  child: Text('Projeto Agro - Boostrap',
                      style: TextStyle(
                        color: Color(0xFFf22259),
                        fontSize: 30,
                        shadows: [
                          BoxShadow(
                              color: Color(0xFff2f2f2),
                              offset: Offset(0, 0),
                              blurRadius: 2.0,
                              spreadRadius: 2.0),
                          BoxShadow(
                              color: Color(0xFFF2F2F2),
                              offset: Offset(0, 0),
                              blurRadius: 4.0,
                              spreadRadius: 4.0),
                        ],
                      ))),
              Center(
                child: Image(image: AssetImage('assets/images/agro1.JPG')),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 120,
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.all(20),
                  child: Text('Projeto SouMili1.jpg',
                      style: TextStyle(
                        color: Color(0xFF07F2C7),
                        fontSize: 30,
                        shadows: [
                          BoxShadow(
                              color: Color(0xFF07f2c7),
                              offset: Offset(0, 0),
                              blurRadius: 2.0,
                              spreadRadius: 2.0),
                          BoxShadow(
                              color: Color(0xFFF2F2F2),
                              offset: Offset(0, 0),
                              blurRadius: 4.0,
                              spreadRadius: 4.0),
                        ],
                      ))),
              Center(
                child: Image(image: AssetImage('assets/images/souMili1.jpg')),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 100,
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.all(20),
                  child: Text('Projeto MotoApp - React',
                      style: TextStyle(
                        color: Color(0xFFf22259),
                        fontSize: 30,
                        shadows: [
                          BoxShadow(
                              color: Color(0xFF07f2c7),
                              offset: Offset(0, 0),
                              blurRadius: 2.0,
                              spreadRadius: 2.0),
                          BoxShadow(
                              color: Color(0xFFF2F2F2),
                              offset: Offset(0, 0),
                              blurRadius: 4.0,
                              spreadRadius: 4.0),
                        ],
                      ))),
              Center(
                child: Image(image: AssetImage('assets/images/motoApp1.jpg')),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
