class CreateWebsites < ActiveRecord::Migration[5.1]
  def change
    create_table :websites do |t|
      t.text :name
      t.text :html_source
      t.text :css_source
      t.text :js_source

      t.timestamps
    end
  end
end
