class RedirectController < ApplicationController
  def index
    @url = params[:redirect_to]
    @trace = Trace.new
    @data = params.to_s

    if Trace.where(:data => @data).empty?
      @trace.data = @data
      @trace.save
    end

    redirect_to @url
  end
end
