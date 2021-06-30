class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :job_title
      t.string :phone_number
      t.integer :department_id

      t.timestamps
    end
  end
end
