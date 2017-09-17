class CreateMiscroposts < ActiveRecord::Migration[5.1]
  def change
    create_table :miscroposts do |t|
      t.text :context
      t.integer :user_id

      t.timestamps
    end
  end
end
