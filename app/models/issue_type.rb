class IssueType < ApplicationRecord
  has_many :enquries
  has_many :issue_types, through: :enquiries
end
