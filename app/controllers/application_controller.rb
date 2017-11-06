class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def farm
  	render html: "ready to put some more farm in your life?"
  end
end
