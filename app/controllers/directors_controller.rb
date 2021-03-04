class DirectorsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_director, only: [:edit, :show, :update, :destroy]

  def index
    @q = Director.all.ransack(params[:q])
    @directors = @q.result(distinct: true).page(params[:page]).per(2)
  end

  def show
  end

  def new
    @director = Director.new
  end

  def create
    @director = Director.new(director_params)
    if @director.save
      redirect_to directors_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @director.update(director_params)
      redirect_to director_path(@director)
    else
      render 'edit'
    end
  end

  def destroy
    @director.destroy
    redirect_to directors_path
  end

  private

  def set_director
    @director = Director.find(params[:id])
  end


  def director_params
    params[:director].permit!
  end
end
