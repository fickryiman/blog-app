class ApplicationController < ActionController::Base
  def current_user
    User.find(4)
  end
end
