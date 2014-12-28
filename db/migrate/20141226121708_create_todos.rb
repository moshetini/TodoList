class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :title
      t.text :description
      t.boolean :done
      t.date :date

      t.timestamps
    end
  end
end
