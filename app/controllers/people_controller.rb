# frozen_string_literal: true

class PeopleController < ApplicationController
  respond_to :json
  before_action :authenticate_user!

  def create
    person = Person.new(parse_person)

    if person.save
      render json: { person: }, status: :ok
    else
      render json: { message: 'the person was not created' }, status: :bad_request
    end
  end

  def update
    person = Person.find_by(id: params['id'])

    if person&.update(parse_person)
      render json: { person: }, status: :ok
    else
      render json: { message: 'the person was not updated' }, status: :bad_request
    end
  end

  def index
    render json: Person.all
  end

  def destroy
    person = Person.find_by(id: params['id'])
    if person&.destroy
      render json: { person: }, status: :ok
    else
      render json: { message: 'there was an error deleting the person' }, status: :bad_request
    end
  end

  def show
    person = Person.find_by(id: params['id'])

    if person
      render json: PersonSerializer.new(person).serializable_hash[:data], status: :ok
    else
      render json: { message: 'there was an error getting the person' }, status: :bad_request
    end
  end

  private

  def parse_person
    JSON.parse(request.raw_post)['person']
  end
end
