# frozen_string_literal: true

class SecretsController < ApplicationController
  before_action :require_login
  helper_method :current_user

  def show; end

private

  def require_login
    redirect_to controller: "sessions", action: "new" unless check_name
  end

  def check_name
    session.include? :name
  end
end
