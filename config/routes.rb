Spree::Core::Engine.routes.draw do
  get '*id', to: 'pages#show', as: :spree_page, constraints: SpreeRichCMS::PageConstraint.new

  namespace :admin do
    resources :pages
  end

  mount Ckeditor::Engine => '/admin/ckeditor'
end