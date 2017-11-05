Rails.application.routes.draw do

  root 'main#index'

  get 'about/bio'

  get 'about/skills'

  get 'about/fun'

  get 'contact' => 'main#contact'

  post 'contact' => 'main#send_mail'

  get 'portfolio' => 'main#portfolio'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
