class FilmsController < ApplicationController
  respond_to :json
  before_action :authenticate_user!

  def create
    film = Film.new(parse_film)

    if film.save
      render json: { film: film }, status: :ok
    else
      render json: { message: 'the film was not created'}, status: :bad_request
    end
  end

  def update
    film = Film.find_by(id: params['id'])

    if film&.update(parse_film)
      render json: { film: film }, status: :ok
    else
      render json: { message: 'the film was not updated'}, status: :bad_request
    end
  end

  def index
    render json: Film.all
  end

  def destroy
    film = Film.find_by(id: params['id'])
    if film&.destroy
      render json: { film: film }, status: :ok
    else
      render json: { message: 'there was an error deleting the film'}, status: :bad_request
    end
  end

  def show
    film = Film.find_by(id: params['id'])
    if film
      render json: { film: FilmSerializer.new(film).serializable_hash[:data] }, status: :ok
    else
      render json: { message: 'there was an error getting the film'}, status: :bad_request
    end
  end

  private
  
  def parse_film
    JSON.parse(request.raw_post)['film']
  end
end