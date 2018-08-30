# frozen_string_literal: true

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  # def authentication_required
  #   redirect_to login_path if logged_in?
  # end

  # def logged_in?
  #   return if current_user
  # end

  def current_user
    @current_user ||= session[:name]
  end

private

  def require_logged_in
    redirect_to controller: "sessions", action: "new" unless current_user
  end
end
