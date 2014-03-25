class DocumentsController < ApplicationController
  before_action :set_document, only: [:edit, :update, :destroy]

  # before_action :set_creator

  def new
    @document = Document.new(document_params)
  end

  def edit
  end

  def create
    @document = Document.new(document_params)
    @document.creator = current_entity

    if @document.save
      @documents = get_all_documents
    end
  end

  def update
    @document.creator = current_entity

    if @document.update(document_params)
      @documents = get_all_documents
    end
  end

  def destroy
    if @document.destroy
      @documents = get_all_documents
    end
  end

  private

  def set_document
    @document = Document.find(params[:id])
  end

  def document_params
    params.require(:document).permit(:file, :description, :attachment_id, :attachment_type)
  end

  def get_all_documents
    paginated_records_for @document.attachment.documents.order("updated_at DESC")
  end

end
