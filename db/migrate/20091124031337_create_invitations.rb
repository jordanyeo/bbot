class CreateInvitations < ActiveRecord::Migration
  def self.up
    create_table :invitations do |t|
      t.string :last_name
      t.string :keyword
      t.string :recipient
      t.string :address1
      t.string :address2
      t.string :city
      t.string :province
      t.string :postal_code
      t.date :label_generated_date
      t.date :mailed_date

      t.timestamps
    end
  end

  def self.down
    drop_table :invitations
  end
end
