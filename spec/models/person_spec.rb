# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Person, type: :model do
  describe '#create' do
    let(:person) { create(:person) }
    
    describe 'associations' do
      it { is_expected.to belong_to(:planet) }
    end
  end
end