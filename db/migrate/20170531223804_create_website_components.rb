class CreateWebsiteComponents < ActiveRecord::Migration[5.1]
  def change
    create_table :website_components do |t|
      t.integer :website_id
      t.integer :component_id
      t.integer :order

      t.timestamps
    end
  end
end
