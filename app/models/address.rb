class Address < ApplicationRecord
  belongs_to :country
  belongs_to :states, class_name: 'State', foreign_key: 'state_id'
  belongs_to :city
end
