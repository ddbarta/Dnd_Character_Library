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

  def update
    @dndchar = Dndchar.find(params[:id])
    if @dndchar.update(dndchar_params)
      redirect_to @dndchar
    else
      render 'edit'
    end
  end

  def edit
    @dndchar = Dndchar.find(params[:id])
  end

  def destroy
    @dndchar = Dndchar.find(params[:id])
    @dndchar.destroy

    redirect_to dndchars_path
  end

  private

  def dndchar_params
    params.require(:dndchar).permit(:charname, :charrace, :charclass, :charlevel, :charalign, :charexp, :charfaction, :charstr, :chardex,
                                    :charcon, :charint, :charwis, :charchar, :charsavestr, :charsavedex, :charsaveint, :charsavewis, :charsavecon, :charsavechar, :characro,
                                    :charanimal, :chararcana, :charalthletic, :chardeception, :charhistory, :charinsight, :charintim, :charinv, :charmed, :charnature, :charperc,
                                    :charperform, :charpersuasion, :charreligion, :charslight, :charstealth, :charsurvive)
  end
end
