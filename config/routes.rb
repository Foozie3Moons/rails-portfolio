Rails.application.routes.draw do

  root 'main#index'

  get 'about/bio'

  # get 'about/skills'

  # get 'about/life'

  get 'contact', to: 'messages#new'

  post 'contact', to: 'messages#create', as: 'create_message'

  get 'portfolio' => 'main#portfolio'

  get 'testimonials' => 'main#testimonials'

  get 'resume' => 'main#resume'

  get 'pdf' => 'main#pdf'

  get 'pdf/download' => 'main#pdf_download'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
