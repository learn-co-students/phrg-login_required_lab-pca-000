# frozen_string_literal: true

class SecretsController < ApplicationController
  before_action :require_login

  def show; end

private

  def require_login
    redirect_to controller: "sessions", action: "new" unless session_valid?
  end

  def session_valid?
    session.include? :name
  end
end
