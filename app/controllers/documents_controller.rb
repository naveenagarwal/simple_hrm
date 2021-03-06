class DocumentsController < ApplicationController
  before_action :set_document, only: [:edit, :update, :destroy]

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
    params.require(:document).permit(:file, :description, :attachment_for_id, :attachment_for_type)
  end

  def get_all_documents
    paginated_records_for @document.attachment_for.documents.order("updated_at DESC")
  end

end
