import 'dart:html';

import 'package:billboard/billboard.dart';
import 'package:js/js_util.dart';

void main() {
  final container = document.querySelector('#chart');

  final data = Data()
    ..columns = [
      ['data1', 30, 200, 100, 400, 150, 250],
      ['data2', 50, 20, 10, 40, 15, 25]
    ]
    ..types = jsify({'data2': 'bar'})
    ..axes = jsify({'data2': 'y2'});

  final axis = Axis();
  axis.y = YAxisConfiguration()
    ..label = jsify({'text': 'Y Label', 'position': 'outer-middle'});

  axis.y2 = YAxisConfiguration()
    ..show = true
    ..label = jsify({'text': 'Y2 Label', 'position': 'outer-middle'});

  final configuration = ChartOptions()
    ..bindto = container
    ..data = data
    ..axis = axis;

  final chart = bb.generate(configuration);

  chart.load(Data()
    ..columns = [
      ['data1', 300, 100, 250, 150, 300, 150, 500],
      ['data2', 100, 200, 150, 50, 100, 250]
    ]);
}
