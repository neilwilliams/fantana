class Enquiry < ApplicationRecord
  belongs_to :client
  belongs_to :councellor
  belongs_to :issue_type
  belongs_to :issue_sub_type
  belongs_to :enquiry_type
  
  enum issue_status: [ :Work, :Personal, :Both ] 
  enum enquiry_type: [ :'Face To Face', :Telephone, :Online ]
  enum action_type: [ :Waiting, :Appointment, :'Text Client', :List, :'In Diary' ]
end
