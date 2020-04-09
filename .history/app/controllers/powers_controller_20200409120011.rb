class PowersController < ApplicationController
  before_action :find_power, only: [:show, :edit, :update]
  def index
    @powers = Power.all
  end
end
