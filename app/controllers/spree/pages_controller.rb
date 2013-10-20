class Spree::PagesController < Spree::StoreController
  respond_to :html

  def show
    respond_with resource
  end

  private

    def resource
      @page ||= Spree::Page.friendly.find params[:id]
    end
end