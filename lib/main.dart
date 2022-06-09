
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wallet_app_money/bieu_do.dart';
import 'package:wallet_app_money/cac_giao_dich.dart';
import 'package:wallet_app_money/cac_giao_dich_moi.dart';
import 'package:wallet_app_money/cai_dat.dart';
import 'package:wallet_app_money/danh_sach_tai_khoan.dart';
import 'package:wallet_app_money/icons/app_icons_icons.dart';
import 'package:wallet_app_money/tong_quan.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home:  MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int currentTab =0;
  String currentTitle = "Tổng Quan";
  final List<Widget> screens = [
    TongQuan(),
    CacGiaoDich(),
    DanhSachTaiKhoan(),
    BieuDo(),
    CaiDat()
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = TongQuan();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new Drawer(
        child: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 40, horizontal: 10),
                width: 400,
                height: 260,
                color: Colors.amber[600],
                alignment: Alignment.topLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/img/avt-cute-9.jpg'),
                      radius: 50,
                    ),
                    SizedBox(height: 20,),
                    Text('Nguyễn Anh Tú',
                      style: TextStyle(fontSize: 20),),
                    SizedBox(height: 10,),
                    Text('tuna1.dev@gmail.com',
                        style: TextStyle(fontSize: 20)),
                  ],
                ),
              ),
              ListTile(
                onTap: () {
                  setState(() {
                    currentScreen = TongQuan();
                    currentTab = 0;
                    currentTitle = "Tổng Quan";
                  });
                },
                leading: Icon(Icons.home,
                    color: currentTab == 0 ? Colors.amber[600] : Colors.grey[400]),
                title: Text("Tổng Quan",
                  style: TextStyle(fontSize: 20,
                      color: currentTab == 0 ? Colors.amber[600] : Colors.grey[400]),),
              ),
              ListTile(
                onTap: () {
                  setState(() {
                    currentScreen = CacGiaoDich();
                    currentTab = 1;
                    currentTitle = "Các giao dịch";
                  });
                },
                leading: Icon(AppIcons.account_balance_wallet,
                    color: currentTab == 1 ? Colors.amber[600] : Colors.grey[400]),
                title: Text("Các giao dịch",
                  style: TextStyle(fontSize: 20,
                      color: currentTab == 1 ? Colors.amber[600] : Colors.grey[400]),),
              ),
              ListTile(
                onTap: () {
                  setState(() {
                    currentScreen = DanhSachTaiKhoan();
                    currentTab = 2;
                    currentTitle = "Danh sách tài khoản";
                  });
                },
                leading: Icon(Icons.list,
                    color: currentTab == 2 ? Colors.amber[600] : Colors.grey[400]),
                title: Text("Danh sách tài khoản",
                  style: TextStyle(fontSize: 20,
                      color: currentTab == 2 ? Colors.amber[600] : Colors.grey[400]),),
              ),
              ListTile(
                onTap: () {
                  setState(() {
                    currentScreen = BieuDo();
                    currentTab = 3;
                    currentTitle = "Biểu đồ";
                  });
                },
                leading: Icon(Icons.pie_chart,
                    color: currentTab == 3 ? Colors.amber[600] : Colors.grey[400]),
                title: Text("Biểu đồ",
                  style: TextStyle(fontSize: 20,
                      color: currentTab == 3 ? Colors.amber[600] : Colors.grey[400]),),
              ),
              ListTile(
                onTap: () {
                  setState(() {
                    currentScreen = CaiDat();
                    currentTab = 4;
                    currentTitle = "Cài đặt";
                  });
                },
                leading: Icon(Icons.settings,
                    color: currentTab == 4 ? Colors.amber[600] : Colors.grey[400]),
                title: Text("Cài đặt",
                  style: TextStyle(fontSize: 20,
                      color: currentTab == 4 ? Colors.amber[600] : Colors.grey[400]),),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(currentTitle),
            Container(
              child:
                currentTab == 1
                ? IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    // setState(() {
                    //   currentTab = 5;
                    //   currentScreen = CacGiaoDichMoi();
                    //   currentTitle = "Các giao dịch mới";
                    // });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CacGiaoDichMoi(),
                      ),
                    );
                    }
                  )
                : Container(width: 10,),
            )
          ],
          )
        ),
      body: PageStorage(
        child: currentScreen,
          bucket: bucket,
        ),
      floatingActionButton: FloatingActionButton(

        backgroundColor: Colors.orange,
        onPressed:(){
          // setState(() {
          //   currentTab = 5;
          //   currentScreen = CacGiaoDichMoi();
          //   currentTitle = "Các giao dịch mới";
          // });
          Navigator.push(
          context,
            MaterialPageRoute(
              builder: (context) => CacGiaoDichMoi(),
            ),
          );
        },
        tooltip: 'Increment',
        child: Icon(Icons.add,),
        ),
      );
    }
  }
