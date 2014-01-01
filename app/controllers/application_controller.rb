class ApplicationController < ActionController::Base
  before_filter :who_are_you
  before_action :configure_permitted_parameters, if: :devise_controller?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  

  protected

  def configure_permitted_parameters
    [:name, :profile_pic].each do |field|
      devise_parameter_sanitizer.for(:sign_up) << field
      devise_parameter_sanitizer.for(:account_update) << field
    end
  end

  def who_are_you
    unless (params[:controller] == 'devise/sessions' or 
            params[:controller] == 'devise/passwords' or
            params[:controller] == 'devise/registrations')
      if !user_signed_in?
        redirect_to root_path
      end
    end
  end
end
