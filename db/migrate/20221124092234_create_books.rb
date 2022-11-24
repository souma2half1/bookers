class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|

      t.timestamps
      t.string :title, null: false
      t.string :body,  null: false
    end
  end
end
