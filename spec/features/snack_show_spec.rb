require 'rails_helper'

RSpec.describe 'as a visitor' do
  context 'visiting snack show page' do

    before :each do
      @owner = Owner.create!(name: 'Dude')
      @vend_mach_1 = @owner.machines.create!(location: 'Ex Snackina')
      @snack_1 = Snack.create!(name: "Chili Dog", price: 2.50)
      @snack_1.machines.create!(location: 'Place1', owner: @owner)
      @snack_1.machines.create!(location: 'Place2', owner: @owner)
      @snack_1.machines.create!(location: 'Place3', owner: @owner)
      @snack_1 = Snack.create!(name: "Chips", price: 1.00)
      @snack_1 = Snack.create!(name: "Sweet Roll", price: 1.50)

      visit snack_page(@vend_mach.snacks.first)
    end
    it 'sees snack info' do

      

    end
  end
end
