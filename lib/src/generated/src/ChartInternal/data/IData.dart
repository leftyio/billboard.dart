@JS()
library src.ChartInternal.data.IData;

import "package:js/js.dart";

/// Copyright (c) 2017 ~ present NAVER Corp.
/// billboard.js project is licensed under the MIT license
@anonymous
@JS()
abstract class IDataRow {
  external num get x;
  external set x(num v);
  external num get value;
  external set value(num v);
  external String get id;
  external set id(String v);
  external num get index;
  external set index(num v);
  external factory IDataRow({num x, num value, String id, num index});
}

@anonymous
@JS()
abstract class IData {
  external String get id;
  external set id(String v);
  external String get id_org;
  external set id_org(String v);
  external List<IDataRow> get values;
  external set values(List<IDataRow> v);
  external factory IData({String id, String id_org, List<IDataRow> values});
}
