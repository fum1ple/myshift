class WorkplacesController < ApplicationController
  def index
    workplaces = Workplace.all
    render json: workplaces
  end

  def show
    workplace = Workplace.find(params[:id])
    render json: workplace
  end

  def create
    workplace = Workplace.create(workplace_params)
    render json: workplace
  end

  def destroy
    workplace = Workplace.find(params[:id])
    workplace.destroy
  end


end
