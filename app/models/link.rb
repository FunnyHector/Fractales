class Link < ActiveRecord::Base
  belongs_to :from, class_name: "Node"
  belongs_to :to, class_name: "Node"

  validates :signpost

end