class AllPlacesController < ApplicationController
  def index
    @organizations = Organization.all
  end
end
