class AddEnquiryTypeTable < ActiveRecord::Migration[5.1]
  def change
    create_table :enquiry_types do |t|
          t.string :enquiry_type
          t.timestamps
        end
  end
end
