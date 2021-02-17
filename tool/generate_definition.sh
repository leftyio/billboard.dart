# plugin not supported
# index.d.ts and option.d.ts handle manually

yarn run dart_js_facade_gen \
    --destination=lib/src/generated       \
    --base-path=billboard.js/             \
          billboard.js/src/ChartInternal/data/IData.ts    \
          billboard.js/types/plugin/plugin.d.ts           \
          billboard.js/types/chart.d.ts                   \
          billboard.js/types/types.d.ts                   \
          billboard.js/types/bb.d.ts                      \
          billboard.js/types/options.d.ts                 \
          billboard.js/types/axis.d.ts 