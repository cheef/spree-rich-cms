Spree::Core::Engine.routes.draw do
  if SpreeRichCMS::Config.mount_frontend
    scope SpreeRichCMS::Config.frontend_mount_point do
      get "*id", to: 'pages#show', as: :spree_page, constraints: SpreeRichCMS::PageConstraint.new
    end
  end

  namespace :admin do
    resources :pages, except: [ :delete ]
    mount Ckeditor::Engine => 'ckeditor'
  end
end