class CreateMeds < ActiveRecord::Migration
  def change
    create_table :meds do |t|
      t.string :nickname
      t.string :clinical_name
      t.integer :count
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
