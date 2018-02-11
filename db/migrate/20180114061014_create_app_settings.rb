class CreateAppSettings < ActiveRecord::Migration[5.2]
  def change
    create_table :app_settings do |t|
      t.string :theme_color
      t.boolean :hidden_sidebar, default: false
      t.boolean :boxed_content, default: true
      t.string :name
      t.string :email
      t.string :tab_text
      t.timestamps
    end
  end
end
