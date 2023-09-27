class Address < ApplicationRecord
  belongs_to :country
  belongs_to :states
  belongs_to :city
end
