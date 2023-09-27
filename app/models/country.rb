class Country < ApplicationRecord
  has_many :states
  default_scope -> { order(:name) }
end
