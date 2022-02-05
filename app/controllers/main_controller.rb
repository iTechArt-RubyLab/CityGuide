class MainController < ApplicationController
  def index
    @organizations = if params[:search_key]
                       Organization.where('title LIKE ?', 'status = ?', "%#{params[:search_key]}%", 2)
                     else
                       Organization.where('status = ?', 2)
                     end
  end
end
