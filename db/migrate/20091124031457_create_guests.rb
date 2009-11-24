class CreateGuests < ActiveRecord::Migration
  def self.up
    create_table :guests do |t|
      t.string :first_name
      t.string :last_name
      t.boolean :rsvp

      t.timestamps
    end
  end

  def self.down
    drop_table :guests
  end
end
