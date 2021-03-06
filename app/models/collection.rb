class Collection < ActiveRecord::Base
  belongs_to :creator, foreign_key: 'user_id', class_name: 'User'
  has_many :collection_recipes
  has_many :recipes, through: :collection_recipes, source: :recipe
  has_many :user_bookmark_collections
  has_many :users_bookmarking_it, through: :user_bookmark_collections, source: :user

  validates :name, presence: true
end
