class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token

  helper_method :resource
end
