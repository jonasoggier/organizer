class My::DaysController < ApplicationController
  
  # before_filter :require_week

  def show
  	@day = @week.days.find(params[:id])
  end

  def index
  end

  def edit
  	@day = Day.find(params[:id])
  end

  def update
  end

  # def require_week
  # 	@week = Week.find(params[:id])
  # end


end
