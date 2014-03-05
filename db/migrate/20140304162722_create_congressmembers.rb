class CreateCongressmembers < ActiveRecord::Migration
  def change
    create_table :congressmembers do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.date :birthday
      t.string :gender
      t.integer :latest_term_id
      t.string :bioguide_id

      t.timestamps
    end
  end
end
