class DucksController < ApplicationController

  def index
    @ducks = Duck.all
  end

  def new
    @duck = Duck.new
    render :new
  end

  def create
    @duck = Duck.create(duck_params)

    if @duck.valid?
      redirect_to duck_path(@duck)
    else
      flash[:error] = @duck.errors.full_messages
      render :new 
    end
  end

  def show 
    @duck = Duck.find(params[:id])
    render :show
  end

  def edit
    @duck = Duck.find(params[:id])
    render :edit 
  end

  def update
    @duck = Duck.find(params[:id])
    @duck.update(duck_params)

    redirect_to duck_path(@duck)
  end



  private
  def duck_params
    params.require(:duck).permit(:name, :description, :type)
  end

end
