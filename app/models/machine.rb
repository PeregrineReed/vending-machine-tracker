class Machine < ApplicationRecord
  validates_presence_of :location

  belongs_to :owner
  has_many :snack_machines
  has_many :snacks, through: :snack_machines

  def avg_price
    if snacks != []
      snacks.average(:price).round(2)
    else
      0
    end
  end

end
