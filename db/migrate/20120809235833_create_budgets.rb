class CreateBudgets < ActiveRecord::Migration
  def change
    create_table :budgets do |t|
      t.text :name
      t.decimal :amount

      t.timestamps
    end
  end
end
