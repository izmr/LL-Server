$ ->
  canvasId = '#map_canvas'
  myMaps = new MyMaps({
    canvasId: canvasId,
    lat:      35.6589960,
    lng:      139.70380,
    range:    0.01,
  })
  myMaps.createGmap()
  form = {
    latf: '#latitude',
    lngf: '#longitude',
  }

  myMaps.addCenterMarker(form)
  myMaps.reloadCenter(form)
