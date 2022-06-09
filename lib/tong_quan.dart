

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app_money/icons/app_icons_icons.dart';

class TongQuan extends StatefulWidget {
  const TongQuan({Key? key}) : super(key: key);

  @override
  State<TongQuan> createState() => _TongQuanState();
}

class _TongQuanState extends State<TongQuan> {

  double value = 400;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(

        child: ListView(
          children: <Widget>[
            Container(
              height: 100,
              color: Colors.orange,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          width: 40,
                          height: 40,
                          image: AssetImage('assets/img/bitcoin.png'),
                        ),
                        SizedBox(width: 30),
                        Text(
                          '500,000',
                          style: TextStyle(
                            color: Colors.yellow[600],
                            fontSize: 30,
                          ),
                        ),
                        SizedBox(width: 50),
                        Icon(
                          AppIcons.right_open,
                          color: Colors.yellow[600],
                          size: 20,
                        ),
                      ],
                    )
                ),
              ),
            ),
            Container(
              height: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)),
                  color: Colors.white),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                          padding: EdgeInsets.symmetric(vertical: 45, horizontal: 10),
                          child:Column(
                            children: [
                              Text(
                                'Tình hình thu chi',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(height: 5,),
                              Container(
                                height: 200,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 150,
                                      color: Colors.red,
                                    ),
                                    SizedBox(width: 15,),
                                    Container(
                                      width: 50,
                                      height: 20,
                                      color: Colors.green,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(height:20),
                            Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  'Tháng này',
                                  style: TextStyle(fontSize: 20),
                                )
                            ),
                            SizedBox(height: 40),
                            Container(
                              width: 215,
                              height: 100,
                              color: Colors.white,
                              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Row(
                                          children: [
                                            Icon(AppIcons.fiber_manual_record,
                                              color: Colors.green,
                                              size: 15,),
                                            SizedBox(width: 10,),
                                            Text(
                                              'Thu',
                                              style: TextStyle(
                                                fontSize: 20,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Text(
                                        '0 đ',
                                        style: TextStyle(color: Colors.green, fontSize: 20),
                                      )
                                    ],
                                  ),
                                  SizedBox(height:15),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            Icon(AppIcons.fiber_manual_record,
                                              color: Colors.red,
                                              size: 15,),
                                            SizedBox(width: 10,),
                                            Text(
                                              'Chi',
                                              style: TextStyle(
                                                fontSize: 20,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        '500,000 đ',
                                        style: TextStyle(color: Colors.red, fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 215,
                              height: 50,
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child:Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child:Text(
                                      'Tích lũy',
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      '- 500,000 đ',
                                      style: TextStyle(color: Colors.black, fontSize: 20),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: 150,
                              height:40,
                              child: ListTile(
                                title: Text("Xem thêm",style: TextStyle(color: Colors.lightBlue, fontSize: 18),),
                                trailing: Icon(Icons.arrow_forward_ios, color: Colors.lightBlue,size: 20,),
                              )
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,),
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Hạn mức chi',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          Container(
                            child: IconButton(
                              icon: Icon(Icons.settings),
                              onPressed: (){},
                            ),
                          ),
                        ],
                      )
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Image(
                                  width: 50,
                                  height: 50,
                                  image: AssetImage('assets/img/hamb_water.png',),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Hàng tháng',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      Text(
                                        '1/12-31/12',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Text(
                              '4,000,000 đ',
                              style: TextStyle(color: Colors.black, fontSize: 20),
                            ),
                          ),
                        ],
                      )
                  ),
                  SizedBox(height: 10,),
                  Container(
                    child: SliderTheme(
                      data: SliderThemeData(
                        inactiveTrackColor: Colors.orangeAccent.shade200,
                        activeTrackColor: Colors.orangeAccent,
                      ),
                      child: Slider(
                        value: value,
                        min:0,
                        max: 500,
                        label: 'hôm nay',
                        onChanged: (value) => setState(() {
                          this.value =value;
                        }
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.symmetric( horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text('Còn 4 ngày',
                              style: TextStyle(fontSize: 20)
                          ),
                        ),
                        Container(
                          child: Text('3,350,000',
                            style: TextStyle(fontSize: 20),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,),
            ),
          ],
        ),
      ),
    );
  }
}
