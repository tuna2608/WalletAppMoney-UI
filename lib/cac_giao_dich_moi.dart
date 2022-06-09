
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CacGiaoDichMoi extends StatefulWidget {
  const CacGiaoDichMoi({Key? key}) : super(key: key);

  @override
  State<CacGiaoDichMoi> createState() => _CacGiaoDichMoiState();
}

class _CacGiaoDichMoiState extends State<CacGiaoDichMoi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Các giao dịch mới"),
      ),
      body: ListView(
        children: [
        Container(
          height: 130,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  child: Text("Số tiền", style: TextStyle(fontSize: 25),),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(
                        width: 20,
                        height: 20,
                        image: AssetImage('assets/img/bitcoin.png'),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text("500,000", style: TextStyle(
                              fontSize: 25,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            Text(" đ",style: TextStyle(fontSize: 20),)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ),
        SizedBox(height:10),
        Container(
        height: 300,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white),
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.category),
                title: Text("làm đẹp", style: TextStyle(fontSize: 20),),
                trailing: Icon(Icons.chevron_left),
              ),
              ListTile(
                leading: Icon(Icons.format_align_left),
                title: TextField(),
              ),
              ListTile(
                leading: Icon(Icons.calendar_today),
                title: Text("Thứ 6 - 27/12/2019", style: TextStyle(fontSize: 20),),
                trailing: Text("20:15", style:TextStyle(fontSize: 20)),
              ),
              ListTile(
                leading: Icon(Icons.account_balance),
                title: Text("ATM", style: TextStyle(fontSize: 20),),
                trailing: Icon(Icons.arrow_forward_ios),
              )
            ],
          ),
        ),
        SizedBox(height: 10,),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: ElevatedButton(
            child: Container(
              child: Row(
                mainAxisAlignment:  MainAxisAlignment.center,
                children: [
                  Icon(Icons.save_rounded),
                  Text("Ghi", style: TextStyle(fontSize: 20),)
                ],
              ),
            ),
            onPressed: () {},
          ),
        )
        ],
      ),
    );
  }
}
