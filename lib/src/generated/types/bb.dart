@JS()
library types.bb;

import "package:js/js.dart";
import "chart.dart" show Chart;
import "options.dart" show ChartOptions;

/// Copyright (c) 2017 ~ present NAVER Corp.
/// billboard.js project is licensed under the MIT license
@anonymous
@JS()
abstract class Billboard {
  /// Generate chart
  external Chart generate(ChartOptions options);

  /// Set or get global default options.
  /// - **NOTE:**
  /// - The options values settings are valid within page context only.
  /// - If is called multiple times, will override the last value.
  external ChartOptions defaults(ChartOptions options);

  /// Version information
  external String get version;
  external set version(String v);

  /// An array containing instance created
  external List<Chart> get instance;
  external set instance(List<Chart> v);
}

@JS()
external Billboard get bb;

/// shape modules
@JS()
external String /*'area'*/ area();
@JS()
external String /*'area-line-range'*/ areaLineRange();
@JS()
external String /*'area-spline'*/ areaSpline();
@JS()
external String /*'area-spline-range'*/ areaSplineRange();
@JS()
external String /*'area-step'*/ areaStep();
@JS()
external String /*'bar'*/ bar();
@JS()
external String /*'bubble'*/ bubble();
@JS()
external String /*'donut'*/ donut();
@JS()
external String /*'gauge'*/ gauge();
@JS()
external String /*'line'*/ line();
@JS()
external String /*'pie'*/ pie();
@JS()
external String /*'radar'*/ radar();
@JS()
external String /*'scatter'*/ scatter();
@JS()
external String /*'spline'*/ spline();
@JS()
external String /*'step'*/ step();

/// interaction modules
@JS()
external bool /*true*/ selection();
@JS()
external bool /*true*/ subchart();
@JS()
external bool /*true*/ zoom();
