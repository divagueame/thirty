class CreateDays < ActiveRecord::Migration[7.0]
  def change
    create_table :days do |t|
      t.boolean :done, null: false, :default => false

      t.timestamps
    end
  end
end
