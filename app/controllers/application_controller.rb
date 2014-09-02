class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    if params[:search].present?
      @daycareCentres = DaycareCentre.near(params[:search], 50, :order => :name)
    else
      @daycareCentres = DaycareCentre.all
    end
  end
end
