class Bandwidth < ApplicationRecord
  belongs_to :server, class_name: "Server"
  validates_uniqueness_of :server_id, scope: :interface_name
end
