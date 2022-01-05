class HomeController < ApplicationController
  def index
    redirect_to entity_profiles_url if user_signed_in?
  end
end
