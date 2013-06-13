class CreateApiPages < ActiveRecord::Migration
  def change
    create_table :api_pages do |t|
      t.string :title, :unique => true, :null => false
      t.string :content, :null => false
      t.datetime :published_on

      t.timestamps
    end
  end
end
