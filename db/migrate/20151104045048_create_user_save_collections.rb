class CreateUserSaveCollections < ActiveRecord::Migration
  def change
    create_table :user_save_collections do |t|
      t.references :user, index: true, foreign_key: true
      t.references :collection, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
