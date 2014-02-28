class CreateCongressmembers < ActiveRecord::Migration
  def change
    create_table :congressmembers do |t|
      t.string :first_name
      t.string :last_name
      t.string :party
      t.string :state

      t.timestamps
    end
  end
end
