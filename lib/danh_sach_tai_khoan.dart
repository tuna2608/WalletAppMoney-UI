import 'package:flutter/material.dart';
import 'package:wallet_app_money/icons/app_icons_icons.dart';
import 'package:wallet_app_money/widget/space_screen.dart';
import 'package:wallet_app_money/widget/dang_su_dung.dart';
import 'package:wallet_app_money/widget/tai_khoan_tiet_kiem.dart';

class DanhSachTaiKhoan extends StatefulWidget {
  const DanhSachTaiKhoan({Key? key}) : super(key: key);

  @override
  State<DanhSachTaiKhoan> createState() => _DanhSachTaiKhoanState();
}

class _DanhSachTaiKhoanState extends State<DanhSachTaiKhoan> {
  int currentTab = 0;
  double currentHeight1 = 96;
  double currentHeight2 = 96;
  final List<Widget> screens = [
    DangSuDung(),
    SpaceScreen(),
    TaiKhoanTietKiem(),
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
                children: <Widget>[
                  Container(
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text("Tổng: 650,000 đ",style: TextStyle(fontSize: 20),),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: currentHeight1,
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
                                  currentHeight1 = 300;
                                  currentScreen1 = DangSuDung();
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
                            leading: Text("Đang sử dụng (0 đ)", style: TextStyle(fontSize: 20),),

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
                                  currentHeight2 = 300;
                                  currentScreen2 = TaiKhoanTietKiem();
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
                            leading: Text("Tài khoản tiết kiệm (0đ)", style: TextStyle(fontSize: 20),),

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
                ]
            )
        )
    );
  }
}
