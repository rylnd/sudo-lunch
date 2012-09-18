class Restaurant < ActiveRecord::Base
  acts_as_taggable

  attr_accessible :name, :tag_ids, :tag_list

  validates :name,
    presence: true,
    uniqueness: true
end
