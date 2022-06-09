import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DangSuDung extends StatefulWidget {
  const DangSuDung({Key? key}) : super(key: key);

  @override
  State<DangSuDung> createState() => _DangSuDungState();
}

class _DangSuDungState extends State<DangSuDung> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        height: 200,
        child: ListView(
          children: [
            ListTile(
              leading:Container(
                width: 40,
                height: 40,
                child: Image(
                  image: AssetImage('assets/img/bank.png'),
                ),
              ),
              title:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Ví", style: TextStyle(fontSize: 20,)),
                  Text("500,000", style: TextStyle(fontSize: 15),)
                ],
              ) ,
              trailing: Icon(Icons.more_vert)
            ),
            ListTile(
                leading:Container(
                  width: 40,
                  height: 40,
                  child: Image(
                    image: AssetImage('assets/img/bank.png'),
                  ),
                ),
                title:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("ATM", style: TextStyle(fontSize: 20,)),
                    Text("150,000", style: TextStyle(fontSize: 15),)
                  ],
                ) ,
                trailing: Icon(Icons.more_vert),
            ),
            ListTile(
                leading:Container(
                  width: 40,
                  height: 40,
                  child: Image(
                    image: AssetImage('assets/img/bank.png'),
                  ),
                ),
                title:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Momo", style: TextStyle(fontSize: 20,)),
                    Text("0", style: TextStyle(fontSize: 15),)
                  ],
                ) ,
                trailing: Icon(Icons.more_vert)
            ),
          ],
        )
    );
  }
}
