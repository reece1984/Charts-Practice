class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :name
      t.text :description
      t.float :amount
      t.boolean :vat

      t.timestamps
    end
  end
end
