@JS()
library types.axis;

import "package:js/js.dart";
import "chart.dart" show Chart;

/// Copyright (c) 2017 ~ present NAVER Corp.
/// billboard.js project is licensed under the MIT license
@anonymous
@JS()
abstract class Axis {
  /// Switch x and y axis position.
  external bool get rotated;
  external set rotated(bool v);
  external XAxisConfiguration get x;
  external set x(XAxisConfiguration v);
  external YAxisConfiguration get y;
  external set y(YAxisConfiguration v);
  external YAxisConfigurationBase get y2;
  external set y2(YAxisConfigurationBase v);
  external factory Axis(
      {bool rotated,
      XAxisConfiguration x,
      YAxisConfiguration y,
      YAxisConfigurationBase y2});
}

@anonymous
@JS()
abstract class AxisConfigurationBase {
  /// Show or hide axis.
  external bool get show;
  external set show(bool v);

  /// Set additional axes for Axis
  external List<AxesConfiguration> get axes;
  external set axes(List<AxesConfiguration> v);
  external factory AxisConfigurationBase(
      {bool show, List<AxesConfiguration> axes});
}

@anonymous
@JS()
abstract class XAxisConfiguration implements AxisConfigurationBase {
  /// Set type of x axis (timeseries, category, indexed, log)
  /// NOTE:
  /// log type:
  /// - the x values specified by `data.x`(or by any equivalent option), must be exclusively-positive.
  /// - x axis min value should be >= 0.
  external String /*'category'|'indexed'|'log'|'timeseries'*/ get type;
  external set type(String /*'category'|'indexed'|'log'|'timeseries'*/ v);

  /// Set how to treat the timezone of x values.
  /// If true, treat x value as localtime. If false, convert to UTC internally.
  external bool get localtime;
  external set localtime(bool v);

  /// Set category names on category axis.
  /// This must be an array that includes category names in string.
  /// If category names are included in the date by data.x option, this is not required.
  external List<String> get categories;
  external set categories(List<String> v);
  external XTickConfiguration get tick;
  external set tick(XTickConfiguration v);

  /// Set max value of x axis range.
  /// When specified `max.value` is greater than the bound data value, setting `max.fit=true` will make x axis max to be fitted to the bound data max value.
  external dynamic
      /*String|num|DateTime|{
		fit?: boolean;
		value?: string | number | Date;
	}*/
      get max;
  external set max(
      dynamic
          /*String|num|DateTime|{
		fit?: boolean;
		value?: string | number | Date;
	}*/
          v);

  /// Set min value of x axis range.
  /// When specified `min.value` is lower than the bound data value, setting `min.fit=true` will make x axis min to be fitted to the bound data min value.
  external dynamic
      /*String|num|DateTime|{
		fit?: boolean;
		value?: string | number | Date;
	}*/
      get min;
  external set min(
      dynamic
          /*String|num|DateTime|{
		fit?: boolean;
		value?: string | number | Date;
	}*/
          v);

  /// Set padding for x axis.
  /// If this option is set, the range of x axis will increase/decrease according to the values.
  /// If no padding is needed in the ragen of x axis, 0 should be set. On category axis, this option will be ignored.
  external dynamic /*{
		left?: number;
		right?: number;
	}|num*/
      get padding;
  external set padding(
      dynamic
          /*{
		left?: number;
		right?: number;
	}|num*/
          v);

  /// Set height of x axis.
  /// The height of x axis can be set manually by this option.
  /// If you need more space for x axis, please use this option for that. The unit is pixel.
  external num get height;
  external set height(num v);

  /// Set default extent for subchart and zoom.
  /// This can be an array or function that returns an array.
  external dynamic /*List<num>|List<String>|List<num> Function(DateTime|String|List<num>, num Function(dynamic))*/ get extent;
  external set extent(
      dynamic /*List<num>|List<String>|List<num> Function(DateTime|String|List<num>, num Function(dynamic))*/ v);

  /// Set label on x axis.
  /// You can set x axis label and change its position by this option.
  /// string and object can be passed and we can change the poisiton by passing object that has position key.
  /// Available position differs according to the axis direction (vertical or horizontal). If string set, the position will be the default.
  /// - Valid horizontal positions: inner-right (Default), inner-center, inner-left, outer-right, outer-center, outer-left
  /// - Valid vertical positions: inner-top, inner-middle, inner-bottom, outer-top, outer-middle, outer-bottom
  external dynamic /*String|{ text: string; position: string }*/ get label;
  external set label(dynamic /*String|{ text: string; position: string }*/ v);

  /// Set clip-path attribute for x axis element.
  external bool get clipPath;
  external set clipPath(bool v);
  external factory XAxisConfiguration(
      {String /*'category'|'indexed'|'log'|'timeseries'*/ type,
      bool localtime,
      List<String> categories,
      XTickConfiguration tick,
      dynamic
          /*String|num|DateTime|{
		fit?: boolean;
		value?: string | number | Date;
	}*/
          max,
      dynamic
          /*String|num|DateTime|{
		fit?: boolean;
		value?: string | number | Date;
	}*/
          min,
      dynamic
          /*{
		left?: number;
		right?: number;
	}|num*/
          padding,
      num height,
      dynamic /*List<num>|List<String>|List<num> Function(DateTime|String|List<num>, num Function(dynamic))*/ extent,
      dynamic /*String|{ text: string; position: string }*/ label,
      bool clipPath,
      bool show,
      List<AxesConfiguration> axes});
}

@anonymous
@JS()
abstract class YAxisConfigurationBase implements AxisConfigurationBase {
  /// Show y axis inside of the chart.
  external bool get inner;
  external set inner(bool v);

  /// Set max value of y axis.
  external num get max;
  external set max(num v);

  /// Set min value of y axis.
  external num get min;
  external set min(num v);

  /// Change the direction of y axis.
  /// If true set, the direction will be from the top to the bottom.
  external bool get inverted;
  external set inverted(bool v);

  /// Set center value of y axis.
  external num get center;
  external set center(num v);

  /// Set label on y axis. This option works in the same way as axis.x.label.
  /// - Valid horizontal positions:
  /// - inner-right (Default), inner-center, inner-left, outer-right, outer-center, outer-left
  /// - Valid vertical positions:
  /// - inner-top, inner-middle, inner-bottom, outer-top, outer-middle, outer-bottom
  external dynamic /*String|{ text: string; position: string }*/ get label;
  external set label(dynamic /*String|{ text: string; position: string }*/ v);
  external YTickConfiguration get tick;
  external set tick(YTickConfiguration v);

  /// Set padding for y axis.
  /// You can set padding for y axis to create more space on the edge of the axis.
  /// This option accepts object and it can include top and bottom. top, bottom will be treated as pixels.
  external dynamic /*{
		top?: number;
		bottom?: number;
	}|num*/
      get padding;
  external set padding(
      dynamic
          /*{
		top?: number;
		bottom?: number;
	}|num*/
          v);

  /// Set default range of y axis.
  /// This option set the default value for y axis when there is no data on init.
  external List<num> get JS$default;
  external set JS$default(List<num> v);
  external factory YAxisConfigurationBase(
      {bool inner,
      num max,
      num min,
      bool inverted,
      num center,
      dynamic /*String|{ text: string; position: string }*/ label,
      YTickConfiguration tick,
      dynamic
          /*{
		top?: number;
		bottom?: number;
	}|num*/
          padding,
      bool show,
      List<AxesConfiguration> axes});
}

@anonymous
@JS()
abstract class YAxisConfiguration implements YAxisConfigurationBase {
  /// Set clip-path attribute for y axis element.
  external bool get clipPath;
  external set clipPath(bool v);
  external factory YAxisConfiguration(
      {bool clipPath,
      bool inner,
      num max,
      num min,
      bool inverted,
      num center,
      dynamic /*String|{ text: string; position: string }*/ label,
      YTickConfiguration tick,
      dynamic
          /*{
		top?: number;
		bottom?: number;
	}|num*/
          padding,
      bool show,
      List<AxesConfiguration> axes});
}

@anonymous
@JS()
abstract class XTickConfiguration {
  /// Centerise ticks on category axis
  external bool get centered;
  external set centered(bool v);

  /// A function to format tick value. Format string is also available for timeseries data.
  external dynamic /*String|String|num Function(num|DateTime)|String Function(num, String)*/ get format;
  external set format(
      dynamic /*String|String|num Function(num|DateTime)|String Function(num, String)*/ v);

  /// Setting for culling ticks.
  /// If true is set, the ticks will be culled, then only limitted tick text will be shown.
  /// This option does not hide the tick lines. If false is set, all of ticks will be shown.
  external dynamic
      /*bool|{
		/**
		 * The number of tick texts will be adjusted to less than this value.
		 */
		max?: number;
	}*/
      get culling;
  external set culling(
      dynamic
          /*bool|{
		/**
		 * The number of tick texts will be adjusted to less than this value.
		 */
		max?: number;
	}*/
          v);

  /// The number of x axis ticks to show.
  /// This option hides tick lines together with tick text. If this option is used on timeseries axis, the ticks position will be determined precisely and not nicely positioned (e.g. it will
  /// have rough second value).
  external num get count;
  external set count(num v);

  /// Fit x axis ticks.
  /// - true: ticks will be positioned nicely to have same intervals.
  /// - false: ticks will be positioned according to x value of the data points.
  external bool get fit;
  external set fit(bool v);

  /// Set the x values of ticks manually.
  /// If this option is provided, the position of the ticks will be determined based on those values.
  /// This option works with timeseries data and the x values will be parsed accoding to the type of the value and data.xFormat option.
  external dynamic /*List<num>|List<String>|List<num> Function()*/ get values;
  external set values(
      dynamic /*List<num>|List<String>|List<num> Function()*/ v);

  /// Rotate x axis tick text.
  /// - If you set negative value, it will rotate to opposite direction.
  /// - Applied when 'axis.rotated' option is 'false'.
  /// - As long as `axis_x_tick_fit` is set to `true` it will calculate an overflow for the y2 axis and add this value to the right padding.
  external num get rotate;
  external set rotate(num v);

  /// Rotate x axis tick text if there is not enough space for 'category' and 'timeseries' type axis.
  /// - **NOTE:** The conditions where `autorotate` is enabled are:
  /// - axis.x.type='category' or 'timeseries
  /// - axis.x.tick.multiline=false
  /// - axis.x.tick.culling=false
  /// - axis.x.tick.fit=true
  /// - **NOTE:** axis.x.tick.clippath=false is necessary for calculating the overflow padding between the end of x axis and the width of the SVG
  external bool get autorotate;
  external set autorotate(bool v);

  /// Show x axis outer tick.
  external bool get outer;
  external set outer(bool v);

  /// Set width of x axis tick.
  external num get width;
  external set width(num v);

  /// Set tick text to be multiline
  /// - NOTE: When x tick text contains \n, it's used as line break and 'axis.x.tick.width' option is ignored.
  external bool get multiline;
  external set multiline(bool v);

  /// Set to display system tooltip(via 'title' attribute) for tick text
  /// - NOTE: Only available for category axis type (axis.x.type='category')
  external bool get tooltip;
  external set tooltip(bool v);

  /// Show or hide tick line.
  external bool get show;
  external set show(bool v);
  external dynamic
      /*{
		/**
		 * Set the x Axis tick text's position relatively its original position
		 */
		position?: {
			x?: number;
			y?: number;
		};

		/**
		 * Show or hide tick text
		 */
		show?: boolean;
	}*/
      get text;
  external set text(
      dynamic
          /*{
		/**
		 * Set the x Axis tick text's position relatively its original position
		 */
		position?: {
			x?: number;
			y?: number;
		};

		/**
		 * Show or hide tick text
		 */
		show?: boolean;
	}*/
          v);

  /// Set axis type (timeseries, category, indexed, log)
  /// NOTE:
  /// log type:
  /// - the bound data values must be exclusively-positive.
  /// - axis min value should be >= 0.
  /// - `data.groups`(stacked data) option aren't supported.
  external String /*'indexed'|'log'|'timeseries'*/ get type;
  external set type(String /*'indexed'|'log'|'timeseries'*/ v);
  external factory XTickConfiguration(
      {bool centered,
      dynamic /*String|String|num Function(num|DateTime)|String Function(num, String)*/ format,
      dynamic
          /*bool|{
		/**
		 * The number of tick texts will be adjusted to less than this value.
		 */
		max?: number;
	}*/
          culling,
      num count,
      bool fit,
      dynamic /*List<num>|List<String>|List<num> Function()*/ values,
      num rotate,
      bool autorotate,
      bool outer,
      num width,
      bool multiline,
      bool tooltip,
      bool show,
      dynamic
          /*{
		/**
		 * Set the x Axis tick text's position relatively its original position
		 */
		position?: {
			x?: number;
			y?: number;
		};

		/**
		 * Show or hide tick text
		 */
		show?: boolean;
	}*/
          text,
      String /*'indexed'|'log'|'timeseries'*/ type});
}

@anonymous
@JS()
abstract class YTickConfiguration {
  external factory YTickConfiguration({int count, dynamic format});

  /// Show or hide outer tick.
  external bool get outer;
  external set outer(bool v);

  /// Set the y values of ticks manually.
  external dynamic /*List<num>|List<num> Function()*/ get values;
  external set values(dynamic /*List<num>|List<num> Function()*/ v);

  /// Rotate y(or y2) axis tick text.
  /// - If you set negative value, it will rotate to opposite direction.
  /// - Applied when 'axis.rotated' option is 'true'.
  external num get rotate;
  external set rotate(num v);

  /// The number of y axis ticks to show.
  /// The position of the ticks will be calculated precisely, so the values on the ticks will not be rounded nicely.
  /// In the case, axis.y.tick.format or axis.y.tick.values will be helpful.
  external num get count;
  external set count(num v);

  /// Set formatter for y axis tick text.
  /// This option accepts d3.format object as well as a function you define.
  external String format(/*Chart this*/ num x);

  /// Setting for culling ticks.
  /// If true is set, the ticks will be culled, then only limitted tick text will be shown.
  /// This option does not hide the tick lines. If false is set, all of ticks will be shown.
  external dynamic
      /*bool|{
		/**
		 * The number of tick texts will be adjusted to less than this value.
		 */
		max?: number;
	}*/
      get culling;
  external set culling(
      dynamic
          /*bool|{
		/**
		 * The number of tick texts will be adjusted to less than this value.
		 */
		max?: number;
	}*/
          v);

  /// Set axis tick step(interval) size.
  /// - **NOTE:** Will be ignored if `axis[y|y2].tick.count` or `axis[y|y2].tick.values` options are set.
  external num get stepSize;
  external set stepSize(num v);

  /// Show or hide axis tick line.
  external bool get show;
  external set show(bool v);
  external dynamic
      /*{
		/**
		 * Set the x Axis tick text's position relatively its original position
		 */
		position?: {
			x?: number;
			y?: number;
		};

		/**
		 * Show or hide axis tick text.
		 */
		show?: boolean;
	}*/
      get text;
  external set text(
      dynamic
          /*{
		/**
		 * Set the x Axis tick text's position relatively its original position
		 */
		position?: {
			x?: number;
			y?: number;
		};

		/**
		 * Show or hide axis tick text.
		 */
		show?: boolean;
	}*/
          v);
}

@anonymous
@JS()
abstract class AxesConfiguration {
  /// Set the axis domain value
  /// if set, will not be correlated with the main x Axis domain value
  external List<num> /*Tuple of <num,num>*/ get domain;
  external set domain(List<num> /*Tuple of <num,num>*/ v);

  /// Set axis tick options
  external dynamic
      /*{
		/**
		 * Show outer tick
		 */
		outer?: boolean;

		/**
		 * Set formatter for tick text
		 */
		format?: (this: Chart, x: string) => string;

		/**
		 * Set the number of y axis ticks
		 */
		count?: number;

		/**
		 * Set tick values manually
		 */
		values?: number|string|Date[];
	}*/
      get tick;
  external set tick(
      dynamic
          /*{
		/**
		 * Show outer tick
		 */
		outer?: boolean;

		/**
		 * Set formatter for tick text
		 */
		format?: (this: Chart, x: string) => string;

		/**
		 * Set the number of y axis ticks
		 */
		count?: number;

		/**
		 * Set tick values manually
		 */
		values?: number|string|Date[];
	}*/
          v);
  external factory AxesConfiguration(
      {List<num> /*Tuple of <num,num>*/ domain,
      dynamic
          /*{
		/**
		 * Show outer tick
		 */
		outer?: boolean;

		/**
		 * Set formatter for tick text
		 */
		format?: (this: Chart, x: string) => string;

		/**
		 * Set the number of y axis ticks
		 */
		count?: number;

		/**
		 * Set tick values manually
		 */
		values?: number|string|Date[];
	}*/
          tick});
}
