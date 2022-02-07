class ApplicationController < ActionController::Base
  include Pundit
  skip_before_action :verify_authenticity_token
  def after_sign_in_path_for(_resource)
    if current_user.profile.nil?
      new_profile_path
    elsif current_user.is_admin
      admin_view_url
    else
      main_url
    end
  end
end
