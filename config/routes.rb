Rails.application.routes.draw do
  scope :ruby_hash_converter do
  root to: 'convert#index'
  post "", to: "convert#convert"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
