class DocumentsController < ApplicationController
  before_action :set_document, only: [:edit, :update, :destroy]

  before_action :set_creator

  def new
    @document = Document.new(document_params)
  end

  def edit
  end

  def create
    @document = Document.new(document_params)
    @document.creator = current_entity
    @document.save
  end

  def update
    @document.creator = current_entity
    @document.update(document_params)
  end

  def destroy
    @document.destroy
  end

  private

  def set_document
    @document = Document.find(params[:id])
  end

  def document_params
    params.require(:document).permit(:file, :description, :attachment_id, :attachment_type)
  end

end
