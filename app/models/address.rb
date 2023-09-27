# == Schema Information
#
# Table name: addresses
#
#  id         :bigint           not null, primary key
#  postcode   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  city_id    :bigint           not null
#  country_id :bigint           not null
#  state_id   :bigint           not null
#
# Indexes
#
#  index_addresses_on_city_id     (city_id)
#  index_addresses_on_country_id  (country_id)
#  index_addresses_on_state_id    (state_id)
#
# Foreign Keys
#
#  fk_rails_...  (city_id => cities.id)
#  fk_rails_...  (country_id => countries.id)
#  fk_rails_...  (state_id => states.id)
#
class Address < ApplicationRecord
  belongs_to :country
  belongs_to :state
  belongs_to :city
end
