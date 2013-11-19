Spree::Core::Engine.routes.draw do
  if SpreeRichCMS::Config.mount_frontend
    scope SpreeRichCMS::Config.frontend_mount_point do
      get "*id", to: 'pages#show', as: :spree_page, constraints: SpreeRichCMS::PageConstraint.new
    end
  end

  namespace :admin do
    resources :pages, except: [ :delete ]
  end

  # Can't mount in namespace because of rails issue
  # https://github.com/drogus/rails/commit/03d21e7169a2aa11d4cab54b5332ccebae940dd7
  mount Ckeditor::Engine => 'admin/ckeditor'
end