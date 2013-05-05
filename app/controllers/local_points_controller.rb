class LocalPointsController < ApplicationController
  # GET /local_points
  def index
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
