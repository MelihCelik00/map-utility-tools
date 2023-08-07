const tippecanoe = require('tippecanoe');
tippecanoe(['example_polygons.geojson'], {
    // zg: true,
    // readParallel: true,
    // simplification: 10,
    // layer: 'buildings',
    output: 'output_example_polygons.mbtiles',
    // description: 'Building footprints in the municipality of Hobbiton.'
}, { echo: true });