class AdminViewController < ApplicationController
  def index
    @organizations = Organization.all
    @routes = Route.all
  end
end
