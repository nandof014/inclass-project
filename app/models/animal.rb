class Animal < ApplicationRecord
  belongs_to :owner
  has_and_belongs_to_many :diseases, through: :date_infected
end
