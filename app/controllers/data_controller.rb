class DataController < ApplicationController
  
  http_basic_authenticate_with :name => "cameron", :password => "star!craft3"

  def stats
    @data = Datum.all
  end

  def index
    @data = Datum.all
  end

  def show
    @datum = Datum.find(params[:id])
  end

  def new
    @datum = Datum.new
  end

  def edit
    @datum = Datum.find(params[:id])
  end

  def create
    @datum = Datum.new(params[:datum])
    if @datum.save
      redirect_to @datum, notice => "Record created successfully."
    else
      render :action => "new"
    end
  end

  def update
    @datum = Datum.find(params[:id])
    
    if @datum.update_attributes(params[:datum])
      redirect_to @datum, notice => "Record updated successfully."
    else
      render :action => "edit"
     end
  end

  def destroy
    @datum = Datum.find(params[:id])
    @datum.destroy

    redirect_to data_url
  end
end
