@JS()
library types.types;

import "package:js/js.dart";

/// Copyright (c) 2017 ~ present NAVER Corp.
/// billboard.js project is licensed under the MIT license
/*export type PrimitiveArray = Array<string | boolean | number | Date | null>;*/
/*export type ArrayOrString = string[] | string;*/
/*export type d3Selection = Selection<any, any, any, any>;*/
/*export type ChartTypes = "area"
	| "area-line-range"
	| "area-spline"
	| "area-spline-range"
	| "area-step"
	| "bar"
	| "bubble"
	| "donut"
	| "gauge"
	| "line"
	| "pie"
	| "radar"
	| "scatter"
	| "spline"
	| "step";
*/
/*export type GaugeTypes = "single" | "multi";*/
/*export type AxisType = "x" | "y" | "y2";*/
@anonymous
@JS()
abstract class TargetIds {
  external dynamic /*List<String>|String*/ get ids;
  external set ids(dynamic /*List<String>|String*/ v);
  external factory TargetIds({dynamic /*List<String>|String*/ ids});
}

@anonymous
@JS()
abstract class DataRow {
  external String get id;
  external set id(String v);
  external String get id_org;
  external set id_org(String v);
  external List<DataItem> get values;
  external set values(List<DataItem> v);
  external factory DataRow({String id, String id_org, List<DataItem> values});
}

@anonymous
@JS()
abstract class DataItem {
  external String get id;
  external set id(String v);
  external num get x;
  external set x(num v);
  external num get value;
  external set value(num v);
  external num get index;
  external set index(num v);
  external String get name;
  external set name(String v);
  external num get ratio;
  external set ratio(num v);
  external factory DataItem(
      {String id, num x, num value, num index, String name, num ratio});
}

/*export type DataArray = DataRow[];*/
@anonymous
@JS()
abstract class RegionsType {
  /* Index signature is not yet supported by JavaScript interop. */
}
