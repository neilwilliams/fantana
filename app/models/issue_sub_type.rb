class IssueSubType < ApplicationRecord
  has_many :enquries
  has_many :issue_sub_types, through: :enquiries
end
