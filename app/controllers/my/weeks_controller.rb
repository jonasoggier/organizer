class My::WeeksController < ApplicationController
   
  def index
  	@week = Week.all
  end

  def show
  	@week = Week.find(params[:id])
  end

  def edit
  end

  def update
  end


end
