$ ->
  canvasId = '#map_canvas'
  myMaps = new MyMaps({
    canvasId: canvasId,
    lat:      35.68172719326397,
    lng:      139.76800135498047,
    level:    15,
    range:    0.01,
    form:     {
      latf:    '#local_point_latitude',
      lngf:    '#local_point_longitude',
      address: '#local_point_address',
    }
  })
  myMaps.createGmap()

  # マップ中央のマーカーを中央に固定
  myMaps.addCenterMarker()
  myMaps.reloadCenter()

  # ジオコーディング
  $("#update_center_by_address").bind "click", ->
    myMaps.updateCenterByAddress $(myMaps.form.address).val()
