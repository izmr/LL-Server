$ ->
  canvasId = '#map_canvas'
  myMaps = new MyMaps({
    canvasId: canvasId,
    lat:      35.6589960,
    lng:      139.70380,
    range:    0.01,
    form:     {
      latf:    '#latitude',
      lngf:    '#longitude',
      address: '#address',
    }
  })
  myMaps.createGmap()

  # マップ中央のマーカーを中央に固定
  myMaps.addCenterMarker()
  myMaps.reloadCenter()

  # ジオコーディング
  $("#update_center_by_name").bind "click", ->
    myMaps.updateCenterByAddress $("#point_name").val()
  $("#update_center_by_address").bind "click", ->
    myMaps.updateCenterByAddress $("#address").val()
