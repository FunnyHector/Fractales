class Tale < ActiveRecord::Base
  belongs_to :root_node, class_name: "Node"

  validates :root_node
  validates :description

end