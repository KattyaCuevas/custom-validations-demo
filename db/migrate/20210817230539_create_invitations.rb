class CreateInvitations < ActiveRecord::Migration[6.1]
  def change
    create_table :invitations do |t|
      t.references :invited, null: false, foreign_key: { to_table: :users }
      t.references :inviter, null: false, foreign_key: { to_table: :users }
      t.string :status

      t.timestamps
    end
  end
end
