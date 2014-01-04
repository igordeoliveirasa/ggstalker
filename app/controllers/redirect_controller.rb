class RedirectController < ApplicationController
  def index
    @url = params[:redirect_to]
    @trace = Trace.new
    @trace.data = "igor"

    
    #@trace.save
    
    respond_to do |format|
      if @trace.save
        format.html { redirect_to @trace, notice: 'Trace was successfully created.' }
        format.json { render action: 'show', status: :created, location: @trace }
      else
        format.html { render action: 'new' }
        format.json { render json: @trace.errors, status: :unprocessable_entity }
      end
    end

    
    
    @data = params.to_s

    logger.debug "AQUI"
    logger.debug @data
    logger.debug Trace.where(:data => @data).empty?
    logger.debug "--"


    

    #if Trace.where(:data => @data).empty?
    #@trace.data = @data
    #@trace.save
    #end

    #redirect_to @url
  end
end
