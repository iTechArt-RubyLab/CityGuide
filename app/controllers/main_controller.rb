class MainController < ApplicationController
  def index
    @organizations = Organization.where('status = 2')
  end
end
