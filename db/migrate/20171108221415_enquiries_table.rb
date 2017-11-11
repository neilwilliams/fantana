class EnquiriesTable < ActiveRecord::Migration[5.1]
  def change
    create_table :enquiries do |t|
      t.integer :entered_by # -> users
      t.integer :organisation_id  # -> organisations
      t.integer :client_id # -> clients
      t.boolean :client_used_before
      t.string :referred_by
      t.string :first_name
      t.string :last_name
      t.integer :telephone
      t.boolean :contact_via_voicemail
      t.boolean :contact_via_text
      t.string :email
      t.date :date_of_birth
      t.string :address_1
      t.string :address_2
      t.string :address_3
      t.string :address_4
      t.string :address_5
      t.string :address_6
      t.integer :issue_type_id # work / personal / both
      t.integer :issue_sub_type_id # anger, stress
      t.string :job_title
      t.string :department
      t.boolean :full_time # false = part time
      t.boolean :in_work
      t.string :recommended_from # how did you find out about us?
      t.string :enquiry_type_id # enquiry types - f2f, telephone, online
      t.string :availability
      t.string :location
      t.integer :action_id # act, waiting list, appontment
      t.integer :councellor_id

      t.timestamps
    end

    add_index :enquiries, :entered_by
    add_index :enquiries, :organisation_id
    add_index :enquiries, :client_id
    add_index :enquiries, :issue_type_id
    add_index :enquiries, :issue_sub_type_id
    add_index :enquiries, :action_id
    add_index :enquiries, :councellor_id
  end
end
