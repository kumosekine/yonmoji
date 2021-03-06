class IdiomsController < ApplicationController

  def index
    @idioms = Idiom.all.order('created_at DESC')
  end

  def new
    @idiom = Idiom.new
  end

  def create
    @idiom = Idiom.create(idiom_params)
    if @idiom.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    idiom = Idiom.find(params[:id])
    idiom.destroy
    redirect_to root_path
  end
  
  def show
    @idiom = Idiom.find(params[:id])
  end

  private
  def idiom_params
   params.require(:idiom).permit(:title, :text)
  end

end