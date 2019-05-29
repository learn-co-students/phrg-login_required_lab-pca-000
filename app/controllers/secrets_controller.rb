# frozen_string_literal: true

class SecretsController < ApplicationController
  before_action :require_login
  def new; end
end
