class PagesController < ApplicationController
  before_action :store_ip_address
  def home
    if params["url"]
      redirect_to action: "analyze", url: params["url"]
    end
  end
  def analyze
    @url = params["url"]
  end
  def store_ip_address
    session = Session.new(ip_address: request.remote_ip)
    session.save
    raise
  end
end
