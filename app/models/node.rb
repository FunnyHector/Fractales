class Node < ActiveRecord::Base
  has_many :parent_link, class_name: "Link"
  has_many :child_link, class_name: "Link"
  has_many :parent, class_name: "Node", through: :parent_link
  has_many :child, class_name: "Node", through:  :child_link

  validates :content


end