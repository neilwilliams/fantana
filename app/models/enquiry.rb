class Enquiry < ApplicationRecord
  enum issue_status: [ :Work, :Personal, :Both ] 
  enum enquiry_type: [ :'Face To Face', :Telephone, :Online ]
  enum action_type: [ :Waiting, :Appointment, :'Text Client', :List, :'In Diary' ]
end
