$ ->
  canvasId = '#map_canvas'
  myMaps = new MyMaps({
    canvasId: canvasId,
    lat:      35.6589960,
    lng:      139.70380,
    range:    0.01,
  })
  myMaps.createGmap()
  myMaps.addCenterMarker()
  myMaps.reloadCenter()
