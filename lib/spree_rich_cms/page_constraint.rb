class SpreeRichCMS::PageConstraint
  def matches? request
    Spree::Page.friendly.find(request.path) rescue false
  end
end