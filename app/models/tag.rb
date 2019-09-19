class Tag < ApplicationRecord
  has_many :blog_tag_relations, dependent: :delete_all
  has_many :blogs, through: :blog_tag_relations
end
