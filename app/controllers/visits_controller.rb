class VisitsController < ApplicationController
  def new
    @current_user = User.find_by id: session[:user_id]
    @visit = Visit.new
  end

  def show
    @visit = Visit.find params[:id]
  end

  def create
    @visit = Visit.new(visit_params)
    if @visit.save
      redirect_to visit_path
    else
      render :new
    end
  end

  def visit_params
    params.require(:visit).permit(:date, :time, :building, :room)
  end


end
