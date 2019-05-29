# frozen_string_literal: true

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def hello
    redirect_to new_sessions_path unless session[:name]
  end

  def current_user
    session[:name]
  end

private

  def require_login
    redirect_to new_sessions_path unless session.include? :name
  end
end
