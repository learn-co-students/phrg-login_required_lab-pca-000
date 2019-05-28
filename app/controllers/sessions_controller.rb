# frozen_string_literal: true

class SessionsController < ApplicationController
  def create
    if params[:name].blank?
      redirect_to controller: "sessions", action: "new"
    else
      session[:name] = params[:name]
      redirect_to "/"
    end
  end

  def destroy
    if !session[:name]
      session[:name] = nil
    else
      session.delete :name
    end
    redirect_to "/sessions/new"
  end
end
