class Document::CategoriesController < ApplicationController
  before_action :set_document_category, only: [:edit, :update, :destroy]

  def index
    @document_categories = paginated_records_for DocumentCategory
  end

  def new
    @document_category = DocumentCategory.new
  end

  def edit
  end

  def create
    @document_category = DocumentCategory.new(document_category_params)

    respond_to do |format|
      if @document_category.save
        format.html { redirect_to document_categories_path(pagination_params), notice: t("model.create", kind: "Document Category") }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    respond_to do |format|
      if @document_category.update(document_category_params)
        format.html { redirect_to document_categories_path(pagination_params), notice: t("model.update", kind: "Document Category") }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def destroy
    @document_category.destroy
    respond_to do |format|
      format.html { redirect_to document_categories_path(pagination_params), notice: t("model.destroy", kind: "Document Category") }
    end
  end

  private

  def set_document_category
    @document_category = DocumentCategory.find(params[:id])
  end

  def document_category_params
    params.require(:document_category).permit(:name)
  end

end
