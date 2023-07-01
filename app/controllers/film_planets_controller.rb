# frozen_string_literal: true

class FilmPlanetsController < ApplicationController
  respond_to :json
  before_action :authenticate_user!

  def create
    film_planet = FilmPlanet.new(parse_film_planet)

    if film_planet.save
      render json: { film_planet: }, status: :ok
    else
      render json: { message: 'the film_planet was not created' }, status: :bad_request
    end
  end

  def update
    film_planet = FilmPlanet.find_by(id: params['id'])

    if film_planet&.update(parse_film_planet)
      render json: { film_planet: }, status: :ok
    else
      render json: { message: 'the film_planet was not updated' }, status: :bad_request
    end
  end

  def index
    render json: FilmPlanet.all
  end

  def destroy
    film_planet = FilmPlanet.find_by(id: params['id'])
    if film_planet&.destroy
      render json: { film_planet: }, status: :ok
    else
      render json: { message: 'there was an error deleting the film_planet' }, status: :bad_request
    end
  end

  def show
    film_planet = FilmPlanet.find_by(id: params['id'])
    if film_planet
      render json: { film_planet: }, status: :ok
    else
      render json: { message: 'there was an error getting the film_planet' }, status: :bad_request
    end
  end

  private

  def parse_film_planet
    JSON.parse(request.raw_post)['film_planet']
  end
end
