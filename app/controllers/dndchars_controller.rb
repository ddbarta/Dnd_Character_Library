class DndcharsController < ApplicationController

  def index

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

  private
  def dndchar_params
    params.require(:dndchar).permit(:charname, :charrace, :charclass, :charlevel)
  end
end
