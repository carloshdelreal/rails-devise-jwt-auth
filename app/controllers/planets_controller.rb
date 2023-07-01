# frozen_string_literal: true

class PlanetsController < ApplicationController
  respond_to :json
  before_action :authenticate_user!

  def create
    planet = Planet.new(parse_planet)

    if planet.save
      render json: { planet: }, status: :ok
    else
      render json: { message: 'the planet was not created' }, status: :bad_request
    end
  end

  def update
    planet = Planet.find_by(id: params['id'])

    if planet&.update(parse_planet)
      render json: { planet: }, status: :ok
    else
      render json: { message: 'the planet was not updated' }, status: :bad_request
    end
  end

  def index
    render json: Planet.all
  end

  def destroy
    planet = Planet.find_by(id: params['id'])
    if planet&.destroy
      render json: { planet: }, status: :ok
    else
      render json: { message: 'there was an error deleting the planet' }, status: :bad_request
    end
  end

  def show
    planet = Planet.find_by(id: params['id'])
    if planet
      render json: { planet: }, status: :ok
    else
      render json: { message: 'there was an error getting the planet' }, status: :bad_request
    end
  end

  private

  def parse_planet
    JSON.parse(request.raw_post)['planet']
  end
end
