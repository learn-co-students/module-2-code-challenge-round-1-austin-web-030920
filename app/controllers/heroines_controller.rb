class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end
  def show
    @heroines = Heroine.all
  end
end
