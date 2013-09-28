Deface::Override.new \
  virtual_path:  'spree/layouts/admin',
  name:          'rich_cms_pages_tab',
  insert_bottom: "[data-hook='admin_tabs'], #admin_tabs[data-hook]",
  partial:       'spree/admin/shared/pages_tab',
  disabled:      false