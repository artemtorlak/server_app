class Bandwidth < ApplicationRecord
  belongs_to :server, class_name: "Server"

  #Валидация уникальности двух полей одновременно.
  validates_uniqueness_of :server_id, scope: :interface_name
end
