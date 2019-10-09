class DndcharsController < ApplicationController

  def index
    @dndchars = Dndchar.all.order("created_at DESC")
  end

  def new
    @dndchar = Dndchar.new
  end

  def create
    @dndchar = Dndchar.new(dndchar_params)

    if @dndchar.save
      redirect_to @dndchar
    else
      render 'new'
    end
  end

  def show
    @dndchar = Dndchar.find(params[:id])
  end

  private
  def dndchar_params
    params.require(:dndchar).permit(:charname, :charrace, :charclass, :charlevel)
  end
end
