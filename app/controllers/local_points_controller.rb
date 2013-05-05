class LocalPointsController < ApplicationController
  # GET /local_point
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
        format.html { redirect_to @local_point, notice: 'Item was successfully created.' }
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
  end

  # DELETE /local_point/1
  def destroy
  end
end
