class Server < ApplicationRecord
  has_many :bandwidths,  dependent: :delete_all
end
