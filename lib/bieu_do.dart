
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:wallet_app_money/icons/app_icons_icons.dart';
import 'package:wallet_app_money/widget/pie_chart.dart';

class BieuDo extends StatefulWidget {
  const BieuDo({Key? key}) : super(key: key);

  @override
  State<BieuDo> createState() => _BieuDoState();
}

class _BieuDoState extends State<BieuDo> {

  Map<String, double> dataMap = {
    "nhà cửa" : 500,
    "làm đẹp" : 150,
};

  List<Color> colorList = [
    const Color(0xffFF0000),
    const Color(0xffFF66FF),
  ];

  double value = 400;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Center(
            child: ListView(
                children: <Widget>[
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)),
                        color: Colors.white),
                    child: Column (
                      children: [
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
                                              style: TextStyle(fontSize: 15,),
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
                                this.value = value;
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
                        ),
                      ],
                    )
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 500,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text("Biểu đồ chi", style: TextStyle(fontSize: 30),),
                              ),
                              Container(
                                child: Text("Tháng này", style: TextStyle(fontSize: 25),),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 300,
                          height: 300,
                          child: PieChart(
                            chartLegendSpacing: 70,
                            dataMap: dataMap,
                            colorList: colorList,
                            chartType: ChartType.ring,
                            ringStrokeWidth: 90,
                            chartRadius: MediaQuery.of(context).size.height / 2,
                            chartValuesOptions: ChartValuesOptions(
                              showChartValues: true,
                              showChartValuesOutside: true,
                              showChartValueBackground: false,
                              decimalPlaces: 0,
                              chartValueStyle: TextStyle(fontSize: 30, color: Colors.black),
                            ),
                            legendOptions: LegendOptions(
                              legendPosition: LegendPosition.top,
                              legendTextStyle: TextStyle(fontSize: 20),
                              showLegendsInRow: true,
                            ),
                          ),
                        ),
                        SizedBox(height: 60,),
                        Container(
                          child: Text("Đơn vị: nghìn", style: TextStyle(fontSize: 20),)
                        )
                      ],
                    ),
                  ),
                  SizedBox(height:10),
                ]
            )
        )
    );
  }

}

