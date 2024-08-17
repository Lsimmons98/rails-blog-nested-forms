class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :post_tags
  has_many :tags, through: :post_tags

  # This allows nested attributes for tags and enables Rails to handle them automatically
  accepts_nested_attributes_for :tags, reject_if: :all_blank, allow_destroy: true

  validates_presence_of :name, :content

  # Optional: Add custom logic here if needed
  # e.g., custom setters or any additional processing for tags

end
