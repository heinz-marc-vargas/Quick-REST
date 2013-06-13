class Api::PagesController < ApplicationController
  respond_to :json, :xml

  def index
    @pages = Api::Page.all
    respond_with @pages
  end

  def show
    @page = Api::Page.find(params[:id])
    respond_with @page
  end

  def new
    @page = Api::Page.new(params[:page])
    respond_with @page
  end

  # GET /pages/1/edit
  def edit
    @page = Api::Page.find(params[:id])
  end

  def create
    @page = Api::Page.new(params[:page])
    @page.save
    respond_with @page
  end

  # PUT /pages/1
  # PUT /pages/1.json
  def update
    @page = Api::Page.find(params[:id])
    @page.update_attributes(params[:page])
    respond_with @page
  end

  # DELETE /pages/1
  # DELETE /pages/1.json
  def destroy
    @page = Api::Page.find(params[:id])
    @page.destroy
    respond_with @page
  end
  
  # returns a collection of published pages sorted by "publish_on DESC"
  def published
    @pages = Api::Page.published
    respond_with @pages
  end

  # returns a collection of pages with empty publish_on field
  def unpublished
    @pages = Api::Page.unpublished
    respond_with @pages
  end

  # sets the published_on field to current date/time
  # sample cURL command: curl -X POST http://<hostname>/api/pages/<page id>/publish.json -d ''
  def publish
    @page = Api::Page.find(params[:id])
    @page.publish
    respond_with @page
  end

  # returns the number (sum) of words in page title & content
  # sample cURL command: curl -X GET http://<hostname>/api/pages/<page id>/total_words
  def total_words
    @page = Api::Page.find(params[:id])
    respond_with @page.total_words
  end
end
