# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Planet, type: :model do
  describe '#create' do
    let(:planet) { create(:planet) }

    it 'has a valid factory' do
      expect(planet).to be_valid
    end
    
    describe 'associations' do
      it { is_expected.to have_many(:films) }
      it { is_expected.to have_many(:film_planets) }
    end
  end
end