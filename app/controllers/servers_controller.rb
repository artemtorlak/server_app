class ServersController < ApplicationController

  def index
    @servers = Server.all
  end

  def show
    @server = Server.find_by(id: params['id'])
  end

end
