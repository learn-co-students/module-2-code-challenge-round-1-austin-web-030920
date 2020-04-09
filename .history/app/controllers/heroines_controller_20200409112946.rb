class HeroinesController < ApplicationController
  before_action :find_heroine, only: [:show, :update, :create]
  def index
    @heroines = Heroine.all
  end

  def create

  end

  private

  def find_heroine
    @heroine = Heroine.find(params[:id])
  end
end
