class CreateRedbuses < ActiveRecord::Migration[6.0]
  def change
    create_table :redbuses do |t|
      t.string :name
      t.integer :account
      t.string :offers

      t.timestamps
    end
  end
end
