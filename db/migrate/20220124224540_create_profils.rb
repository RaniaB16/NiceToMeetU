class CreateProfils < ActiveRecord::Migration[6.1]
  def change
    create_table :profils do |t|
      t.integer :user_id
      t.string :full_name
      t.string :actual_job
      t.string :company
      t.text :description
      t.string :dream_job

      t.timestamps
    end
  end
end
