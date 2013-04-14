class My::DaysController < ApplicationController
  
  before_filter :require_week
  before_filter :authenticate_user!

  def edit
  	@day = @week.days.find_by_day_of_week(params[:id]) 
  end

  def update
    @day = Day.find(params[:id]) 

    if @day.update_attributes params[:day]
      redirect_to root_path, notice: "The program for #{"Monday" if @day.day_of_week == 1}#{"Tuesday" if @day.day_of_week == 2}#{"Wednesday" if @day.day_of_week == 3}#{"Thursday" if @day.day_of_week == 4}#{"Friday" if @day.day_of_week == 5} of week #{@week.week_number} was successfully updated!"
    else
      render :edit, notice: "Uups...something went wrong!"
    end
  end

  def require_week
  	@week = Week.find(params[:week_id])
  end


end
