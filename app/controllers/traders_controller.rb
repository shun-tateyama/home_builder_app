class TradersController < ApplicationController
  def index
  end

  def show
  end

  def new
    @user = User.new
  end
end
