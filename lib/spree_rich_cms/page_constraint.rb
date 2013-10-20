class SpreeRichCMS::PageConstraint
  def matches? request
    page_exist? request.path
  end

  private

    def page_exist? path
      find_page without_first_slash(path)
    rescue ActiveRecord::RecordNotFound
      false
    end

    def without_first_slash path
      if path.start_with? '/'
        path[1..-1]
      else
        path
      end
    end

    def find_page path
      Spree::Page.friendly.find path
    end
end