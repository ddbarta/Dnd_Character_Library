class DndcharsController < ApplicationController
  before_action :authenticate_user!

  def index
    @dndchars = current_user.dndchars.all.order("created_at DESC")
  end

  def new
    @dndchar = current_user.dndchars.build
  end

  def create
    @dndchar = current_user.dndchars.build(dndchar_params)

    if @dndchar.save
      redirect_to @dndchar
    else
      render 'new'
    end
  end

  def show
    @dndchar = current_user.dndchars.find(params[:id])
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
                                    :charanimal, :chararcana, :charathletic, :chardeception, :charhistory, :charinsight, :charintim, :charinv, :charmed, :charnature, :charperc,
                                    :charperform, :charpersuasion, :charreligion, :charslight, :charstealth, :charsurvive, :chardescription, :charnotes)
  end
end
