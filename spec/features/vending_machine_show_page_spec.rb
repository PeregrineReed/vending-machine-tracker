require 'rails_helper'

RSpec.describe 'as a visitor' do
  context 'when visiting the vending machine show page' do

    before :each do
      @owner = Owner.create!(name: 'Dude')
      @vend_mach = @owner.machines.create!(location: 'Ex Snackina')
      @vend_mach.snacks.create!(name: "Chili Dog", price: 2.50)
      @vend_mach.snacks.create!(name: "Chips", price: 1.00)
      @vend_mach.snacks.create!(name: "Sweet Roll", price: 1.50)

      visit machine_path(@vend_mach)
    end

    it 'can see all snacks with name and price' do

      @vend_mach.snacks.each do |snack|
        within "#snack-#{snack.id}" do
          expect(page).to have_content("#{snack.name}: $#{snack.price}")
        end
      end
    end

    it 'sees an average price for all snacks' do


      expect(page).to have_content("Average Price: $#{@vend_mach.avg_price}")
    end
  end
end
