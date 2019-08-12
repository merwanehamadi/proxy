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
    ipaddr1 = IPAddr.new(request.remote_ip).to_i
    session = Session.new(ip_address: ipaddr1)
    session.save
  end
end
