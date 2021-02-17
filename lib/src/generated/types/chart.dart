@JS()
library types.chart;

import "package:js/js.dart";
import "types.dart" show TargetIds;
import "options.dart" show Data;

/// Copyright (c) 2017 ~ present NAVER Corp.
/// billboard.js project is licensed under the MIT license
@anonymous
@JS()
abstract class Chart {
  external dynamic
      /*{
		/**
		 * Wrapper element
		 */
		chart: d3Selection;

		/**
		 * Main svg element
		 */
		svg: d3Selection;

		/**
		 * Definition element
		 */
		defs: d3Selection;

		/**
		 * Main grouping element
		 */
		main: d3Selection;

		/**
		 * Tooltip element
		 */
		tooltip: d3Selection;

		/**
		 * Legend element
		 */
		legend: d3Selection;

		/**
		 * Title element
		 */
		title: d3Selection;

		/**
		 * Grid element
		 */
		grid: d3Selection;

		/**
		 * Arc element
		 */
		arc: d3Selection;

		bar: {
			/**
			 * Bar elements
			 */
			bars: d3Selection;
		};

		line: {
			/**
			 * Line elements
			 */
			lines: d3Selection;

			/**
			 * Areas elements
			 */
			areas: d3Selection;

			/**
			 * Data point circle elements
			 */
			circles: d3Selection;
		};

		text: {
			/**
			 * Data label text elements
			 */
			texts: d3Selection;
		};
	}*/
      get $;
  external set $(
      dynamic
          /*{
		/**
		 * Wrapper element
		 */
		chart: d3Selection;

		/**
		 * Main svg element
		 */
		svg: d3Selection;

		/**
		 * Definition element
		 */
		defs: d3Selection;

		/**
		 * Main grouping element
		 */
		main: d3Selection;

		/**
		 * Tooltip element
		 */
		tooltip: d3Selection;

		/**
		 * Legend element
		 */
		legend: d3Selection;

		/**
		 * Title element
		 */
		title: d3Selection;

		/**
		 * Grid element
		 */
		grid: d3Selection;

		/**
		 * Arc element
		 */
		arc: d3Selection;

		bar: {
			/**
			 * Bar elements
			 */
			bars: d3Selection;
		};

		line: {
			/**
			 * Line elements
			 */
			lines: d3Selection;

			/**
			 * Areas elements
			 */
			areas: d3Selection;

			/**
			 * Data point circle elements
			 */
			circles: d3Selection;
		};

		text: {
			/**
			 * Data label text elements
			 */
			texts: d3Selection;
		};
	}*/
          v);

  /// Plugin instance array
  external List<dynamic> get plugins;
  external set plugins(List<dynamic> v);
  external GridOperations get xgrids;
  external set xgrids(GridOperations v);
  external GridOperations get ygrids;
  external set ygrids(GridOperations v);
  external dynamic
      /*{
		/**
		 * Update regions.
		 * @param regions Regions will be replaced with this argument. The format of this argument is the same as regions.
		 */
		(regions: any[]): void;

		/**
		 * Add new region. This API adds new region instead of replacing like regions.
		 * @param grids New region will be added. The format of this argument is the same as regions and it's possible to give an Object if only one region will be added.
		 */
		add(regions: any[] | {}): void;

		/**
		 * Remove regions. This API removes regions.
		 * @param args This argument should include classes. If classes is given, the regions that have one of the specified classes will be removed. If args is not given, all of regions will be
		 * removed.
		 */
		remove(args?: { value?: number | string; class?: string }): void;
	}*/
      get regions;
  external set regions(
      dynamic
          /*{
		/**
		 * Update regions.
		 * @param regions Regions will be replaced with this argument. The format of this argument is the same as regions.
		 */
		(regions: any[]): void;

		/**
		 * Add new region. This API adds new region instead of replacing like regions.
		 * @param grids New region will be added. The format of this argument is the same as regions and it's possible to give an Object if only one region will be added.
		 */
		add(regions: any[] | {}): void;

		/**
		 * Remove regions. This API removes regions.
		 * @param args This argument should include classes. If classes is given, the regions that have one of the specified classes will be removed. If args is not given, all of regions will be
		 * removed.
		 */
		remove(args?: { value?: number | string; class?: string }): void;
	}*/
          v);
  external dynamic
      /*{
		/**
		 * Get data loaded in the chart.
		 * @param targetIds If this argument is given, this API returns the specified target data. If this argument is not given, all of data will be returned.
		 */
		(targetIds?: ArrayOrString): DataArray;

		/**
		 * Get data shown in the chart.
		 * @param targetIds If this argument is given, this API filters the data with specified target ids. If this argument is not given, all shown data will be returned.
		 */
		shown(targetIds?: ArrayOrString): DataArray;

		/**
		 * Get values of the data loaded in the chart.
		 * @param targetIds This API returns the values of specified target. If this argument is not given, null will be retruned.
		 */
		values(targetIds?: ArrayOrString): number[];

		/**
		 * Get and set names of the data loaded in the chart.
		 * @param names If this argument is given, the names of data will be updated. If not given, the current names will be returned. The format of this argument is the same as data.names.
		 */
		names(names?: { [key: string]: string }): { [key: string]: string };

		/**
		 * Get and set colors of the data loaded in the chart.
		 * @param colors If this argument is given, the colors of data will be updated. If not given, the current colors will be returned. The format of this argument is the same as data.colors.
		 */
		colors(colors?: { [key: string]: string; }): { [key: string]: string };

		/**
		 * Get and set axes of the data loaded in the chart.
		 * @param axes If this argument is given, the axes of data will be updated. If not given, the current axes will be returned. The format of this argument is the same as data.axes.
		 */
		axes(axes?: { [key: string]: string }): { [key: string]: string };

		/**
		 * Get the minimum data value bound to the chart.
		 */
		min(): DataItem[];

		/**
		 * Get the maximum data value bound to the chart.
		 */
		max(): DataItem[];
	}*/
      get data;
  external set data(
      dynamic
          /*{
		/**
		 * Get data loaded in the chart.
		 * @param targetIds If this argument is given, this API returns the specified target data. If this argument is not given, all of data will be returned.
		 */
		(targetIds?: ArrayOrString): DataArray;

		/**
		 * Get data shown in the chart.
		 * @param targetIds If this argument is given, this API filters the data with specified target ids. If this argument is not given, all shown data will be returned.
		 */
		shown(targetIds?: ArrayOrString): DataArray;

		/**
		 * Get values of the data loaded in the chart.
		 * @param targetIds This API returns the values of specified target. If this argument is not given, null will be retruned.
		 */
		values(targetIds?: ArrayOrString): number[];

		/**
		 * Get and set names of the data loaded in the chart.
		 * @param names If this argument is given, the names of data will be updated. If not given, the current names will be returned. The format of this argument is the same as data.names.
		 */
		names(names?: { [key: string]: string }): { [key: string]: string };

		/**
		 * Get and set colors of the data loaded in the chart.
		 * @param colors If this argument is given, the colors of data will be updated. If not given, the current colors will be returned. The format of this argument is the same as data.colors.
		 */
		colors(colors?: { [key: string]: string; }): { [key: string]: string };

		/**
		 * Get and set axes of the data loaded in the chart.
		 * @param axes If this argument is given, the axes of data will be updated. If not given, the current axes will be returned. The format of this argument is the same as data.axes.
		 */
		axes(axes?: { [key: string]: string }): { [key: string]: string };

		/**
		 * Get the minimum data value bound to the chart.
		 */
		min(): DataItem[];

		/**
		 * Get the maximum data value bound to the chart.
		 */
		max(): DataItem[];
	}*/
          v);
  external dynamic
      /*{
		/**
		 * Get and set axis labels.
		 * @param labels If labels is given, specified axis' label will be updated.
		 */
		labels(labels?: { [key: string]: string }): { [key: string]: string };

		/**
		 * Get and set axis min value.
		 * @param min If min is given, specified axis' min value will be updated. If no argument is given, the current min values for each axis will be returned.
		 */
		min(min?: number | { [key: string]: number }): number | {
			[key: string]: number | { fit?: boolean; value?: number; }
		};

		/**
		 * Get and set axis max value.
		 * @param max If max is given, specified axis' max value will be updated. If no argument is given, the current max values for each axis will be returned.
		 */
		max(max?: number | { [key: string]: number }): number | {
			[key: string]: number | { fit?: boolean; value?: number; }
		};

		/**
		 * Get and set axis min and max value.
		 * @param range If range is given, specified axis' min and max value will be updated. If no argument is given, the current min and max values for each axis will be returned.
		 */
		range(range?: {
			min?: number | { [key: string]: number };
			max?: number | { [key: string]: number };
		}): {
			min: number | { [key: string]: number };
			max: number | { [key: string]: number };
		};
	}*/
      get axis;
  external set axis(
      dynamic
          /*{
		/**
		 * Get and set axis labels.
		 * @param labels If labels is given, specified axis' label will be updated.
		 */
		labels(labels?: { [key: string]: string }): { [key: string]: string };

		/**
		 * Get and set axis min value.
		 * @param min If min is given, specified axis' min value will be updated. If no argument is given, the current min values for each axis will be returned.
		 */
		min(min?: number | { [key: string]: number }): number | {
			[key: string]: number | { fit?: boolean; value?: number; }
		};

		/**
		 * Get and set axis max value.
		 * @param max If max is given, specified axis' max value will be updated. If no argument is given, the current max values for each axis will be returned.
		 */
		max(max?: number | { [key: string]: number }): number | {
			[key: string]: number | { fit?: boolean; value?: number; }
		};

		/**
		 * Get and set axis min and max value.
		 * @param range If range is given, specified axis' min and max value will be updated. If no argument is given, the current min and max values for each axis will be returned.
		 */
		range(range?: {
			min?: number | { [key: string]: number };
			max?: number | { [key: string]: number };
		}): {
			min: number | { [key: string]: number };
			max: number | { [key: string]: number };
		};
	}*/
          v);
  external dynamic
      /*{
		/**
		 * Show legend for each target.
		 * @param targetIds If targetIds is given, specified target's legend will be shown. If only one target is the candidate, String can be passed. If no argument is given, all of target's
		 * legend will be shown.
		 */
		show(targetIds?: ArrayOrString): void;

		/**
		 * Hide legend for each target.
		 * @param targetIds If targetIds is given, specified target's legend will be hidden. If only one target is the candidate, String can be passed. If no argument is given, all of target's
		 * legend will be hidden.
		 */
		hide(targetIds?: ArrayOrString): void;
	}*/
      get legend;
  external set legend(
      dynamic
          /*{
		/**
		 * Show legend for each target.
		 * @param targetIds If targetIds is given, specified target's legend will be shown. If only one target is the candidate, String can be passed. If no argument is given, all of target's
		 * legend will be shown.
		 */
		show(targetIds?: ArrayOrString): void;

		/**
		 * Hide legend for each target.
		 * @param targetIds If targetIds is given, specified target's legend will be hidden. If only one target is the candidate, String can be passed. If no argument is given, all of target's
		 * legend will be hidden.
		 */
		hide(targetIds?: ArrayOrString): void;
	}*/
          v);
  external dynamic
      /*{
		/**
		 * Zoom by giving x domain.
		 * @param domain If domain is given, the chart will be zoomed to the given domain. If no argument is given, the current zoomed domain will be returned.
		 */
		(domain?: number[]): number[];

		/**
		 * Enable and disable zooming.
		 * @param enabled If enabled is true, the feature of zooming will be enabled. If false is given, it will be disabled.
		 */
		enable(enabled: boolean): void;

		/**
		 * Set or get x Axis minimum zoom range value.
		 * @param min Minimum value to set for zoom
		 */
		min(min?: number): number;

		/**
		 * Set or get x Axis maximum zoom range value.
		 * @param max Maximum value to set for zoom
		 */
		max(max?: number): number;

		/**
		 * Set zoom range.
		 * @param range Zoom range object value
		 */
		range(range?: { min?: number, max?: number }): { min: number, max: number }
	}*/
      get zoom;
  external set zoom(
      dynamic
          /*{
		/**
		 * Zoom by giving x domain.
		 * @param domain If domain is given, the chart will be zoomed to the given domain. If no argument is given, the current zoomed domain will be returned.
		 */
		(domain?: number[]): number[];

		/**
		 * Enable and disable zooming.
		 * @param enabled If enabled is true, the feature of zooming will be enabled. If false is given, it will be disabled.
		 */
		enable(enabled: boolean): void;

		/**
		 * Set or get x Axis minimum zoom range value.
		 * @param min Minimum value to set for zoom
		 */
		min(min?: number): number;

		/**
		 * Set or get x Axis maximum zoom range value.
		 * @param max Maximum value to set for zoom
		 */
		max(max?: number): number;

		/**
		 * Set zoom range.
		 * @param range Zoom range object value
		 */
		range(range?: { min?: number, max?: number }): { min: number, max: number }
	}*/
          v);
  external dynamic
      /*{
		/**
		 * Hide tooltip
		 */
		hide(): void;

		/**
		 * Show tooltip
		 * @param args Option object to specify specific tooltip
		 */
		show(args: {
			index?: number,
			data?: { x?: number | Date, index?: number, id?: string, value?: number },
			mouse?: number[],
			x?: number | Date,
		}): void
	}*/
      get tooltip;
  external set tooltip(
      dynamic
          /*{
		/**
		 * Hide tooltip
		 */
		hide(): void;

		/**
		 * Show tooltip
		 * @param args Option object to specify specific tooltip
		 */
		show(args: {
			index?: number,
			data?: { x?: number | Date, index?: number, id?: string, value?: number },
			mouse?: number[],
			x?: number | Date,
		}): void
	}*/
          v);

  /// This API highlights specified targets and fade out the others.
  /// You can specify multiple targets by giving an array that includes id as String.
  /// If no argument is given, all of targets will be highlighted.
  external void focus([dynamic /*List<String>|String*/ targetIds]);

  /// This API fades out specified targets and reverts the others.
  /// You can specify multiple targets by giving an array that includes id as String.
  /// If no argument is given, all of targets will be faded out.
  external void defocus([dynamic /*List<String>|String*/ targetIds]);

  /// This API reverts specified targets.
  /// You can specify multiple targets by giving an array that includes id as String. If no argument is given, all of targets will be reverted.
  external void revert([dynamic /*List<String>|String*/ targetIds]);

  /// This API shows specified targets.
  /// You can specify multiple targets by giving an array that includes id as String.
  /// If no argument is given, all of targets will be shown.
  /// If withLegend is set true, legend will be shown together with the specified data.
  external void show(
      [dynamic /*List<String>|String*/ targetIds,
      dynamic /*{ withLegend: boolean }*/ options]);

  /// This API hides specified targets.
  /// You can specify multiple targets by giving an array that includes id as String.
  /// If no argument is given, all of targets will be hidden.
  /// If withLegend is set true, legend will be hidden together with the specified data.
  external void hide(
      [dynamic /*List<String>|String*/ targetIds,
      dynamic /*{ withLegend: boolean }*/ options]);

  /// This API toggles (shows or hides) specified targets.
  /// You can specify multiple targets by giving an array that includes id as String.
  /// If no argument is given, all of targets will be toggles.
  /// If withLegend is set true, legend will be toggled together with the specified data.
  external void toggle(
      [dynamic /*List<String>|String*/ targetIds,
      dynamic /*{ withLegend: boolean }*/ options]);

  /// Load data to the chart.
  /// You can specify multiple targets by giving an array that includes id as String.
  /// If no argument is given, all of targets will be toggles.
  /// - Note:
  /// - unload should be used if some data needs to be unloaded simultaneously.
  /// If you call unload API soon after/before load instead of unload param, chart will not be rendered properly because of cancel of animation.
  /// - done will be called after data loaded, but it's not after rendering.
  /// It's because rendering will finish after some transition and there is some time lag between loading and rendering
  external void load(
      /*Chart this*/ dynamic
          /*{
		url?: string;
		json?: [{ [key: string]: string }];
		rows?: PrimitiveArray[];
		columns?: PrimitiveArray[];
		data?: Array<{ [key: string]: number }>;
		names?: { [key: string]: string };
		xs?: { [key: string]: string };
		classes?: { [key: string]: string };
		categories?: string[];
		axes?: { [key: string]: string | string[] };
		colors?: { [key: string]: string };
		headers?: { [key: string]: string };
		keys?: { [key: string]: string };
		mimeType?: string;
		type?: string;
		types?: { [key: string]: string };
		unload?: boolean | ArrayOrString;
		done?: () => any;
	}*/
          args);

  /// Unload data to the chart.
  /// You can specify multiple targets by giving an array that includes id as String.
  /// - If no argument is given, all of targets will be toggles.
  /// - If ids given, the data that has specified target id will be unloaded. ids should be String or Array.
  /// - If ids is not specified, all data will be unloaded.
  /// - If done given, the specified function will be called after data loded.
  /// - NOTE:
  /// - If you call load API soon after/before unload, unload param of load should be used. Otherwise chart will not be rendered properly because of cancel of animation.
  /// - done will be called after data loaded, but it's not after rendering. It's because rendering will finish after some transition and there is some time lag between loading and rendering.
  external dynamic unload(/*Chart this*/ [TargetIds targetIds, dynamic done()]);

  /// Flow data to the chart. By this API, you can append new data points to the chart.
  /// The args object can consist with following members:
  /// | Key | Type | Description |
  /// | --- | --- | --- |
  /// | json | Object | Data as JSON format (@see [data․json](Options.html#.data%25E2%2580%25A4json)) |
  /// | rows | Array | Data in array as row format (@see [data․rows](Options.html#.data%25E2%2580%25A4json)) |
  /// | columns | Array | Data in array as column format (@see [data․columns](Options.html#.data%25E2%2580%25A4columns)) |
  /// | to | String | The lower x edge will move to that point. If not given, the lower x edge will move by the number of given data points |
  /// | length | Number | The lower x edge will move by the number of this argument |
  /// | duration | Number | The duration of the transition will be specified value. If not given, transition.duration will be used as default |
  /// | done | Function | The specified function will be called when flow ends |
  /// - NOTE:
  /// - If json, rows and columns given, the data will be loaded.
  /// - If data that has the same target id is given, the chart will be appended.
  /// - Otherwise, new target will be added. One of these is required when calling.
  /// - If json specified, keys is required as well as data.json.
  /// - If tab isn't visible(by evaluating `document.hidden`), will not be executed to prevent unnecessary work.
  external void flow(
      dynamic
          /*{
		json?: {};
		keys?: { x?: string; value: string[] };
		rows?: PrimitiveArray[];
		columns?: PrimitiveArray[];
		to?: any;
		length?: number;
		duration?: number;
		done?(this: Chart): any;
	}*/
          args);

  /// Change data point state to selected. By this API, you can select data points. To use this API, data.selection.enabled needs to be set true.
  external void select([List<String> ids, List<num> indices, bool resetOthers]);

  /// Change data point state to unselected. By this API, you can unselect data points. To use this API, data.selection.enabled needs to be set true.
  external void unselect([List<String> ids, List<num> indices]);

  /// Get selected data points. By this API, you can get selected data points information. To use this API, data.selection.enabled needs to be set true.
  external Data selected([String targetId]);

  /// Update groups for the targets.
  external void groups(List<List<String>> groups);

  /// Gets and sets the value a category
  external String category(num index, [String category]);

  /// Get and set the categories
  external List<String> categories([List<String> categories]);

  /// Get the color for the specified targetId
  external String color(String targetId);

  /// Get and set x values for the chart.
  external List<dynamic /*String|bool|num|DateTime|Null*/ > x(
      [List<dynamic /*String|bool|num|DateTime|Null*/ > x]);

  /// Get and set x values for the chart.
  external dynamic /*JSMap of <String,List<String|bool|num|DateTime|Null>>*/ xs(
      [dynamic /*JSMap of <String,List<String|bool|num|DateTime|Null>>*/ xs]);

  /// Unzoom to the original domain.
  external void unzoom();

  /// Resize the chart. If no size is specified it will resize to fit.
  external void resize([dynamic /*{ width?: number; height?: number }*/ size]);

  /// Force to redraw.
  /// - **NOTE:** When zoom/subchart is used, the zoomed state will be resetted.
  external void flush([bool soft]);

  /// Reset the chart object and remove element and events completely.
  external void destroy();

  /// Export chart as an image.
  /// - NOTE:
  /// - IE11 and below not work properly due to the lack of the feature(foreignObject) support
  /// - The basic CSS file(ex. billboard.css) should be at same domain as API call context to get correct styled export image.
  external String export(
      /*Chart this*/ [String mimeType, String callback(String dataUrl)]);

  /// Get or set single config option value.
  external dynamic config(String optionName, [dynamic value, bool redraw]);
}

@anonymous
@JS()
abstract class GridOperations {
  /// Update the x/y grid lines.
  external void call(List<dynamic> grids);

  /// Add x/y grid lines. This API adds new x/y grid lines instead of replacing like xgrids.
  external void add(dynamic /*List<dynamic>|{}*/ grids);

  /// Remove x/y grid lines. This API removes x/y grid lines.
  /// have specified class will be removed. If args is not given, all of x/y grid lines will be removed.
  external void remove(
      [dynamic /*{ class?: string; value?: number | string }*/ args]);
}
