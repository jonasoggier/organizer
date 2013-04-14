class My::DaysController < ApplicationController
  
  before_filter :require_week
  before_filter :authenticate_user!

  def edit
  	@day = @week.days.find_by_day_of_week(params[:id]) 
  end

  def update
    @day = Day.find(params[:id]) 

    if @day.update_attributes params[:day]
      render :edit, notice: "Project updated!"
    else
      render :edit, notice: "Something went wrong!"
    end
  end

  def require_week
  	@week = Week.find(params[:week_id])
  end


end
