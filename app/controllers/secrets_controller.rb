# frozen_string_literal: true

class SecretsController < ApplicationController
  before_action :require_login

  def show; end

private

  def require_login
    return redirect_to login_path unless session.include? :name
  end
end
