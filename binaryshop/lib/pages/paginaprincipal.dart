import 'package:binaryshop/pages/home1.dart';
import 'package:flutter/material.dart';

class PaginaPrincipal extends StatefulWidget {
  const PaginaPrincipal({Key? key}) : super(key: key);

  @override
  _PaginaPrincipalState createState() => _PaginaPrincipalState();
}

class _PaginaPrincipalState extends State<PaginaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          SizedBox(
            height: 25.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.0),
            child: Row(children: <Widget>[
              Text(
                'Binary Shop',
                style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                    color: Colors.white),
              )
            ]),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            height: MediaQuery.of(context).size.height - 105.0,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(75.0),
                    bottomLeft: Radius.circular(75.0))),
            child: ListView(
              padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: 30.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height - 200.0,
                      child: GridView.count(
                        crossAxisCount: 2,
                        mainAxisSpacing: 0.1,
                        childAspectRatio: 0.700,
                        children: <Widget>[
                          _productoItem(
                              'Hoodie', 125, 'assets/images/img1.jpg'),
                          _productoItem('Gafas', 35, 'assets/images/gafas.jpg'),
                          _productoItem(
                              'Playera', 175, 'assets/images/pcafe.jpg'),
                          _productoItem(
                              'Sueter', 125, 'assets/images/sueter.jpg'),
                          _productoItem('Blusa', 125, 'assets/images/img2.jpg'),
                          _productoItem(
                              'Shorts', 125, 'assets/images/shorts.jpg'),
                        ],
                      ),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _productoItem(String nombre, int precio, String imagen) {
    return Padding(
      padding: EdgeInsets.all(3.0),
      child: Container(
        child: new Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Colors.white,
          elevation: 5,
          child: new Column(
            children: <Widget>[
              new Hero(
                tag: imagen,
                child: new Material(
                  child: Container(
                    color: Colors.white,
                    child: InkWell(
                      onTap: () =>
                          Navigator.of(context).push(new MaterialPageRoute(
                              builder: (context) => Home1(
                                    nombre: nombre,
                                    precio: precio,
                                    imagen: imagen,
                                  ))),
                      child: new Image.asset(
                        imagen,
                        fit: BoxFit.contain,
                        width: 130,
                        height: 130,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(3.0),
              ),
              Text(
                nombre,
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
              Text(
                precio.toString(),
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
