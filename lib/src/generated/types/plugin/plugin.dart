@JS()
library types.plugin.plugin;

import "package:js/js.dart";

/// Copyright (c) 2017 ~ present NAVER Corp.
/// billboard.js project is licensed under the MIT license
@anonymous
@JS()
abstract class Plugin {
  /// Version info string for plugin
  external String get version;
  external set version(String v);

  /// Lifecycle hook for 'beforeInit' phase.
  external void Function() get $beforeInit;
  external set $beforeInit(void Function() v);

  /// Lifecycle hook for 'init' phase.
  external void Function() get $init;
  external set $init(void Function() v);

  /// Lifecycle hook for 'afterInit' phase.
  external void Function() get $afterInit;
  external set $afterInit(void Function() v);

  /// Lifecycle hook for 'redraw' phase.
  external void Function() get $redraw;
  external set $redraw(void Function() v);

  /// Lifecycle hook for 'willDestroy' phase.
  external void Function() get $willDestroy;
  external set $willDestroy(void Function() v);
  external factory Plugin(
      {String version,
      void Function() $beforeInit,
      void Function() $init,
      void Function() $afterInit,
      void Function() $redraw,
      void Function() $willDestroy});
}
