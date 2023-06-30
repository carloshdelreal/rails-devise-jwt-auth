class FilmPeopleController < ApplicationController
  respond_to :json
  before_action :authenticate_user!

  def create
    film_person = FilmPerson.new(parse_film_person)

    if film_person.save
      render json: { film_person: film_person }, status: :ok
    else
      render json: { message: 'the film_person was not created'}, status: :bad_request
    end
  end

  def update
    film_person = FilmPerson.find_by(id: params['id'])

    if film_person&.update(parse_film_person)
      render json: { film_person: film_person }, status: :ok
    else
      render json: { message: 'the film_person was not updated'}, status: :bad_request
    end
  end

  def index
    render json: FilmPerson.all
  end

  def destroy
    film_person = FilmPerson.find_by(id: params['id'])
    if film_person&.destroy
      render json: { film_person: film_person }, status: :ok
    else
      render json: { message: 'there was an error deleting the film_person'}, status: :bad_request
    end
  end

  def show
    film_person = FilmPerson.find_by(id: params['id'])
    if film_person
      render json: { film_person: film_person }, status: :ok
    else
      render json: { message: 'there was an error getting the film_person'}, status: :bad_request
    end
  end

  private
  
  def parse_film_person
    JSON.parse(request.raw_post)['film_person']
  end
end