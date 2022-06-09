import 'package:flutter/material.dart';

class GiaoDichHomNay extends StatefulWidget {
  const GiaoDichHomNay({Key? key}) : super(key: key);

  @override
  State<GiaoDichHomNay> createState() => _GiaoDichHomNayState();
}

class _GiaoDichHomNayState extends State<GiaoDichHomNay> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: 120,
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.account_balance,),
            title: Text("Xây nhà", style: TextStyle(fontSize: 20, )),
            trailing: Text("500000", style: TextStyle(fontSize: 20, color: Colors.red),),
          ),
          ListTile(
            leading: Icon(Icons.account_balance,),
            title: Text("Làm đẹp", style: TextStyle(fontSize: 20, )),
            trailing: Text("150000", style: TextStyle(fontSize: 20, color: Colors.red),),
          ),
        ],
      )
    );
  }
}
