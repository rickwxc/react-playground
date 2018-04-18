class ApplicationController < ActionController::Base
  before_action :init_env

  def init_env
	  response.set_header("Access-Control-Allow-Origin", "*")
	  response.set_header("Access-Control-Request-Method", "*")
  end

end
