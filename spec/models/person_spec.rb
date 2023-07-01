# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Person, type: :model do
  describe '#create' do
    let(:person) { create :person }

    it 'has a valid factory' do
      expect(person).to be_valid
    end
    
    describe 'associations' do
      it { is_expected.to belong_to(:planet) }
      it { is_expected.to have_many(:film_people)}
      it { is_expected.to have_many(:films)}
    end
  end
end