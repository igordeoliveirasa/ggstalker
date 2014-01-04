class RedirectController < ApplicationController
  def index
    @url = params[:redirect_to]
    @trace = Trace.new
    @data = params.to_s

    #logger.debug "AQUI"
    #logger.debug @data
    #logger.debug Trace.where(:data => @data).empty?
    #logger.debug "--"

    if Trace.where(:data => @data).empty?
      @trace.data = @data
      @trace.save
    end

    #redirect_to @url
    require 'open-uri'
    send_data open(@url).read, type: "image/gif", disposition: "inline"
  end
end
