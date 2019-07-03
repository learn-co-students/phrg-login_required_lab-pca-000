# frozen_string_literal: true

class SecretsController < ApplicationController
  before_action :current_user

  def show
    redirect_to "/login" unless current_user
  end
end
