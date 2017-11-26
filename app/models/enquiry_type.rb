class EnquiryType < ApplicationRecord
  has_many :enquries
  has_many :clients, through: :enquiries
end
