$ ->
  myMaps = new MyMaps({
    canvasId: '#map_canvas',
    lat:      35.6589960,
    lng:      139.70380,
    range:    0.01,
  })
  myMaps.createGmap()
  myMaps.addCenterMarker()
