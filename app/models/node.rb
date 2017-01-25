class Node < ActiveRecord::Base
  has_many :parent_links,
           class_name:  "Link",
           foreign_key: "from_node_id",
           dependent:   :nullify

  has_many :child_links,
           class_name:  "Link",
           foreign_key: "to_node_id",
           dependent:   :nullify

  has_many :parents,
           through: :parent_links,
           source:  :from_node

  has_many :children,
           through: :child_links,
           source:  :to_node

  validates :content, presence: true, length: { maximum: 100, minimum: 1 }


  def is_orphan?
    # TODO

  end

end