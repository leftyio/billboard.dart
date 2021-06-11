@JS()
library types.options;

import "package:js/js.dart";
import "dart:html" show HtmlElement, Plugin, Event;
import "axis.dart" show Axis;
import "chart.dart" show Chart;
import "types.dart" show DataItem;
import "../src/ChartInternal/data/IData.dart" show IData;
import "dart:svg" show SvgElement;

/// Copyright (c) 2017 ~ present NAVER Corp.
/// billboard.js project is licensed under the MIT license
@anonymous
@JS()
abstract class ChartOptions {
  external factory ChartOptions();

  /// Specify the CSS selector or the element which the chart will be set to. D3 selection object can be specified also.
  /// If other chart is set already, it will be replaced with the new one (only one chart can be set in one element).
  /// - **NOTE:** In case of element doesn't exist or not specified, will add a `<div>` element to the body.
  external dynamic
      /*String|HtmlElement|Null|{
        /**
         * Specify the element where chart will be drawn.
         */
        element?: string | HTMLElement;

        /**
         * Specify the class name of bind element.
         * NOTE: When class name isn't bb, then you also need to update the default CSS to be rendered correctly.
         */
        classname?: string;
      }*/
      get bindto;
  external set bindto(
      dynamic
          /*String|HtmlElement|Null|{
        /**
         * Specify the element where chart will be drawn.
         */
        element?: string | HTMLElement;

        /**
         * Specify the class name of bind element.
         * NOTE: When class name isn't bb, then you also need to update the default CSS to be rendered correctly.
         */
        classname?: string;
      }*/
          v);

  /// Set chart background.
  external dynamic
      /*{
    /**
     * Specify the class name for background element.
     */
    class?: string;

    /**
     * Specify the fill color for background element. (NOTE: Will be ignored if `imgUrl` option is set.)
     */
    color?: string;

    /**
     * Specify the image url string for background.
     */
    imgUrl?: string;
  }*/
      get background;
  external set background(
      dynamic
          /*{
    /**
     * Specify the class name for background element.
     */
    class?: string;

    /**
     * Specify the fill color for background element. (NOTE: Will be ignored if `imgUrl` option is set.)
     */
    color?: string;

    /**
     * Specify the image url string for background.
     */
    imgUrl?: string;
  }*/
          v);
  external dynamic
      /*{
    /**
     * The desired width of the chart element.
     * If this option is not specified, the width of the chart will be calculated by the size of the parent element it's appended to.
     * Note: This option should be specified if possible because it can improve its performance because some size calculations will be skipped by an explicit value.
     */
    width?: number;

    /**
     * The desired height of the chart element.
     * If this option is not specified, the height of the chart will be calculated by the size of the parent element it's appended to.
     */
    height?: number;
  }*/
      get size;
  external set size(
      dynamic
          /*{
    /**
     * The desired width of the chart element.
     * If this option is not specified, the width of the chart will be calculated by the size of the parent element it's appended to.
     * Note: This option should be specified if possible because it can improve its performance because some size calculations will be skipped by an explicit value.
     */
    width?: number;

    /**
     * The desired height of the chart element.
     * If this option is not specified, the height of the chart will be calculated by the size of the parent element it's appended to.
     */
    height?: number;
  }*/
          v);
  external dynamic
      /*{
    /**
     * The padding on the top of the chart.
     */
    top?: number;

    /**
     * The padding on the right of the chart.
     */
    right?: number;

    /**
     * The padding on the bottom of the chart.
     */

    bottom?: number;

    /**
     * The padding on the left of the chart.
     */
    left?: number;
  }*/
      get padding;
  external set padding(
      dynamic
          /*{
    /**
     * The padding on the top of the chart.
     */
    top?: number;

    /**
     * The padding on the right of the chart.
     */
    right?: number;

    /**
     * The padding on the bottom of the chart.
     */

    bottom?: number;

    /**
     * The padding on the left of the chart.
     */
    left?: number;
  }*/
          v);
  external dynamic
      /*{
    /**
     * Indicate if the chart should automatically get resized when the window gets resized.
     */
    auto?: boolean;
  }*/
      get resize;
  external set resize(
      dynamic
          /*{
    /**
     * Indicate if the chart should automatically get resized when the window gets resized.
     */
    auto?: boolean;
  }*/
          v);
  external dynamic
      /*{
    /**
     * Set custom color pattern.
     *
     * Passing 'null' will not set a color for these elements, which requires the usage of custom CSS-based theming to work.
     */
    pattern?: Array<string | null>;

    /**
     * color threshold for gauge and tooltip color
     */
    threshold?: {
      /**
       * If set to value, the threshold will be based on the data value.
       * Otherwise it'll be based on equation of the threshold.max option value.
       */
      unit?: string;

      /**
       * Threshold values for each steps
       */
      values?: number[];

      /**
       * The base value to determine threshold step value condition.
       * When the given value is 15 and max 10, then the value for threshold is 15*100/10
       */
      max?: number;
    };

    /**
     * if defined, allows use svg's patterns to fill data area. It should return an array of SVGPatternElement.
     * - NOTE: The pattern element's id will be defined as bb-colorize-pattern-$COLOR-VALUE.
     *   ex. When color pattern value is ['red', '#fff'] and defined 2 patterns,then ids for pattern elements are:
     *   - bb-colorize-pattern-red
     *   - bb-colorize-pattern-fff
     */
    tiles?: (this: Chart) => SVGPathElement[];

    /**
     * Set the color value for each data point when mouse/touch onover event occurs.
     */
    onover?:
      | string
      | { [key: string]: string }
      | ((this: Chart, d: DataItem) => string);
  }*/
      get color;
  external set color(
      dynamic
          /*{
    /**
     * Set custom color pattern.
     *
     * Passing 'null' will not set a color for these elements, which requires the usage of custom CSS-based theming to work.
     */
    pattern?: Array<string | null>;

    /**
     * color threshold for gauge and tooltip color
     */
    threshold?: {
      /**
       * If set to value, the threshold will be based on the data value.
       * Otherwise it'll be based on equation of the threshold.max option value.
       */
      unit?: string;

      /**
       * Threshold values for each steps
       */
      values?: number[];

      /**
       * The base value to determine threshold step value condition.
       * When the given value is 15 and max 10, then the value for threshold is 15*100/10
       */
      max?: number;
    };

    /**
     * if defined, allows use svg's patterns to fill data area. It should return an array of SVGPatternElement.
     * - NOTE: The pattern element's id will be defined as bb-colorize-pattern-$COLOR-VALUE.
     *   ex. When color pattern value is ['red', '#fff'] and defined 2 patterns,then ids for pattern elements are:
     *   - bb-colorize-pattern-red
     *   - bb-colorize-pattern-fff
     */
    tiles?: (this: Chart) => SVGPathElement[];

    /**
     * Set the color value for each data point when mouse/touch onover event occurs.
     */
    onover?:
      | string
      | { [key: string]: string }
      | ((this: Chart, d: DataItem) => string);
  }*/
          v);
  external dynamic
      /*{
    /**
     * Indicate if the chart should have interactions.
     * If false is set, all of interactions (showing/hiding tooltip, selection, mouse events, etc) will be disabled.
     */
    enabled?: boolean;

    /**
     * Make brighter for the selected area (ex. 'pie' type data selected area)
     */
    brighten?: boolean;

    inputType?: {
      /**
       * enable or disable mouse interaction
       */
      mouse?: boolean;

      /**
       * enable or disable touch interaction
       */
      touch?:
        | boolean
        | {
            /**
             * enable or disable to call event.preventDefault on touchstart & touchmove event.
             * It's usually used to prevent document scrolling.
             */
            preventDefault?: boolean | number;
          };
    };
  }*/
      get interaction;
  external set interaction(
      dynamic
          /*{
    /**
     * Indicate if the chart should have interactions.
     * If false is set, all of interactions (showing/hiding tooltip, selection, mouse events, etc) will be disabled.
     */
    enabled?: boolean;

    /**
     * Make brighter for the selected area (ex. 'pie' type data selected area)
     */
    brighten?: boolean;

    inputType?: {
      /**
       * enable or disable mouse interaction
       */
      mouse?: boolean;

      /**
       * enable or disable touch interaction
       */
      touch?:
        | boolean
        | {
            /**
             * enable or disable to call event.preventDefault on touchstart & touchmove event.
             * It's usually used to prevent document scrolling.
             */
            preventDefault?: boolean | number;
          };
    };
  }*/
          v);
  external dynamic
      /*{
    /**
     * Set duration of transition (in milliseconds) for chart animation.
     * Note: If 0 or null set, transition will be skipped. So, this makes initial rendering faster especially in case you have a lot of data.
     */
    duration?: number;
  }*/
      get transition;
  external set transition(
      dynamic
          /*{
    /**
     * Set duration of transition (in milliseconds) for chart animation.
     * Note: If 0 or null set, transition will be skipped. So, this makes initial rendering faster especially in case you have a lot of data.
     */
    duration?: number;
  }*/
          v);
  external Data get data;
  external set data(Data v);
  external Axis get axis;
  external set axis(Axis v);
  external Grid get grid;
  external set grid(Grid v);

  /// Show rectangles inside the chart.
  /// This option accepts array including object that has axis, start, end and class. The keys start, end and class are optional.
  /// axis must be x, y or y2. start and end should be the value where regions start and end. If not specified, the edge values will be used.
  /// If timeseries x axis, date string, Date object and unixtime integer can be used. If class is set, the region element will have it as class.
  external List<RegionOptions> get regions;
  external set regions(List<RegionOptions> v);
  external LegendOptions get legend;
  external set legend(LegendOptions v);
  external TooltipOptions get tooltip;
  external set tooltip(TooltipOptions v);
  external SubchartOptions get subchart;
  external set subchart(SubchartOptions v);
  external ZoomOptions get zoom;
  external set zoom(ZoomOptions v);
  external PointOptions get point;
  external set point(PointOptions v);
  external dynamic
      /*{
    /**
     * Set if null data point will be connected or not.
     * If true set, the region of null data will be connected without any data point.
     * If false set, the region of null data will not be connected and get empty.
     */
    connectNull?: boolean;

    /**
     * Change step type for step chart.
     * 'step', 'step-before' and 'step-after' can be used.
     */
    step?: {
      type: "step" | "step-before" | "step-after";
    };

    /**
     * Set if min or max value will be 0 on line chart.
     */
    zerobased?: boolean;

    /**
     * If set, used to set a css class on each line.
     */
    classes?: string[];

    /**
     * Set to false to not draw points on linecharts. Or pass an array of line ids to draw points for.
     */
    point?: boolean | string[];
  }*/
      get line;
  external set line(
      dynamic
          /*{
    /**
     * Set if null data point will be connected or not.
     * If true set, the region of null data will be connected without any data point.
     * If false set, the region of null data will not be connected and get empty.
     */
    connectNull?: boolean;

    /**
     * Change step type for step chart.
     * 'step', 'step-before' and 'step-after' can be used.
     */
    step?: {
      type: "step" | "step-before" | "step-after";
    };

    /**
     * Set if min or max value will be 0 on line chart.
     */
    zerobased?: boolean;

    /**
     * If set, used to set a css class on each line.
     */
    classes?: string[];

    /**
     * Set to false to not draw points on linecharts. Or pass an array of line ids to draw points for.
     */
    point?: boolean | string[];
  }*/
          v);
  external dynamic
      /*{
    /**
     * Set if min or max value will be 0 on scatter chart.
     */
    zerobased?: boolean;
  }*/
      get scatter;
  external set scatter(
      dynamic
          /*{
    /**
     * Set if min or max value will be 0 on scatter chart.
     */
    zerobased?: boolean;
  }*/
          v);
  external dynamic
      /*{
    /**
     * Set background area above the data chart line.
     */
    above?: boolean;

    /**
     * Set area node to be positioned over line node.
     */
    front?: boolean;

    /**
     * Set the linear gradient on area.<br><br>
     * Or customize by giving below object value:
     *  - x {Array}: `x1`, `x2` value
     *  - y {Array}: `y1`, `y2` value
     *  - stops {Array}: Each item should be having `[offset, stop-color, stop-opacity]` values.
     */
    linearGradient?: boolean | AreaLinearGradientOptions;

    /**
     * Set if min or max value will be 0 on area chart.
     */
    zerobased?: boolean;
  }*/
      get area;
  external set area(
      dynamic
          /*{
    /**
     * Set background area above the data chart line.
     */
    above?: boolean;

    /**
     * Set area node to be positioned over line node.
     */
    front?: boolean;

    /**
     * Set the linear gradient on area.<br><br>
     * Or customize by giving below object value:
     *  - x {Array}: `x1`, `x2` value
     *  - y {Array}: `y1`, `y2` value
     *  - stops {Array}: Each item should be having `[offset, stop-color, stop-opacity]` values.
     */
    linearGradient?: boolean | AreaLinearGradientOptions;

    /**
     * Set if min or max value will be 0 on area chart.
     */
    zerobased?: boolean;
  }*/
          v);
  external dynamic
      /*{
    /**
     * Change the width of bar chart. If ratio is specified, change the width of bar chart by ratio.
     */
    width?:
      | number
      | {
          /**
           * Set the width of each bar by ratio
           */
          ratio: number;

          /**
           * Set max width of each bar
           */
          max?: number;
        }
      | {
          /**
           * Set the width option for specific dataset
           */
          [key: string]: {
            ratio: number;
            max: number;
          };
        };

    headers?: Array<{ [key: string]: string }>;

    /**
     * Set threshold ratio to show/hide labels.
     */
    label?: {
      threshold?: number;
    };

    /**
     * Set if min or max value will be 0 on bar chart.
     */
    zerobased?: boolean;

    /**
     * Set space between bars in bar charts
     */
    space?: number;

    /**
     * The padding pixel value between each bar.
     */
    padding?: number;

    /**
     * Set the radius of bar edge in pixel.
     * - NOTE: Only for non-stacking bars.
     */
    radius?:
      | number
      | {
          /**
           * Set the radius ratio of bar edge in relative the bar's width.
           */
          ratio?: number;
        };

    /**
     * The senstivity offset value for interaction boundary.
     */
    sensitivity?: number;
  }*/
      get bar;
  external set bar(
      dynamic
          /*{
    /**
     * Change the width of bar chart. If ratio is specified, change the width of bar chart by ratio.
     */
    width?:
      | number
      | {
          /**
           * Set the width of each bar by ratio
           */
          ratio: number;

          /**
           * Set max width of each bar
           */
          max?: number;
        }
      | {
          /**
           * Set the width option for specific dataset
           */
          [key: string]: {
            ratio: number;
            max: number;
          };
        };

    headers?: Array<{ [key: string]: string }>;

    /**
     * Set threshold ratio to show/hide labels.
     */
    label?: {
      threshold?: number;
    };

    /**
     * Set if min or max value will be 0 on bar chart.
     */
    zerobased?: boolean;

    /**
     * Set space between bars in bar charts
     */
    space?: number;

    /**
     * The padding pixel value between each bar.
     */
    padding?: number;

    /**
     * Set the radius of bar edge in pixel.
     * - NOTE: Only for non-stacking bars.
     */
    radius?:
      | number
      | {
          /**
           * Set the radius ratio of bar edge in relative the bar's width.
           */
          ratio?: number;
        };

    /**
     * The senstivity offset value for interaction boundary.
     */
    sensitivity?: number;
  }*/
          v);
  external dynamic
      /*{
    /**
     * Set the max bubble radius value
     */
    maxR?: ((this: Chart, d: {}) => number) | number;

    /**
     * Set if min or max value will be 0 on bubble chart.
     */
    zerobased?: boolean;
  }*/
      get bubble;
  external set bubble(
      dynamic
          /*{
    /**
     * Set the max bubble radius value
     */
    maxR?: ((this: Chart, d: {}) => number) | number;

    /**
     * Set if min or max value will be 0 on bubble chart.
     */
    zerobased?: boolean;
  }*/
          v);
  external dynamic
      /*{
    axis?: {
      /**
       * The max value of axis. If not given, it'll take the max value from the given data.
       */
      max?: number;

      line?: {
        /**
         * Show or hide axis line.
         */
        show?: boolean;
      };

      text?: {
        position?: {
          /**
           * x coordinate position, relative the original
           */
          x?: number;

          /**
           * y coordinate position, relative the original
           */
          y?: number;
        };

        /**
         * Show or hide axis text.
         */
        show?: boolean;
      };
    };

    direction?: {
      /**
       * Set the direction to be drawn.
       */
      clockwise: boolean;
    };

    level?: {
      /**
       * Set the level depth.
       */
      depth?: number;

      /**
       * Show or hide level.
       */
      show?: boolean;

      text?: {
        /**
         * Set format function for the level value.
         */
        format?: (this: Chart, x: string) => string;

        /**
         * Show or hide level text.
         */
        show?: boolean;
      };
    };

    size?: {
      /**
       * Set size ratio.
       */
      ratio?: number;
    };
  }*/
      get radar;
  external set radar(
      dynamic
          /*{
    axis?: {
      /**
       * The max value of axis. If not given, it'll take the max value from the given data.
       */
      max?: number;

      line?: {
        /**
         * Show or hide axis line.
         */
        show?: boolean;
      };

      text?: {
        position?: {
          /**
           * x coordinate position, relative the original
           */
          x?: number;

          /**
           * y coordinate position, relative the original
           */
          y?: number;
        };

        /**
         * Show or hide axis text.
         */
        show?: boolean;
      };
    };

    direction?: {
      /**
       * Set the direction to be drawn.
       */
      clockwise: boolean;
    };

    level?: {
      /**
       * Set the level depth.
       */
      depth?: number;

      /**
       * Show or hide level.
       */
      show?: boolean;

      text?: {
        /**
         * Set format function for the level value.
         */
        format?: (this: Chart, x: string) => string;

        /**
         * Show or hide level text.
         */
        show?: boolean;
      };
    };

    size?: {
      /**
       * Set size ratio.
       */
      ratio?: number;
    };
  }*/
          v);
  external dynamic
      /*{
    label?: {
      /**
       * Show or hide label on each pie piece.
       */
      show?: boolean;

      /**
       * Set threshold ratio to show/hide labels.
       */
      threshold?: number;

      /**
       * Set formatter for the label on each pie piece.
       */
      format?(this: Chart, value: number, ratio: number, id: string): string;

      /**
       * Set ratio of labels position.
       */
      ratio?:
        | ((this: Chart, d: DataItem, radius: number, h: number) => void)
        | number;
    };

    /**
     * Enable or disable expanding pie pieces.
     */
    expand?:
      | boolean
      | {
          /**
           * Set expand transition time in ms.
           */
          duration?: number;

          /**
           * Set expand rate.
           */
          rate?: number;
        };

    /**
     * Sets the inner radius of pie arc.
     */
    innerRadius?:
      | number
      | {
          [key: string]: number;
        };

    /**
     * Sets the outer radius of pie arc.
     */
    outerRadius?:
      | number
      | {
          [key: string]: number;
        };

    /**
     * Set padding between data.
     */
    padAngle?: number;

    /**
     * Sets the gap between pie arcs.
     */
    padding?: number;

    /**
     * Set starting angle where data draws.
     */
    startingAngle?: number;
  }*/
      get pie;
  external set pie(
      dynamic
          /*{
    label?: {
      /**
       * Show or hide label on each pie piece.
       */
      show?: boolean;

      /**
       * Set threshold ratio to show/hide labels.
       */
      threshold?: number;

      /**
       * Set formatter for the label on each pie piece.
       */
      format?(this: Chart, value: number, ratio: number, id: string): string;

      /**
       * Set ratio of labels position.
       */
      ratio?:
        | ((this: Chart, d: DataItem, radius: number, h: number) => void)
        | number;
    };

    /**
     * Enable or disable expanding pie pieces.
     */
    expand?:
      | boolean
      | {
          /**
           * Set expand transition time in ms.
           */
          duration?: number;

          /**
           * Set expand rate.
           */
          rate?: number;
        };

    /**
     * Sets the inner radius of pie arc.
     */
    innerRadius?:
      | number
      | {
          [key: string]: number;
        };

    /**
     * Sets the outer radius of pie arc.
     */
    outerRadius?:
      | number
      | {
          [key: string]: number;
        };

    /**
     * Set padding between data.
     */
    padAngle?: number;

    /**
     * Sets the gap between pie arcs.
     */
    padding?: number;

    /**
     * Set starting angle where data draws.
     */
    startingAngle?: number;
  }*/
          v);
  external dynamic
      /*{
    label?: {
      /**
       * Show or hide label on each donut piece.
       */
      show?: boolean;

      /**
       * Set formatter for the label on each donut piece.
       */
      format?: (
        this: Chart,
        value: number,
        ratio: number,
        id: string
      ) => string;

      /**
       * Set ratio of labels position.
       */
      ratio?:
        | number
        | ((this: Chart, d: DataItem, radius: number, h: number) => number);

      /**
       * Set threshold ratio to show/hide labels.
       */
      threshold?: number;
    };

    /**
     * Enable or disable expanding donut pieces.
     */
    expand?:
      | boolean
      | {
          /**
           * Set expand transition time in ms.
           */
          duration?: number;

          /**
           * Set expand rate.
           */
          rate?: number;
        };

    /**
     * Set padding between data.
     */
    padAngle?: number;

    /**
     * Set starting angle where data draws.
     */
    startingAngle?: number;

    /**
     * Set width of donut chart.
     */
    width?: number;

    /**
     * Set title of donut chart.
     */
    title?: string;
  }*/
      get donut;
  external set donut(
      dynamic
          /*{
    label?: {
      /**
       * Show or hide label on each donut piece.
       */
      show?: boolean;

      /**
       * Set formatter for the label on each donut piece.
       */
      format?: (
        this: Chart,
        value: number,
        ratio: number,
        id: string
      ) => string;

      /**
       * Set ratio of labels position.
       */
      ratio?:
        | number
        | ((this: Chart, d: DataItem, radius: number, h: number) => number);

      /**
       * Set threshold ratio to show/hide labels.
       */
      threshold?: number;
    };

    /**
     * Enable or disable expanding donut pieces.
     */
    expand?:
      | boolean
      | {
          /**
           * Set expand transition time in ms.
           */
          duration?: number;

          /**
           * Set expand rate.
           */
          rate?: number;
        };

    /**
     * Set padding between data.
     */
    padAngle?: number;

    /**
     * Set starting angle where data draws.
     */
    startingAngle?: number;

    /**
     * Set width of donut chart.
     */
    width?: number;

    /**
     * Set title of donut chart.
     */
    title?: string;
  }*/
          v);
  external dynamic
      /*{
    /**
     * Set background color. (The `.bb-chart-arcs-background` element)
     */
    background?: string;

    /**
     * Whether this should be displayed
     * as a full circle instead of a
     * half circle.
     */
    fullCircle?: boolean;

    label?: {
      /**
       * Show or hide label on gauge.
       */
      show?: boolean;

      /**
       * Set formatter for the label on gauge.
       */
      format?(this: Chart, value: any, ratio: number): string;

      /**
       * Set customized min/max label text.
       */
      extents?(this: Chart, value: number, isMax: boolean): string | number;

      /**
       * Set threshold ratio to show/hide labels.
       */
      threshold?: number;
    };

    /**
     * Enable or disable expanding gauge pieces.
     */
    expand?:
      | boolean
      | {
          /**
           * Set expand transition time in ms.
           */
          duration?: number;

          /**
           * Set expand rate.
           */
          rate?: number;
        };

    /**
     * Set type of the gauge.
     */
    type?: GaugeTypes;

    /**
     * Set min value of the gauge.
     */
    min?: number;

    /**
     * Set max value of the gauge.
     */
    max?: number;

    /**
     * Set starting angle where data draws.
     */
    startingAngle?: number;

    /**
     * Set title of gauge chart. Use `\n` character to enter line break.
     */
    title?: string;

    /**
     * Set units of the gauge.
     */
    units?: string;

    /**
     * Set width of gauge chart.
     */
    width?: number;

    /**
     * Set minimal width of gauge arcs until the innerRadius disappears.
     */
    arcs?: {
      minWidth: number;
    };

    /**
     * Set the length of the arc to be drawn in percent from -100 to 100.
     * Negative value will draw the arc **counterclockwise**.
     */
    arcLength?: number;
  }*/
      get gauge;
  external set gauge(
      dynamic
          /*{
    /**
     * Set background color. (The `.bb-chart-arcs-background` element)
     */
    background?: string;

    /**
     * Whether this should be displayed
     * as a full circle instead of a
     * half circle.
     */
    fullCircle?: boolean;

    label?: {
      /**
       * Show or hide label on gauge.
       */
      show?: boolean;

      /**
       * Set formatter for the label on gauge.
       */
      format?(this: Chart, value: any, ratio: number): string;

      /**
       * Set customized min/max label text.
       */
      extents?(this: Chart, value: number, isMax: boolean): string | number;

      /**
       * Set threshold ratio to show/hide labels.
       */
      threshold?: number;
    };

    /**
     * Enable or disable expanding gauge pieces.
     */
    expand?:
      | boolean
      | {
          /**
           * Set expand transition time in ms.
           */
          duration?: number;

          /**
           * Set expand rate.
           */
          rate?: number;
        };

    /**
     * Set type of the gauge.
     */
    type?: GaugeTypes;

    /**
     * Set min value of the gauge.
     */
    min?: number;

    /**
     * Set max value of the gauge.
     */
    max?: number;

    /**
     * Set starting angle where data draws.
     */
    startingAngle?: number;

    /**
     * Set title of gauge chart. Use `\n` character to enter line break.
     */
    title?: string;

    /**
     * Set units of the gauge.
     */
    units?: string;

    /**
     * Set width of gauge chart.
     */
    width?: number;

    /**
     * Set minimal width of gauge arcs until the innerRadius disappears.
     */
    arcs?: {
      minWidth: number;
    };

    /**
     * Set the length of the arc to be drawn in percent from -100 to 100.
     * Negative value will draw the arc **counterclockwise**.
     */
    arcLength?: number;
  }*/
          v);
  external dynamic
      /*{
    interpolation?: {
      /**
       * Set custom spline interpolation
       */
      type?:
        | "basis"
        | "basis-open"
        | "bundle"
        | "cardinal"
        | "cardinal-closed"
        | "cardinal-open"
        | "catmull-rom"
        | "catmull-rom-closed"
        | "catmull-rom-open"
        | "monotone-x"
        | "monotone-y"
        | "natural"
        | "linear-closed"
        | "linear"
        | "step"
        | "step-after"
        | "step-before";
    };
  }*/
      get spline;
  external set spline(
      dynamic
          /*{
    interpolation?: {
      /**
       * Set custom spline interpolation
       */
      type?:
        | "basis"
        | "basis-open"
        | "bundle"
        | "cardinal"
        | "cardinal-closed"
        | "cardinal-open"
        | "catmull-rom"
        | "catmull-rom-closed"
        | "catmull-rom-open"
        | "monotone-x"
        | "monotone-y"
        | "natural"
        | "linear-closed"
        | "linear"
        | "step"
        | "step-after"
        | "step-before";
    };
  }*/
          v);

  /// Set a callback to execute when the chart is initialized.
  external set oninit(void Function() VoidFunc);

  /// Set a callback to execute after the chart is initialized
  external set onafterinit(void Function() VoidFunc);

  /// Set a callback to execute before the chart is initialized
  external set onbeforeinit(void Function() VoidFunc);

  /// Set a callback which is executed when the chart is rendered. Basically, this callback will be called in each time when the chart is redrawed.
  external set onrendered(void Function() VoidFunc);

  /// Set a callback to execute when mouse/touch enters the chart.
  external set onover(void Function() VoidFunc);

  /// Set a callback to execute when mouse/touch leaves the chart.
  external set onout(void Function() VoidFunc);

  /// Set a callback to execute when user resizes the screen.
  external set onresize(void Function() VoidFunc);

  /// Set a callback to execute when screen resize finished.
  external set onresized(void Function() VoidFunc);

  /// Set 'clip-path' attribute for chart element.
  /// When is false, chart node element is positioned after the axis node in DOM tree hierarchy.
  /// Is to make chart element positioned over axis element.
  external bool get clipPath;
  external set clipPath(bool v);

  /// Set plugins
  external List<Plugin> get plugins;
  external set plugins(List<Plugin> v);

  /// Control the render timing
  external dynamic
      /*{
    /**
     * Make to not render at initialization (enabled by default when bind element's visibility is hidden).
     */
    lazy?: boolean;

    /**
     * Observe bind element's visibility(`display` or `visiblity` inline css property or class value) & render when is visible automatically (for IEs, only works IE11+).
     * When set to **false**, call [`.flush()`](./Chart.html#flush) to render.
     */
    observe?: boolean;
  }*/
      get render;
  external set render(
      dynamic
          /*{
    /**
     * Make to not render at initialization (enabled by default when bind element's visibility is hidden).
     */
    lazy?: boolean;

    /**
     * Observe bind element's visibility(`display` or `visiblity` inline css property or class value) & render when is visible automatically (for IEs, only works IE11+).
     * When set to **false**, call [`.flush()`](./Chart.html#flush) to render.
     */
    observe?: boolean;
  }*/
          v);
  external dynamic
      /*{
    /**
     * Set the title text.
     * If contains \n, it's used as line break allowing multiline title.
     */
    text?: string;

    padding?: {
      /**
       * Top padding value.
       */
      top?: number;

      /**
       * Bottom padding value.
       */
      bottom?: number;

      /**
       * Right padding value.
       */
      right?: number;

      /**
       * Left padding value.
       */
      left?: number;
    };

    /**
     * Set the position. Default value is 'center'
     */
    position?: "center" | "right" | "left";
  }*/
      get title;
  external set title(
      dynamic
          /*{
    /**
     * Set the title text.
     * If contains \n, it's used as line break allowing multiline title.
     */
    text?: string;

    padding?: {
      /**
       * Top padding value.
       */
      top?: number;

      /**
       * Bottom padding value.
       */
      bottom?: number;

      /**
       * Right padding value.
       */
      right?: number;

      /**
       * Left padding value.
       */
      left?: number;
    };

    /**
     * Set the position. Default value is 'center'
     */
    position?: "center" | "right" | "left";
  }*/
          v);
}

@anonymous
@JS()
abstract class AreaLinearGradientOptions {
  /// x1, x2 attributes
  external List<num> /*Tuple of <num,num>*/ get x;
  external set x(List<num> /*Tuple of <num,num>*/ v);

  /// y1, y2 attributes
  external List<num> /*Tuple of <num,num>*/ get y;
  external set y(List<num> /*Tuple of <num,num>*/ v);

  /// The ramp of colors to use on a gradient
  /// offset, stop-color, stop-opacity
  /// - setting 'null' for stop-color, will set its original data color
  /// - setting 'function' for stop-color, will pass data id as argument. It should return color string or null value
  external List<
          List<
              dynamic /*num|String|String Function(String)*/ > /*Tuple of <num,String|Null|String Function(String),num>*/ >
      get stops;
  external set stops(
      List<List<dynamic /*num|String|String Function(String)*/ > /*Tuple of <num,String|Null|String Function(String),num>*/ >
          v);
  external factory AreaLinearGradientOptions(
      {List<num> /*Tuple of <num,num>*/ x,
      List<num> /*Tuple of <num,num>*/ y,
      List<List<dynamic /*num|String|String Function(String)*/ > /*Tuple of <num,String|Null|String Function(String),num>*/ >
          stops});
}

@anonymous
@JS()
abstract class RegionOptions {
  external String get axis;
  external set axis(String v);
  external dynamic /*String|num|DateTime*/ get start;
  external set start(dynamic /*String|num|DateTime*/ v);
  external dynamic /*String|num|DateTime*/ get end;
  external set end(dynamic /*String|num|DateTime*/ v);
  external String get JS$class;
  external set JS$class(String v);
  external factory RegionOptions(
      {String axis,
      dynamic /*String|num|DateTime*/ start,
      dynamic /*String|num|DateTime*/ end});
}

@anonymous
@JS()
abstract class LegendOptions {
  /// Show or hide legend.
  external bool get show;
  external set show(bool v);

  /// Hide legend
  /// If true given, all legend will be hidden. If string or array given, only the legend that has the id will be hidden.
  external dynamic /*bool|List<String>|String*/ get hide;
  external set hide(dynamic /*bool|List<String>|String*/ v);

  /// Change the position of legend.
  /// Currently bottom, right and inset are supported.
  external String get position;
  external set position(String v);

  /// Change inset legend attributes.
  /// This option accepts object that has the keys anchor, x, y and step.
  /// - anchor: decides the position of the legend. These anchors are available: top-left, top-right, bottom-left, bottom-right
  /// - x and y: set the position of the legend based on the anchor.
  /// - step: defines the max step the lagend has (e.g. If 2 set and legend has 3 legend item, the legend 2 columns).
  external dynamic
      /*{
    anchor?: string;
    x?: number;
    y?: number;
    step?: number;
  }*/
      get inset;
  external set inset(
      dynamic
          /*{
    anchor?: string;
    x?: number;
    y?: number;
    step?: number;
  }*/
          v);

  /// Padding between legend elements.
  external num get padding;
  external set padding(num v);
  external dynamic
      /*{
    /**
     * Tile settings for legend color display.
     */
    tile?: {
      /**
       * Tile width.
       */
      width?: number;

      /**
       * Tile height
       */
      height?: number;
    };
    /**
     * Set click event handler to the legend item.
     */
    onclick?(this: Chart, id: DataItem): void;

    /**
     * Set mouseover event handler to the legend item.
     */
    onover?(this: Chart, id: DataItem): void;

    /**
     * Set mouseout event handler to the legend item.
     */
    onout?(this: Chart, id: DataItem): void;
  }*/
      get item;
  external set item(
      dynamic
          /*{
    /**
     * Tile settings for legend color display.
     */
    tile?: {
      /**
       * Tile width.
       */
      width?: number;

      /**
       * Tile height
       */
      height?: number;
    };
    /**
     * Set click event handler to the legend item.
     */
    onclick?(this: Chart, id: DataItem): void;

    /**
     * Set mouseover event handler to the legend item.
     */
    onover?(this: Chart, id: DataItem): void;

    /**
     * Set mouseout event handler to the legend item.
     */
    onout?(this: Chart, id: DataItem): void;
  }*/
          v);

  /// Set legend templates
  external dynamic
      /*{
    /**
     * Set CSS selector or element reference to bind legend items.
     */
    bindto?: string | HTMLElement;

    /**
     * Set item's template.
     * If set string value, within template the 'color' and 'title' can be replaced using template-like syntax string:
     *  {=COLOR}: data color value
     *  {=TITLE}: data title value
     *  If set function value, will pass following arguments to the given function:
     *  title {String}: data's id value
     *  color {String}: color string
     *  data {Array}: data array
     */
    template?:
      | ((this: Chart, title: string, color: string, data: DataItem[]) => void)
      | string;
  }*/
      get contents;
  external set contents(
      dynamic
          /*{
    /**
     * Set CSS selector or element reference to bind legend items.
     */
    bindto?: string | HTMLElement;

    /**
     * Set item's template.
     * If set string value, within template the 'color' and 'title' can be replaced using template-like syntax string:
     *  {=COLOR}: data color value
     *  {=TITLE}: data title value
     *  If set function value, will pass following arguments to the given function:
     *  title {String}: data's id value
     *  color {String}: color string
     *  data {Array}: data array
     */
    template?:
      | ((this: Chart, title: string, color: string, data: DataItem[]) => void)
      | string;
  }*/
          v);

  /// Whether to use custom points in legend.
  external bool get usePoint;
  external set usePoint(bool v);
  external factory LegendOptions(
      {bool show,
      dynamic /*bool|List<String>|String*/ hide,
      String position,
      dynamic
          /*{
    anchor?: string;
    x?: number;
    y?: number;
    step?: number;
  }*/
          inset,
      num padding,
      dynamic
          /*{
    /**
     * Tile settings for legend color display.
     */
    tile?: {
      /**
       * Tile width.
       */
      width?: number;

      /**
       * Tile height
       */
      height?: number;
    };
    /**
     * Set click event handler to the legend item.
     */
    onclick?(this: Chart, id: DataItem): void;

    /**
     * Set mouseover event handler to the legend item.
     */
    onover?(this: Chart, id: DataItem): void;

    /**
     * Set mouseout event handler to the legend item.
     */
    onout?(this: Chart, id: DataItem): void;
  }*/
          item,
      dynamic
          /*{
    /**
     * Set CSS selector or element reference to bind legend items.
     */
    bindto?: string | HTMLElement;

    /**
     * Set item's template.
     * If set string value, within template the 'color' and 'title' can be replaced using template-like syntax string:
     *  {=COLOR}: data color value
     *  {=TITLE}: data title value
     *  If set function value, will pass following arguments to the given function:
     *  title {String}: data's id value
     *  color {String}: color string
     *  data {Array}: data array
     */
    template?:
      | ((this: Chart, title: string, color: string, data: DataItem[]) => void)
      | string;
  }*/
          contents,
      bool usePoint});
}

@anonymous
@JS()
abstract class TooltipOptions {
  external factory TooltipOptions();

  /// Show or hide tooltip.
  external bool get show;
  external set show(bool v);

  /// Make tooltip keep showing not hiding on interaction.
  external bool get doNotHide;
  external set doNotHide(bool v);

  /// Set if tooltip is grouped or not for the data points.
  external bool get grouped;
  external set grouped(bool v);
  external dynamic
      /*{
    /**
     * Set format for the title of tooltip. Specified function receives x of the data point to show.
     */
    title?(this: Chart, x: any): string;

    /**
     * Set format for the name of each data in tooltip.
     * Specified function receives name, ratio, id and index of the data point to show.
     * ratio will be undefined if the chart is not donut/pie/gauge.
     */
    name?(
      this: Chart,
      name: string,
      ratio: number,
      id: string,
      index: number
    ): string;

    /**
     * Set format for the value of each data in tooltip.
     * Specified function receives name, ratio, id and index of the data point to show.
     * ratio will be undefined if the chart is not donut/pie/gauge.
     * If undefined returned, the row of that value will be skipped.
     */
    value?(
      this: Chart,
      value: any,
      ratio: number,
      id: string,
      index: number
    ): string;
  }*/
      get format;
  external set format(
      dynamic
          /*{
    /**
     * Set format for the title of tooltip. Specified function receives x of the data point to show.
     */
    title?(this: Chart, x: any): string;

    /**
     * Set format for the name of each data in tooltip.
     * Specified function receives name, ratio, id and index of the data point to show.
     * ratio will be undefined if the chart is not donut/pie/gauge.
     */
    name?(
      this: Chart,
      name: string,
      ratio: number,
      id: string,
      index: number
    ): string;

    /**
     * Set format for the value of each data in tooltip.
     * Specified function receives name, ratio, id and index of the data point to show.
     * ratio will be undefined if the chart is not donut/pie/gauge.
     * If undefined returned, the row of that value will be skipped.
     */
    value?(
      this: Chart,
      value: any,
      ratio: number,
      id: string,
      index: number
    ): string;
  }*/
          v);

  /// Set tooltip values order
  /// Available Values: desc, asc, any[], function (data1, data2) { ... }, null
  external dynamic /*String|List<dynamic>|num Function(dynamic, dynamic)|Null*/ get order;
  external set order(
      dynamic /*String|List<dynamic>|num Function(dynamic, dynamic)|Null*/ v);

  /// Set custom position function for the tooltip.
  /// This option can be used to modify the tooltip position by returning object that has top and left.
  external dynamic /*{ top: number; left: number }*/ Function(
      dynamic, num, num, dynamic) get position;
  external set position(
      dynamic /*{ top: number; left: number }*/ Function(
              dynamic, num, num, dynamic)
          v);

  /// Set custom HTML for the tooltip.
  /// Specified function receives data, defaultTitleFormat, defaultValueFormat and color of the data point to show.
  /// If tooltip.grouped is true, data includes multiple data points.
  external dynamic
      /*String Function(dynamic, String, String, dynamic)|{
        /**
         * Set CSS selector or element reference to bind tooltip.
         */
        bindto?: string | HTMLElement;

        /**
         * Within template, below syntax will be replaced using template-like syntax string:
         *  - {{ ... }}: the doubly curly brackets indicate loop block for data rows
         *  - {=CLASS_TOOLTIP}: default tooltip class name `bb-tooltip`.
         *  - {=CLASS_TOOLTIP_NAME}: default tooltip data class name (ex. `bb-tooltip-name-data1`)
         *  - {=TITLE}: title value
         *  - {=COLOR}: data color
         *  - {=VALUE}: data value
         */
        template?: string;

        /**
         * Set additional text content within data loop, using template syntax.
         *  - NOTE: It should contain `{ key: Array, ... }` value
         *    - 'key' name is used as substitution within template as '{=KEY}'
         *    - The value array length should match with the data length
         */
        text?: { [key: string]: string[] | number[] };
      }*/
      get contents;
  external set contents(
      dynamic
          /*String Function(dynamic, String, String, dynamic)|{
        /**
         * Set CSS selector or element reference to bind tooltip.
         */
        bindto?: string | HTMLElement;

        /**
         * Within template, below syntax will be replaced using template-like syntax string:
         *  - {{ ... }}: the doubly curly brackets indicate loop block for data rows
         *  - {=CLASS_TOOLTIP}: default tooltip class name `bb-tooltip`.
         *  - {=CLASS_TOOLTIP_NAME}: default tooltip data class name (ex. `bb-tooltip-name-data1`)
         *  - {=TITLE}: title value
         *  - {=COLOR}: data color
         *  - {=VALUE}: data value
         */
        template?: string;

        /**
         * Set additional text content within data loop, using template syntax.
         *  - NOTE: It should contain `{ key: Array, ... }` value
         *    - 'key' name is used as substitution within template as '{=KEY}'
         *    - The value array length should match with the data length
         */
        text?: { [key: string]: string[] | number[] };
      }*/
          v);
  external dynamic
      /*{
    /**
     * Show tooltip at the initialization.
     */
    show?: boolean;

    /**
     * Set x Axis index to be shown at the initialization.
     */
    x?: number;

    /**
     * Set the position of tooltip at the initialization.
     */
    position?: {
      top?: string;
      left?: string;
    };
  }*/
      get init;
  external set init(
      dynamic
          /*{
    /**
     * Show tooltip at the initialization.
     */
    show?: boolean;

    /**
     * Set x Axis index to be shown at the initialization.
     */
    x?: number;

    /**
     * Set the position of tooltip at the initialization.
     */
    position?: {
      top?: string;
      left?: string;
    };
  }*/
          v);

  /// Set a callback that will be invoked before the tooltip is shown.
  external void onshow(/*Chart this*/ DataItem selectedData);

  /// Set a callback that will be invoked after the tooltip is shown
  external void onshown(/*Chart this*/ DataItem selectedData);

  /// Set a callback that will be invoked before the tooltip is hidden.
  external void onhide(/*Chart this*/ DataItem selectedData);

  /// Set a callback that will be invoked after the tooltip is hidden.
  external void onhidden(/*Chart this*/ DataItem selectedData);

  /// Set if tooltips on all visible charts with like x points are shown together when one is shown.
  external dynamic
      /*bool|{
        /**
         * Groping name for linked tooltip.
         * If specified, linked tooltip will be groped interacting to be worked only with the same name.
         */
        name?: string;
      }*/
      get linked;
  external set linked(
      dynamic
          /*bool|{
        /**
         * Groping name for linked tooltip.
         * If specified, linked tooltip will be groped interacting to be worked only with the same name.
         */
        name?: string;
      }*/
          v);
}

@anonymous
@JS()
abstract class SubchartOptions {
  /// Show sub chart on the bottom of the chart.
  external bool get show;
  external set show(bool v);
  external dynamic
      /*{
    /**
     * Change the height of the subchart.
     */
    height: number;
  }*/
      get size;
  external set size(
      dynamic
          /*{
    /**
     * Change the height of the subchart.
     */
    height: number;
  }*/
          v);
  external dynamic
      /*{
    x?: {
      /**
       * Show or hide x axis.
       */
      show?: boolean;
      tick?: {
        /**
         * Show or hide x axis tick line.
         */
        show?: boolean;
        text?: {
          /**
           * Show or hide x axis tick text.
           */
          show?: boolean;
        };
      };
    };
  }*/
      get axis;
  external set axis(
      dynamic
          /*{
    x?: {
      /**
       * Show or hide x axis.
       */
      show?: boolean;
      tick?: {
        /**
         * Show or hide x axis tick line.
         */
        show?: boolean;
        text?: {
          /**
           * Show or hide x axis tick text.
           */
          show?: boolean;
        };
      };
    };
  }*/
          v);

  /// Set callback for brush event.
  /// Specified function receives the current zoomed x domain.
  external void onbrush(/*Chart this*/ dynamic domain);
}

@anonymous
@JS()
abstract class ZoomOptions {
  /// Enable zooming.
  external bool get enabled;
  external set enabled(bool v);

  /// Set zoom interaction type.
  external String /*'wheel'|'drag'*/ get type;
  external set type(String /*'wheel'|'drag'*/ v);

  /// Enable to rescale after zooming.
  /// If true set, y domain will be updated according to the zoomed region.
  external bool get rescale;
  external set rescale(bool v);

  /// Change zoom extent.
  external List<num> /*Tuple of <num,num>*/ get extent;
  external set extent(List<num> /*Tuple of <num,num>*/ v);
  external dynamic
      /*{
    /**
     * Set x Axis minimum zoom range
     */
    min?: number | Date;

    /**
     * Set x Axis maximum zoom range
     */
    max?: number | Date;
  }*/
      get x;
  external set x(
      dynamic
          /*{
    /**
     * Set x Axis minimum zoom range
     */
    min?: number | Date;

    /**
     * Set x Axis maximum zoom range
     */
    max?: number | Date;
  }*/
          v);

  /// Set callback that is called when zooming starts.
  /// Specified function receives the zoom event.
  external void onzoomstart(/*Chart this*/ Event event);

  /// Set callback that is called when the chart is zooming.
  /// Specified function receives the zoomed domain.
  external void onzoom(/*Chart this*/ dynamic domain);

  /// Set callback that is called when zooming ends.
  /// Specified function receives the zoomed domain.
  external void onzoomend(/*Chart this*/ dynamic domain);

  /// Set to display zoom reset button for 'drag' type zoom
  external dynamic
      /*bool|{
        /**
         * Set callback when clicks the reset button. The callback will receive reset button element reference as argument.
         */
        onclick?(this: Chart, button: HTMLElement): void;

        /**
         * Text value for zoom reset button.
         */
        text?: string;
      }*/
      get resetButton;
  external set resetButton(
      dynamic
          /*bool|{
        /**
         * Set callback when clicks the reset button. The callback will receive reset button element reference as argument.
         */
        onclick?(this: Chart, button: HTMLElement): void;

        /**
         * Text value for zoom reset button.
         */
        text?: string;
      }*/
          v);
}

@anonymous
@JS()
abstract class PointOptions {
  /// Whether to show each point in line.
  external bool get show;
  external set show(bool v);

  /// The radius size of each point.
  external dynamic /*num|num Function(DataItem)*/ get r;
  external set r(dynamic /*num|num Function(DataItem)*/ v);
  external dynamic
      /*{
    expand: {
      /**
       * Whether to expand each point on focus.
       */
      enabled?: boolean;

      /**
       * The radius size of each point on focus.
       */
      r?: number;
    };

    /**
     * Show point only when is focused.
     */
    only?: boolean;
  }*/
      get focus;
  external set focus(
      dynamic
          /*{
    expand: {
      /**
       * Whether to expand each point on focus.
       */
      enabled?: boolean;

      /**
       * The radius size of each point on focus.
       */
      r?: number;
    };

    /**
     * Show point only when is focused.
     */
    only?: boolean;
  }*/
          v);

  /// Set point opacity value.
  external num /*num|Null*/ get opacity;
  external set opacity(num /*num|Null*/ v);
  external dynamic
      /*{
    /**
     * The radius size of each point on selected.
     */
    r?: number;
  }*/
      get select;
  external set select(
      dynamic
          /*{
    /**
     * The radius size of each point on selected.
     */
    r?: number;
  }*/
          v);

  /// The senstivity value for interaction boundary.
  external num get sensitivity;
  external set sensitivity(num v);

  /// The type of point to be drawn
  /// - NOTE: If chart has 'bubble' type, only circle can be used.
  /// For IE, non circle point expansions are not supported due to lack of transform support.
  /// - Available Values:
  /// - circle
  /// - rectangle
  external String get type;
  external set type(String v);

  /// The type of point or svg shape as string, to be drawn for each line
  /// - NOTE:
  /// This is an experimental feature and can have some unexpected behaviors.
  /// If chart has 'bubble' type, only circle can be used.
  /// For IE, non circle point expansions are not supported due to lack of transform support.
  /// - Available Values:
  /// - circle
  /// - rectangle
  /// - svg shape tag interpreted as string (ex. <polygon points='2.5 0 0 5 5 5'></polygon>)
  external List<String> get pattern;
  external set pattern(List<String> v);
  external factory PointOptions(
      {bool show,
      dynamic /*num|num Function(DataItem)*/ r,
      dynamic
          /*{
    expand: {
      /**
       * Whether to expand each point on focus.
       */
      enabled?: boolean;

      /**
       * The radius size of each point on focus.
       */
      r?: number;
    };

    /**
     * Show point only when is focused.
     */
    only?: boolean;
  }*/
          focus,
      num /*num|Null*/ opacity,
      dynamic
          /*{
    /**
     * The radius size of each point on selected.
     */
    r?: number;
  }*/
          select,
      num sensitivity,
      String type,
      List<String> pattern});
}

@anonymous
@JS()
abstract class Grid {
  /// Set 'grid & focus lines' to be positioned over grid lines and chart elements.
  external bool get front;
  external set front(bool v);
  external dynamic
      /*{
    /**
     * Show edged focus grid line.
     * **NOTE:** Available when [`tooltip.grouped=false`](#.tooltip) option is set.
     */
    edge?: boolean;

    /**
     * Show grids when focus.
     */
    show?: boolean;

    /**
     * Show y coordinate focus grid line.
     * **NOTE:** Available when [`tooltip.grouped=false`](#.tooltip) option is set.
     */
    y?: boolean;
  }*/
      get focus;
  external set focus(
      dynamic
          /*{
    /**
     * Show edged focus grid line.
     * **NOTE:** Available when [`tooltip.grouped=false`](#.tooltip) option is set.
     */
    edge?: boolean;

    /**
     * Show grids when focus.
     */
    show?: boolean;

    /**
     * Show y coordinate focus grid line.
     * **NOTE:** Available when [`tooltip.grouped=false`](#.tooltip) option is set.
     */
    y?: boolean;
  }*/
          v);
  external dynamic
      /*{
    /**
     * Set grid lines to be positioned over chart elements.
     */
    front?: boolean;
  }*/
      get lines;
  external set lines(
      dynamic
          /*{
    /**
     * Set grid lines to be positioned over chart elements.
     */
    front?: boolean;
  }*/
          v);
  external dynamic
      /*{
    /**
     * Show grids along x axis.
     */
    show?: boolean;

    /**
     * Show additional grid lines along x axis.
     * This option accepts array including object that has value, text, position and class.
     * text, position and class are optional. For position, start, middle and end (default) are available.
     * If x axis is category axis, value can be category name.
     * If x axis is timeseries axis, value can be date string, Date object and unixtime integer.
     */
    lines?: LineOptions[];
  }*/
      get x;
  external set x(
      dynamic
          /*{
    /**
     * Show grids along x axis.
     */
    show?: boolean;

    /**
     * Show additional grid lines along x axis.
     * This option accepts array including object that has value, text, position and class.
     * text, position and class are optional. For position, start, middle and end (default) are available.
     * If x axis is category axis, value can be category name.
     * If x axis is timeseries axis, value can be date string, Date object and unixtime integer.
     */
    lines?: LineOptions[];
  }*/
          v);
  external dynamic
      /*{
    /**
     * Show grids along y axis.
     */
    show?: boolean;

    /**
     * Show additional grid lines along y axis.
     * This option accepts array including object that has value, text, position and class.
     */
    lines?: LineOptions[];

    /**
     * Number of y grids to be shown.
     */
    ticks?: number;
  }*/
      get y;
  external set y(
      dynamic
          /*{
    /**
     * Show grids along y axis.
     */
    show?: boolean;

    /**
     * Show additional grid lines along y axis.
     * This option accepts array including object that has value, text, position and class.
     */
    lines?: LineOptions[];

    /**
     * Number of y grids to be shown.
     */
    ticks?: number;
  }*/
          v);
  external factory Grid(
      {bool front,
      dynamic
          /*{
    /**
     * Show edged focus grid line.
     * **NOTE:** Available when [`tooltip.grouped=false`](#.tooltip) option is set.
     */
    edge?: boolean;

    /**
     * Show grids when focus.
     */
    show?: boolean;

    /**
     * Show y coordinate focus grid line.
     * **NOTE:** Available when [`tooltip.grouped=false`](#.tooltip) option is set.
     */
    y?: boolean;
  }*/
          focus,
      dynamic
          /*{
    /**
     * Set grid lines to be positioned over chart elements.
     */
    front?: boolean;
  }*/
          lines,
      dynamic
          /*{
    /**
     * Show grids along x axis.
     */
    show?: boolean;

    /**
     * Show additional grid lines along x axis.
     * This option accepts array including object that has value, text, position and class.
     * text, position and class are optional. For position, start, middle and end (default) are available.
     * If x axis is category axis, value can be category name.
     * If x axis is timeseries axis, value can be date string, Date object and unixtime integer.
     */
    lines?: LineOptions[];
  }*/
          x,
      dynamic
          /*{
    /**
     * Show grids along y axis.
     */
    show?: boolean;

    /**
     * Show additional grid lines along y axis.
     * This option accepts array including object that has value, text, position and class.
     */
    lines?: LineOptions[];

    /**
     * Number of y grids to be shown.
     */
    ticks?: number;
  }*/
          y});
}

@anonymous
@JS()
abstract class LineOptions {
  external dynamic /*String|num|DateTime*/ get value;
  external set value(dynamic /*String|num|DateTime*/ v);
  external String get text;
  external set text(String v);
  external String get axis;
  external set axis(String v);
  external String get position;
  external set position(String v);
  external String get JS$class;
  external set JS$class(String v);
  external factory LineOptions(
      {dynamic /*String|num|DateTime*/ value,
      String text,
      String axis,
      String position});
}

@anonymous
@JS()
abstract class Data {
  external factory Data();

  external dynamic get unload;
  external set unload(dynamic v);

  /// Load a CSV or JSON file from a URL.
  /// Note that this will not work if loading via the "file://" protocol as most browsers with block XMLHTTPRequests.
  external String get url;
  external set url(String v);

  /// Load data from a multidimensional array, with the first element containing the data names, the following containing related data in that order.
  external List<List<dynamic /*String|bool|num|DateTime|Null*/ >> get rows;
  external set rows(List<List<dynamic /*String|bool|num|DateTime|Null*/ >> v);

  /// Load data from a multidimensional array, with each element containing an array consisting of a datum name and associated data values.
  external List<List<dynamic /*String|bool|num|DateTime|Null*/ >> get columns;
  external set columns(
      List<List<dynamic /*String|bool|num|DateTime|Null*/ >> v);

  /// XHR header value
  /// - NOTE: Should be used with data.url option
  external List<dynamic /*JSMap of <String,String>*/ > get headers;
  external set headers(List<dynamic /*JSMap of <String,String>*/ > v);

  /// Hide each data when the chart appears.
  /// If true specified, all of data will be hidden. If multiple ids specified as an array, those will be hidden.
  external dynamic /*bool|List<String>*/ get hide;
  external set hide(dynamic /*bool|List<String>*/ v);

  /// Converts data id value
  external String Function(String) get idConverter;
  external set idConverter(String Function(String) v);

  /// Parse a JSON object for data.
  external dynamic /*{}*/ get json;
  external set json(dynamic /*{}*/ v);

  /// Used if loading JSON via data.url
  external String get mimeType;
  external set mimeType(String v);

  /// Choose which JSON object keys correspond to desired data.
  external dynamic /*{ x?: string; value: string[] }*/ get keys;
  external set keys(dynamic /*{ x?: string; value: string[] }*/ v);

  /// Specify the key of x values in the data.
  /// We can show the data with non-index x values by th is option. This option is required when the type of x axis is timeseries.
  /// If this option is set on category axis, the values of the data
  /// on the key will be used for category names.
  external String get x;
  external set x(String v);

  /// Specify the keys of the x values for each data.
  /// This option can be used if we want to show the data that has different x values.
  external dynamic /*JSMap of <String,String>*/ get xs;
  external set xs(dynamic /*JSMap of <String,String>*/ v);

  /// Set a format to parse string specifed as x.
  /// Default is %Y-%m-%d
  external String get xFormat;
  external set xFormat(String v);

  /// Set localtime format to parse x axis.
  external bool get xLocaltime;
  external set xLocaltime(bool v);

  /// Sort on x axis.
  external bool get xSort;
  external set xSort(bool v);

  /// Set custom data name.
  external dynamic /*JSMap of <String,String>*/ get names;
  external set names(dynamic /*JSMap of <String,String>*/ v);

  /// Set custom data class.
  /// If this option is specified, the element g for the data has an additional class that has the prefix billboard-target- (e.g. billboard-target-additional-data1-class).
  external dynamic /*JSMap of <String,String>*/ get classes;
  external set classes(dynamic /*JSMap of <String,String>*/ v);

  /// Set groups for the data for stacking.
  external List<List<String>> get groups;
  external set groups(List<List<String>> v);

  /// Set y axis the data related to. y and y2 can be used.
  /// - **NOTE:** If all data is related to one of the axes, the domain of axis without related data will be replaced by the domain from the axis with related data
  external dynamic /*JSMap of <String,String>*/ get axes;
  external set axes(dynamic /*JSMap of <String,String>*/ v);

  /// Set chart type at once.
  /// If this option is specified, the type will be applied to every data. This setting can be overwritten by data.types.
  /// - Available Values: area, area-line-range, area-spline, area-spline-range, area-step, bar, bubble, donut, gauge, line, pie, radar, scatter, spline, step
  external String /*'area'|'area-line-range'|'area-spline'|'area-spline-range'|'area-step'|'bar'|'bubble'|'donut'|'gauge'|'line'|'pie'|'radar'|'scatter'|'spline'|'step'*/ get type;
  external set type(
      String /*'area'|'area-line-range'|'area-spline'|'area-spline-range'|'area-step'|'bar'|'bubble'|'donut'|'gauge'|'line'|'pie'|'radar'|'scatter'|'spline'|'step'*/ v);

  /// Set chart type for each data.
  /// This setting overwrites data.type setting.
  external dynamic /*JSMap of <String,'area'|'area-line-range'|'area-spline'|'area-spline-range'|'area-step'|'bar'|'bubble'|'donut'|'gauge'|'line'|'pie'|'radar'|'scatter'|'spline'|'step'>*/ get types;
  external set types(
      dynamic /*JSMap of <String,'area'|'area-line-range'|'area-spline'|'area-spline-range'|'area-step'|'bar'|'bubble'|'donut'|'gauge'|'line'|'pie'|'radar'|'scatter'|'spline'|'step'>*/ v);

  /// Show labels on each data points or set formatter function for data labels.
  /// The formatter function receives 4 arguments such as v, id, i, j and it must return a string that will be shown as the label. The arguments are:
  /// - v is the value of the data point where the label is shown.
  /// - id is the id of the data where the label is shown.
  /// - i is the index of the data point where the label is shown.
  /// - j is the sub index of the data point where the label is shown.
  external dynamic
      /*bool|{
        /**
         * Centerize labels on `bar` shape. (**NOTE:** works only for 'bar' type)
         */
        centered?: boolean;

        /**
         * Set label text colors.
         */
        colors?:
          | string
          | { [key: string]: string }
          | ((this: Chart, color: string, d: DataItem) => string);

        /**
         * The formatter function receives 4 arguments such as v, id, i, j and it **must return a string**(`\n` character will be used as line break) that will be shown as the label.<br><br>
         * The arguments are:<br>
         *  - `v` is the value of the data point where the label is shown.
         *  - `id` is the id of the data where the label is shown.
         *  - `i` is the index of the data point where the label is shown.
         *  - `j` is the sub index of the data point where the label is shown.<br><br>
         * Formatter function can be defined for each data by specifying as an object and D3 formatter function can be set (ex. d3.format('$'))
         */
        format?: FormatFunction | { [key: string]: FormatFunction };

        position?: {
          /**
           * Set each dataset position, relative the original.
           */
          [key: string]:
            | {
                /**
                 * x coordinate position, relative the original.
                 */
                x?: number;

                /**
                 * y coordinate position, relative the original.
                 */
                y?: number;
              }
            | {
                /**
                 * x coordinate position, relative the original.
                 */
                x?: number;

                /**
                 * y coordinate position, relative the original.
                 */
                y?: number;
              };
        };
      }*/
      get labels;
  external set labels(
      dynamic
          /*bool|{
        /**
         * Centerize labels on `bar` shape. (**NOTE:** works only for 'bar' type)
         */
        centered?: boolean;

        /**
         * Set label text colors.
         */
        colors?:
          | string
          | { [key: string]: string }
          | ((this: Chart, color: string, d: DataItem) => string);

        /**
         * The formatter function receives 4 arguments such as v, id, i, j and it **must return a string**(`\n` character will be used as line break) that will be shown as the label.<br><br>
         * The arguments are:<br>
         *  - `v` is the value of the data point where the label is shown.
         *  - `id` is the id of the data where the label is shown.
         *  - `i` is the index of the data point where the label is shown.
         *  - `j` is the sub index of the data point where the label is shown.<br><br>
         * Formatter function can be defined for each data by specifying as an object and D3 formatter function can be set (ex. d3.format('$'))
         */
        format?: FormatFunction | { [key: string]: FormatFunction };

        position?: {
          /**
           * Set each dataset position, relative the original.
           */
          [key: string]:
            | {
                /**
                 * x coordinate position, relative the original.
                 */
                x?: number;

                /**
                 * y coordinate position, relative the original.
                 */
                y?: number;
              }
            | {
                /**
                 * x coordinate position, relative the original.
                 */
                x?: number;

                /**
                 * y coordinate position, relative the original.
                 */
                y?: number;
              };
        };
      }*/
          v);

  /// Define the order of the data.
  /// This option changes the order of stacking the data and pieces of pie/donut. If null specified, it will be the order the data loaded.
  /// If function specified, it will be used to sort the data and it will recieve the data as argument.
  /// - Available Values: desc, asc, function (data1, data2) { ... }, null
  /// **NOTE**: order function, only works for Axis based types & Arc types, except `Radar` type.
  external dynamic /*'asc'|'desc'|num Function(IData, IData)|Null*/ get order;
  external set order(
      dynamic /*'asc'|'desc'|num Function(IData, IData)|Null*/ v);

  /// Define regions for each data.
  /// The values must be an array for each data and it should include an object that has start, end, style.
  /// If start is not set, the start will be the first data point. If end is not set, the end will be the last data point.
  /// Currently this option supports only line chart and dashed style. If this option specified, the line will be dashed only in the regions.
  external dynamic
      /*JSMap of <String,List<{
      start?: number;
      end?: number;
      style?: {
        dasharray?: string;
      };
    }>>*/
      get regions;
  external set regions(
      dynamic
          /*JSMap of <String,List<{
      start?: number;
      end?: number;
      style?: {
        dasharray?: string;
      };
    }>>*/
          v);

  /// Set color converter function.
  /// This option should a function and the specified function receives color (e.g. '#ff0000') and d that has data parameters like id, value, index, etc.
  /// And it must return a string that represents color (e.g. '#00ff00').
  external String color(/*Chart this*/ String color, DataItem d);

  /// Set color for each data.
  external dynamic /*JSMap of <String,String|String Function(DataItem)>*/ get colors;
  external set colors(
      dynamic /*JSMap of <String,String|String Function(DataItem)>*/ v);

  /// Set text label to be displayed when there's no data to show.
  /// - ex. Toggling all visible data to not be shown, unloading all current data, etc.
  external dynamic /*{ label: { text: string } }*/ get empty;
  external set empty(dynamic /*{ label: { text: string } }*/ v);
  external dynamic
      /*{
    /**
     * Set data selection enabled
     * If this option is set true, we can select the data points and get/set its state of selection by API (e.g. select, unselect, selected).
     */
    enabled?: boolean;

    /**
     * Set grouped selection enabled.
     * If this option set true, multiple data points that have same x value will be selected by one selection.
     */
    grouped?: boolean;

    /**
     * Set multiple data points selection enabled.
     * If this option set true, multile data points can have the selected state at the same time.
     * If false set, only one data point can have the selected state and the others will be unselected when the new data point is selected.
     */
    multiple?: boolean;

    /**
     * Enable to select data points by dragging. If this option set true, data points can be selected by dragging.
     * NOTE: If this option set true, scrolling on the chart will be disabled because dragging event will handle the event.
     */
    draggable?: boolean;

    /**
     * Set a callback for each data point to determine if it's selectable or not.
     * The callback will receive d as an argument and it has some parameters like id, value, index. This callback should return boolean.
     * @param d Data object
     */
    isselectable?(this: Chart, d?: any): boolean;
  }*/
      get selection;
  external set selection(
      dynamic
          /*{
    /**
     * Set data selection enabled
     * If this option is set true, we can select the data points and get/set its state of selection by API (e.g. select, unselect, selected).
     */
    enabled?: boolean;

    /**
     * Set grouped selection enabled.
     * If this option set true, multiple data points that have same x value will be selected by one selection.
     */
    grouped?: boolean;

    /**
     * Set multiple data points selection enabled.
     * If this option set true, multile data points can have the selected state at the same time.
     * If false set, only one data point can have the selected state and the others will be unselected when the new data point is selected.
     */
    multiple?: boolean;

    /**
     * Enable to select data points by dragging. If this option set true, data points can be selected by dragging.
     * NOTE: If this option set true, scrolling on the chart will be disabled because dragging event will handle the event.
     */
    draggable?: boolean;

    /**
     * Set a callback for each data point to determine if it's selectable or not.
     * The callback will receive d as an argument and it has some parameters like id, value, index. This callback should return boolean.
     * @param d Data object
     */
    isselectable?(this: Chart, d?: any): boolean;
  }*/
          v);
  external bool Function(
      List<
          dynamic /*{
      id: string;
      id_org: string;
      values: Array<{
        x: number;
        value: number;
        id: string;
        index: number;
      }>;
    }*/
          >) get filter;
  external set filter(
      bool Function(
              List<
                  dynamic /*{
      id: string;
      id_org: string;
      values: Array<{
        x: number;
        value: number;
        id: string;
        index: number;
      }>;
    }*/
                  >)
          v);
  external dynamic
      /*{
    /**
     * Set the stacking to be normalized
     * - NOTE: For stacking, 'data.groups' option should be set
     *  - y Axis will be set in percentage value (0 ~ 100%)
     *  - Must have postive values
     */
    normalize?: boolean;
  }*/
      get stack;
  external set stack(
      dynamic
          /*{
    /**
     * Set the stacking to be normalized
     * - NOTE: For stacking, 'data.groups' option should be set
     *  - y Axis will be set in percentage value (0 ~ 100%)
     *  - Must have postive values
     */
    normalize?: boolean;
  }*/
          v);

  /// Set a callback for click event on each data point.
  /// This callback will be called when each data point clicked and will receive d and element as the arguments.
  /// - d is the data clicked and element is the element clicked. In this callback, this will be the Chart object.
  external set onclick(MouseEventCallback fn);

  /// Set a callback for mouse/touch over event on each data point.
  /// This callback will be called when mouse cursor or via touch moves onto each data point and will receive d as the argument.
  /// - d is the data where mouse cursor moves onto. In this callback, this will be the Chart object.
  external set onover(MouseEventCallback fn);

  /// Set a callback for mouse/touch event on each data point.
  /// This callback will be called when mouse cursor moves out each data point and will receive d as the argument.
  /// - d is the data where mouse cursor moves out. In this callback, this will be the Chart object.
  external set onout(MouseEventCallback fn);

  /// Set a callback for on data selection.
  external set onselected(MouseEventCallback fn);

  /// Set a callback for on data un-selection.
  external set onunselected(MouseEventCallback fn);

  /// Set a callback for minimum data
  /// - NOTE: For 'area-line-range' and 'area-spline-range', mid data will be taken for the comparison
  external set onmin(void Function(/*Chart this*/ List<DataItem> d) fn);

  /// Set a callback for maximum data
  /// - NOTE: For 'area-line-range' and 'area-spline-range', mid data will be taken for the comparison
  external set onmax(void Function(/*Chart this*/ List<DataItem> d) fn);
}

typedef void FormatFunction(/*Chart this*/ dynamic v, String id, num i, num j);
typedef MouseEventCallback = void Function(/*Chart this*/ DataItem d, [SvgElement element]);