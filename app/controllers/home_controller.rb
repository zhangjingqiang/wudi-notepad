class HomeController < ApplicationController
  def index
  	redirect_to notepads_path if current_user
  end
end
