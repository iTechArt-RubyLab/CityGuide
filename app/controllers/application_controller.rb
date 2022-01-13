class ApplicationController < ActionController::Base
  include Pundit
  skip_before_action :verify_authenticity_token
end
