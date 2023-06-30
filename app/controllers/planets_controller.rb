class PlanetsController < ApplicationController
  before_action :authenticate_user!

  def index
    render json: { planets: Planet.all }
  end

  def create
  end

  def delete
  end

  def update
  end

  def show
  end
end
