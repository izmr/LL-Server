class LocalPointsController < ApplicationController
  # GET /local_points
  def index
    @location = params[:location]
    @lat      = 35.641559718355225
    @lng      = 139.75272349243164
    @level    = 12
    @range    = 0.1

    if @location == 'kyoto'
      @lat   = 34.98545130793503
      @lng   = 135.7593648803711
      @level = 13
    end
  end

  # GET /local_point/new
  def new
    @local_point = LocalPoint.new
  end

  # POST /local_point
  def create
    @local_point = LocalPoint.new(params[:local_point])

    respond_to do |format|
      if @local_point.save
        format.html { redirect_to @local_point }
      else
        format.html { render action: "new" }
      end
    end
  end

  # GET /local_point/1
  def show
    @local_point = LocalPoint.find(params[:id])
  end

  # GET /local_point/1/edit
  def edit
    @local_point = LocalPoint.find(params[:id])
  end

  # PUT /local_point/1
  def update
    @local_point = LocalPoint.find(params[:id])

    respond_to do |format|
      if @local_point.update_attributes(params[:local_point])
        format.html { redirect_to @local_point }
      else
        format.html { render action: "new" }
      end
    end
  end

  # DELETE /local_point/1
  def destroy
    @local_point = LocalPoint.find(params[:id])
    @local_point.destroy

    respond_to do |format|
      format.html { redirect_to local_points_url }
    end
  end
end
