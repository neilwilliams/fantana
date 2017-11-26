class Councellor < ApplicationRecord
  has_many :enquiries
  has_many :clients, through: :enquiries
end
