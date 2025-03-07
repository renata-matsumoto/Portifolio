import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  GoogleMapController? mapController;
  Set<Marker> markers = new Set<Marker>();
  double lat = -22.2175974;
  double long = -49.9487507;

  GoogleMapController? _controller;

  Future<void> _onMapCreate(GoogleMapController controller) async {
    _controller = controller;
    mapController = controller;
    String value = await DefaultAssetBundle.of(context)
        .loadString('assets/map/map_style.json');
    _controller?.setMapStyle(value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: TextField(
            onSubmitted: (value) {
              double lat = -22.2175974;
              double long = -49.9487507;
              LatLng position = LatLng(lat, long);
              mapController?.moveCamera(CameraUpdate.newLatLng(position));
              final Marker marker = Marker(
                markerId: new MarkerId('1234567'),
                position: const LatLng(0.0, 0.0),
                infoWindow: InfoWindow(
                  title: 'RM',
                  snippet: 'Marilia/SP',
                ),
              );

              setState(() {
                markers.add(marker);
              });
            },
          ),
          backgroundColor: Colors.black87,
        ),
        body: Container(
          alignment: Alignment.center,
          color: Colors.black,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Text('Contato',
                            style: GoogleFonts.yanoneKaffeesatz(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 55,
                                    color: Color(0xff07F2C7)))),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                            'Entre em contato, se você tem algum pedido ou dúvida, não hesite em usar o formulário.',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xffF2F2F2),
                            )),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 300,
                        width: 450,
                        child: GoogleMap(
                            onMapCreated: _onMapCreate,
                            onCameraMove: (data) {
                              print(data);
                            },
                            onTap: (position) {
                              print(position);
                            },
                            initialCameraPosition: CameraPosition(
                              target: LatLng(lat, long),
                              zoom: 11.0,
                            ),
                            markers: markers),
                      ),
                      SizedBox(height: 52),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (String? texto) {
                                  if (texto != null && texto.isNotEmpty) {
                                    if (texto.length < 2)
                                      return 'Digite seu nome';
                                  } else {
                                    return 'Campo Obrigatório';
                                  }
                                },
                                decoration: InputDecoration(
                                  labelText: 'Nome',
                                  filled: true,
                                  fillColor: Color(0xff39393A),
                                  labelStyle: TextStyle(
                                      color: Color(0xFFF22259), fontSize: 16),
                                  border: OutlineInputBorder(),
                                  errorStyle: TextStyle(color: Colors.brown),
                                ),
                              ),
                            ),
                            SizedBox(height: 8, width: 8),
                            Expanded(
                              flex: 1,
                              child: TextFormField(
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (String? texto) {
                                  if (texto != null && texto.isNotEmpty) {
                                    if (!texto.contains('@') ||
                                        texto.length < 8 ||
                                        !texto.contains('.com'))
                                      return 'Digite um e-mail válido.';
                                  } else {
                                    return 'Campo Obrigatório';
                                  }
                                },
                                decoration: InputDecoration(
                                  labelText: 'Email',
                                  filled: true,
                                  fillColor: Color(0xff39393A),
                                  labelStyle: TextStyle(
                                      color: Color(0xFFF22259), fontSize: 16),
                                  border: OutlineInputBorder(),
                                  errorStyle: TextStyle(color: Colors.brown),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xff39393A),
                            labelStyle: TextStyle(
                                color: Color(0xFFF22259), fontSize: 16),
                            labelText: 'Assunto',
                            border: OutlineInputBorder(),
                            errorStyle: TextStyle(color: Colors.brown),
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xff39393A),
                            labelStyle: TextStyle(
                                color: Color(0xFFF22259), fontSize: 16),
                            labelText: 'Mensagem',
                            border: OutlineInputBorder(),
                            errorStyle: TextStyle(color: Colors.brown),
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              alignment: Alignment.centerRight,
                              // margin: EdgeInsets.only(left: 150),
                              child: OutlinedButton(
                                onPressed: () async => await launch(
                                    "https://wa.me/${5511972345183}?text=Por favor, entre em contato."),
                                style: OutlinedButton.styleFrom(
                                    primary: Color(0xff07F2C7),
                                    side: BorderSide(
                                        width: 2, color: Color(0xFFF22259))),
                                child: Text(
                                  'Enviar',
                                  style: TextStyle(
                                      fontSize: 16, color: Color(0xFFF22259)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
              ],
            ),
          ),
        ));
  }
}
