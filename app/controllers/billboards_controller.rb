class BillboardsController < ApplicationController
  def index
    @billboards = Billboard.all 
  end

  def show
    @billboard = Billboard.find(params[:id])
  end

  def new
    @billboard = Billboard.new
  end

  def create
    @billboard = Billboard.new(billboard_params)
      if @billboard.save
        redirect_to billboards_path
      else
        render :new
              #find this Billboard with this id so I can send it back to @billboard.
    end
  end

  private

  def billboard_params
    params.require(:billboard).permit(:artist, :songs)
  def edit
     @billboard = Billboard.find(params:[id])
  end

  def update 
     @billboard = Billboard.find(params:[id])
  end

  def destroy
     @billboard = Billboard.find(params:[id])
  end
end
