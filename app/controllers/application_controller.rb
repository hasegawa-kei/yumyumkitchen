# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #  before_action :current_user
  def after_sign_in_path_for(resource)
    user_path(resource)
  end
  #  private

  #  def current_user
  #    return unless session[:user_id]
  #    @current_user = User.find_by(id: session[:user_id])
  #  end
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
