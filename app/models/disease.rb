class Disease < ApplicationRecord
has_and_belongs_to_many :animals, through: :date_infected
end
