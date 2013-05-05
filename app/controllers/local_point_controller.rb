class LocalPointController < ApplicationController
  # 一覧
  def index
  end

  # 新規登録画面
  def new
    @local_point = LocalPoint.new
    render :layout => 'with_google_maps'
  end

  # POSTされた位置情報をsaveする
  def create
  end

  def show
  end
  def edit
  end
  def update
  end
  def destroy
  end
end
