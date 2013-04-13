class My::WeeksController < ApplicationController
   
  def show
  	@week = Week.find(params[:id])
  end

  def edit
  end

  def update
  end


end
