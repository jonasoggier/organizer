class My::WeeksController < ApplicationController
  before_filter :authenticate_user!

  def show
  	@week = Week.find(params[:id])
  end

end
