require 'rails_helper'

RSpec.describe SnackMachine, type: :model do

  describe 'validations' do
  end

  describe 'relationships' do
    it {should belong_to :snack}
    it {should belong_to :machine}
  end

  describe 'class methods' do
  end

  describe 'instance methods' do
  end

end
