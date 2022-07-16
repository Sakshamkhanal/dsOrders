import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';


class SummaryGraph extends StatefulWidget {


  @override
  State<SummaryGraph> createState() => _SummaryGraphState();
}

class _SummaryGraphState extends State<SummaryGraph> {

  late List<BARData> _chardata;
  
  @override
  void initState()
  {
    _chardata = getChartData();
    super.initState();
  }
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child:Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: Colors.transparent,
        ),
        child: SfCircularChart(
          legend: 
          Legend(isVisible:true,overflowMode: LegendItemOverflowMode.wrap),
          series: <CircularSeries>[
            RadialBarSeries<BARData,String>(
              dataSource: _chardata,
              xValueMapper: (BARData data,_)=> data.items,
              yValueMapper: (BARData data,_)=> data.orders,
              dataLabelSettings: DataLabelSettings(isVisible: true),
              maximumValue: 50,
            )
          ],
        ),
      ) ,
    );
  }

List<BARData> getChartData()
{
  final List<BARData> chartData =
  [
    BARData('item1',50),
    BARData('item2',25),
    BARData('item3',25),
    BARData('item4',25)
  ];
  return  chartData;
}
}


class BARData{
  BARData(this.items,this.orders);
  final String items;
  final int orders;
}
