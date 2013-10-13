# Use this hook to configure ckeditor
Ckeditor.setup do |config|
  require "ckeditor/orm/active_record"

  config.image_file_types = ["jpg", "jpeg", "png"]
  config.attachment_file_types = ["doc", "docx", "xls", "odt", "ods", "pdf", "rar", "zip", "tar", "swf"]
  config.authorize_with :cancan, Spree::Ability
end