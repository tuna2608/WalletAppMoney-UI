import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app_money/icons/app_icons_icons.dart';
import 'package:wallet_app_money/widget/giao_dich_hom_nay.dart';
import 'package:wallet_app_money/widget/giao_dich_hom_qua.dart';
import 'package:wallet_app_money/widget/space_screen.dart';

class CacGiaoDich extends StatefulWidget {
  const CacGiaoDich({Key? key}) : super(key: key);

  @override
  State<CacGiaoDich> createState() => _CacGiaoDichState();
}

class _CacGiaoDichState extends State<CacGiaoDich> {
  int currentTab = 0;
  double currentHeight1 = 96;
  double currentHeight2 = 96;
  final List<Widget> screens = [
    GiaoDichHomNay(),
    SpaceScreen(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen1 = SpaceScreen();
  Widget currentScreen2 = SpaceScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 100,
              color: Colors.grey[100],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric( horizontal: 10),
                    child: Row(
                      children: [
                        Text("Tài khoản:", style: TextStyle(fontSize: 20,),),
                        SizedBox(width: 10),
                        Text("Tất cả", style:  TextStyle(fontSize: 20),)
                        ]
                      )
                    ),
                  Container(
                    width: 125,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all( Radius.circular(5)),
                        color: Colors.orange[100],),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Tìm ngày", style: TextStyle(fontSize: 15),),
                        Icon(Icons.edit),
                      ],
                    )
                  )
                  ],
                ),
              ),
            Container(
              height: currentHeight1,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)),
                  color: Colors.white),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Column(
                  children: [
                    ListTile(
                      onTap: (){
                        if (currentTab == 0)
                        {
                          setState(() {
                            currentHeight1 = 220;
                            currentScreen1 = GiaoDichHomNay();
                            currentTab = 1;
                          });
                        }
                        else {
                          setState(() {
                            currentHeight1 = 96;
                            currentScreen1 = SpaceScreen();
                            currentTab = 0;
                          });
                        }
                      },
                      leading: Column(
                        children: [
                          Text("Hôm nay", style: TextStyle(fontSize: 20),),
                          Text("27/12/2019", style: TextStyle(fontSize: 15),)
                        ],
                      ),
                      trailing:
                      currentTab == 1
                          ? Icon( Icons.expand_less, color: Colors.orange)
                          : Icon( Icons.expand_more, color: Colors.black),
                    ),
                    PageStorage(
                      child: currentScreen1,
                      bucket: bucket,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: currentHeight2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Column(
                  children: [
                    ListTile(
                      onTap: (){
                        if (currentTab == 0)
                        {
                          setState(() {
                            currentHeight2 = 220;
                            currentScreen2 = GiaoDichHomQua();
                            currentTab = 2;
                          });
                        }
                        else {
                          setState(() {
                            currentHeight2 = 96;
                            currentScreen2 = SpaceScreen();
                            currentTab = 0;
                          });
                        }
                      },
                      leading: Column(
                        children: [
                          Text("Hôm qua", style: TextStyle(fontSize: 20),),
                          Text("26/12/2019", style: TextStyle(fontSize: 15),)
                        ],
                      ),
                      trailing:
                      currentTab == 2
                          ? Icon( Icons.expand_less, color: Colors.orange)
                          : Icon( Icons.expand_more, color: Colors.black),
                    ),
                    PageStorage(
                      child: currentScreen2,
                      bucket: bucket,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
