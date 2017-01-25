class Tale < ActiveRecord::Base
  belongs_to :root_node,
             class_name:  "Node",
             foreign_key: "root_node_id"

  validates :title, presence: true, length: { maximum: 100, minimum: 1 }

  def pages_count
    # TODO

  end

end