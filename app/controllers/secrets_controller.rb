class SecretsController < ApplicationController
before_action :require_login



  def show
    render 'secrets/show'
  end




private

  def require_login
    redirect_to controller: 'sessions', action: 'new' unless session.include? :name
  end
end
