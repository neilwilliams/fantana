class Client < ApplicationRecord
  has_many :enquiries
  has_many :councellors, through: :enquiries
end
