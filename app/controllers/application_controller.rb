class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    if params[:search].present?
      target = params[:search]
      if (PostcodeService.isPostcode?(target))
        postcode = target
        target = [PostcodeService.findStateByPostcode(postcode), postcode].join(',')
      end
      @daycareCentres = DaycareCentre.near(target, 2, :order => :name).limit(20)
    else
      @daycareCentres = []
    end
  end
end
