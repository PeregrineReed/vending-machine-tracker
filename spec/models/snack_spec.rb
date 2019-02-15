require 'rails_helper'

RSpec.describe Snack, type: :model do

  describe 'validations' do
    it {should validate_presence_of :name}
    it {should validate_presence_of :price}
  end

  describe 'relationships' do
    it {should have_many :machines}
  end

  describe 'class methods' do
  end

  describe 'instance methods' do
  end

end
