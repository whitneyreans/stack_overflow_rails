class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.column :name, :string
      t.timestamps
    end
  end
end
