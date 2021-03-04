class WorksController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_work, only: [:edit, :show, :update, :destroy]

  def index
    @q = Work.all.ransack(params[:q])
    @works = @q.result(distinct: true).page(params[:page]).per(3)
  end

  def show
  end

  def new
    @work = Work.new
    if params[:director_id]
      @work.director_id = params[:director_id]
    end
  end

  def create
    @work = Work.new(work_params)
    if @work.save
      redirect_to works_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @work.update(work_params)
      redirect_to work_path(@work)
    else
      render 'edit'
    end
  end

  def destroy
    @work.destroy
    redirect_to works_path
  end

  private

  def work_params
    params[:work].permit!
  end

  def set_work
    @work = Work.find(params[:id])
  end

end
