// import 'dart:convert';

// import 'package:add_feature_practice/features/bar_chart/domain/entities/data_item.dart';
// import 'package:add_feature_practice/features/bar_chart/domain/usecases/release_dropdown.dart';
// import 'package:add_feature_practice/features/bar_chart/domain/usecases/xaxis-dropdown.dart';
// import 'package:flutter/material.dart';

// import 'package:http/http.dart' as http;

// import 'package:add_feature_practice/core/errors/failures.dart';
// import 'package:add_feature_practice/core/helpers/usecases.dart';
// import 'package:add_feature_practice/features/bar_chart/domain/entities/data_set.dart';
// import 'package:add_feature_practice/features/bar_chart/domain/repositories/get_data_set_repository.dart';
// import 'package:dartz/dartz.dart';
// import 'package:charts_flutter/flutter.dart' as charts;

// import '../../data/response_model.dart';
// import '../entities/data_series.dart';
// import 'phase_dropdown.dart';

// class GetDataSet implements UseCase<DataSet, NoParams> {
//   final DataSetRepository repository;

//   GetDataSet(this.repository);

//   @override
//   Future<Either<Failure, DataSet>> call(NoParams params) async {
//     return await repository.getDataSet();
//   }

// //Makes the API call and takes whatever json response comes back, and parses it.
//   Future<Map<String, dynamic>> _getDataSet() async {
//     final response = await http.post(
//       Uri.parse(
//           'http://plzntpvtaexc1:5000/feta/zephyr/project/executions/chart'),
//       headers: <String, String>{
//         'Content-Type': 'application/json; charset=UTF-8',
//       },
//       body: jsonEncode(<String, String>{
//         "project": "Mission Impossible-0.4.0-execution",
//         "releaseName": "All",
//         "cycleName": "All",
//         "phaseName": "All",
//         "xaxis": "Project"
//       }),
//     );

//     if (response.statusCode == 200) {
//       // If the server did return a 201 CREATED response,
//       // then parse the JSON.
//       // ignore: avoid_print
//       Map<String, dynamic> results = jsonDecode(response.body);
//       print("Winner winner chicken dinner");
//       return results;
//     } else {
//       // If the server did not return a 201 CREATED response,
//       // then throw an exception.
//       throw Exception('Failed to retreive data set.');
//     }
//   }

//   void Testing() {
//     DataSet dataSet = DataSet(
//       xaxis: "Executions",
//       yaxis: "Time (minutes)",
//       dataSeries: [
//         DataSeries(
//           id: "Test",
//           dataItems: [
//             DataItem(
//               xaxis: 1,
//               yaxis: 2,
//             ),
//             DataItem(
//               xaxis: 1,
//               yaxis: 5,
//             )
//           ],
//         ),
//       ],
//     );

//     //List<charts.Series<DataItem, String>> chartDataSeries = dataSet.dataSeries[0];
//     // Can't make this work.  Quarter_Target 45-51 is converting an array of ExecutionStatusItems
//     // into a List<charts.Series<ExecutionStatusItem, String>>.  I don't know how.  We need the same
//     // for each dataItem in each dataSeries.
//   }

//   Future<DataSet> _returnDataSet() async {
//     var json = await _getDataSet();

//     DataSet dataSet = DataSet(
//       xaxis: json['results.xAxis'],
//       yaxis: json['results.yAxis'],
//       dataSeries: [
//         json['results.dataSeries'].forEach(
//           (dataSeries) => DataSeries(
//             id: dataSeries["id"],
//             dataItems: [
//               dataSeries["dataItem"].forEach(
//                 (dataItem) => DataItem(
//                   xaxis: dataItem["xAxis"],
//                   yaxis: dataItem["yAxis"],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );

//     return dataSet;
//   }

//   Future<void> _showEditChartDialogue() async {
//     return showDialog<void>(
//         context: context,
//         builder: (BuildContext context) {
//           return AlertDialog(
//             title: Text("Edit Chart"),
//             actions: [
//               TextButton.icon(
//                   onPressed: () {
//                     Navigator.of(context).pop();
//                     chartData = _getDataSet(); //raw json response
//                     print("I think its making a call");
//                     List<charts.Series<DataItem, String>>
//                         chartDataList = [
//                       chartData['results'].forEach(
//                         (item) => ExecutionStatusItem(
//                           executionStatus: item["executionStatus"],
//                           executionCount: item["count(executionStatus)"],
//                         ),
//                       )
//                     ];
//                     charts.BarChart(chartDataList);
//                   },
//                   icon: Icon(Icons.save),
//                   label: Text("Save"))
//             ],
//             content: Row(children: [
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: ReleaseDropdown(releaseList: _futureResult.results),
//               ),
//               // Padding(
//               //   padding: const EdgeInsets.all(8.0),
//               //   child: CycleDropDown(),
//               // ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: PhaseDropDown(),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: XAxisDropdown(),
//               ),
//             ]),
//           );
//         });
//   }

//   Future<Response> _getReleaseDropdownData() async {
//     final response = await http.post(
//       Uri.parse(
//           'http://plzntpvtaexc1:5000/feta/zephyr/project/executions/releases'),
//       headers: <String, String>{
//         'Content-Type': 'application/json; charset=UTF-8',
//       },
//       body: jsonEncode(<String, String>{
//         "project": "Mission Impossible-0.4.0-execution",
//       }),
//     );

//     if (response.statusCode == 200) {
//       // If the server did return a 201 CREATED response,
//       // then parse the JSON.
//       // ignore: avoid_print
//       print("Winner winner chicken dinner");
//       return Response.fromJson(jsonDecode(response.body));
//     } else {
//       // If the server did not return a 201 CREATED response,
//       // then throw an exception.
//       throw Exception('Failed to create album.');
//     }
//   }
// }
