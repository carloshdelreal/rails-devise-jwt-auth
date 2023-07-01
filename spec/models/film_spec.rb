# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Film, type: :model do
  describe '#create' do
    let(:film) { create(:film) }

    it 'has a valid factory' do
      expect(film).to be_valid
    end

    describe 'associations' do
      it { is_expected.to have_many(:people) }
      it { is_expected.to have_many(:planets) }
      it { is_expected.to have_many(:film_people) }
      it { is_expected.to have_many(:film_planets) }
    end
  end
end
