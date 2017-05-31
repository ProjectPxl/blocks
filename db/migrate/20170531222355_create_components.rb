class CreateComponents < ActiveRecord::Migration[5.1]
  def change
    create_table :components do |t|
      t.text :name
      t.text :html
      t.text :css
      t.text :js

      t.timestamps
    end
  end
end
