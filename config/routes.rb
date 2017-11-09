Rails.application.routes.draw do

  root 'main#index'

  get 'about/bio'

  get 'about/skills'

  get 'about/fun'

  get 'contact' => 'main#contact'

  post 'contact' => 'main#send_mail'

  get 'portfolio' => 'main#portfolio'

  get 'resume' => 'main#resume'

  get 'pdf' => 'main#pdf'

  get 'pdf/download' => 'main#pdf_download'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
