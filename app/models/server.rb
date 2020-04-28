class Server < ApplicationRecord
  has_many :bandwidths,  dependent: :delete_all

  def index
  end

  def show
  end

end
