class CreateUserBookmarkCollections < ActiveRecord::Migration
  def change
    create_table :user_bookmark_collections do |t|
      t.references :user, index: true, foreign_key: true
      t.references :collection, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
