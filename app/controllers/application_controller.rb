class ApplicationController < ActionController::Base
  before_action :authenticate_player!

  protect_from_forgery with: :exception
end
