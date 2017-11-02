Rails.application.routes.draw do
  root 'main#about'

  get 'contact' => 'main#contact'

  get 'portfolio' => 'main#portfolio'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
