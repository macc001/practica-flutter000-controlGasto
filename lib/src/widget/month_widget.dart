import 'package:flutter/material.dart';
import 'package:control_gasto/src/utils/graph_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MontWidget extends StatefulWidget {
  MontWidget({Key key}) : super(key: key);

  @override
  _MontWidgetState createState() => _MontWidgetState();
}

class _MontWidgetState extends State<MontWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          _expenses(),
          _graph(),
          Container(
            color: Colors.blueAccent.withOpacity(0.15),
            height: 15.0,
          ),
          _list(),
        ],
      ),
    );
  }

  Widget _expenses() {
    return Column(
      children: <Widget>[
        Text(
          "\$ 2351362,45",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40.0,
          ),
        ),
        Text(
          "gastos",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
            color: Colors.blue,
          ),
        )
      ],
    );
  }

  Widget _graph() {
    return Container(
      height: 250.0,
      child: GraphWidget(),
    );
  }

  Widget _list() {
    return Expanded(
      child: ListView.separated(
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return _item(FontAwesomeIcons.shoppingCart, "Shoping", 14, 152.0);
        },
        separatorBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.blueAccent.withOpacity(0.15),
            height: 3.0,
          );
        },
      ),
    );
  }

  Widget _item(IconData icon, String nombre, int porcentaje, double value) {
    return ListTile(
      leading: Icon(icon, size: 32),
      title: Text(
        nombre,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
        ),
      ),
      subtitle: Text(
        "$porcentaje% of expanses",
        style: TextStyle(
          fontSize: 16.0,
          color: Colors.blue,
        ),
      ),
      trailing: Container(
        decoration: BoxDecoration(
          color: Colors.blueAccent.withOpacity(0.2),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "\$$value",
            style: TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
        ),
      ),
    );
  }
}
