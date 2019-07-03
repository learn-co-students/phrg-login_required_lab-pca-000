# frozen_string_literal: true

class SecretsController < ApplicationController
  before_action :require_login

  def show
    render "secrets/show"
  end

private

  def require_login
    return if session.include? :name
    redirect_to controller: "sessions", action: "new"
  end
end
