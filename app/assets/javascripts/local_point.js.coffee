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

  # マップ中央のマーカーを中央に固定
  myMaps.addCenterMarker(form)
  myMaps.reloadCenter(form)

  # ジオコーディング
  $("#update_center").bind "click", ->
    myMaps.updateCenterByAddress $("#address").val()
