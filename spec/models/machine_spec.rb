require 'rails_helper'

describe Machine, type: :model do
  describe 'validations' do
    it { should validate_presence_of :location }
    it { should belong_to :owner }
    it { should have_many :snacks }
  end

  describe 'instance methods' do
    it '#avg_price' do
      owner = Owner.create!(name: 'Dude')
      vend_mach = owner.machines.create!(location: 'Ex Snackina')
      vend_mach.snacks.create!(name: "Chili Dog", price: 2.50)
      vend_mach.snacks.create!(name: "Chips", price: 1.00)
      vend_mach.snacks.create!(name: "Sweet Roll", price: 1.50)

      expected = 1.67
      actual = vend_mach.avg_price
      expect(actual).to eq(expected)
    end
  end

end
