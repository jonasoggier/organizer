class My::DaysController < ApplicationController
  
  before_filter :require_week

  def index
  end

  def edit
  	@day = @week.days.find_by_day_of_week(params[:id]) 
  end

  def update

    @day = Day.find(params[:id]) 

    if @day.update_attributes params[:day]
      redirect_to [:root], notice: "Project updated!"
    else
      render :edit
    end
  end

  def require_week
  	@week = Week.find(params[:week_id])
  end


end