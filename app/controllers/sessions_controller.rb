# frozen_string_literal: true

class SessionsController < ApplicationController
  before_action :current_user

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to new_session_path
    else
      session[:name] = params[:name]
      redirect_to "/"
    end
  end

  def destroy
    session.delete :name
    redirect_to "/"
  end
end
