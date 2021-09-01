import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sobre extends StatefulWidget {
  Sobre({Key? key}) : super(key: key);

  @override
  _SobreState createState() => _SobreState();
}

class _SobreState extends State<Sobre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
        ),
        body: Container(
          color: Colors.black,
          child: Column(
            children: [
              Container(
                  // height: 100,
                  padding: EdgeInsets.fromLTRB(20, 50, 0, 0),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Eu, Renata!',
                    style: GoogleFonts.yanoneKaffeesatz(
                        textStyle: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            color: Color(0xfff22259))),
                  )),
              Container(
                  padding: EdgeInsets.fromLTRB(25, 10, 20, 0), child: Text('''

                Eu sou uma estudante de Desenvolvimento Front-End em São Paulo.
                Eu tenho uma verdadeira paixão por UI e UX. 
                Minhas experiências em desenvolvimento front-end foram com HTLM, CSS, JS, Boostrap, React JS, Flutter.
                ''', style: TextStyle(fontSize: 15, color: Color(0xfff2f2f2)))),
              SizedBox(height: 8),
              Container(
                height: 300,
                child: Image(
                  image: AssetImage('assets/images/IFlutter.gif'),
                ),
              ),
            ],
          ),
        ));
  }
}
