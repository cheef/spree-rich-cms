class SpreeRichCMS::PageConstraint
  def matches? request
    page_exist? request.path_parameters[:id]
  end

  private

    def page_exist? path
      find_page path
    rescue ActiveRecord::RecordNotFound
      false
    end

    def find_page path
      Spree::Page.friendly.find path
    end
end