Rails.application.routes.draw do
  resources :comments
  root 'pages#index'
  # 　　　パス＃メソッド
  get 'favorites/index'

  get 'topics/new'

  get 'sessions/new'

  get 'users/new'

  get 'pages/index'

  get 'pages/help'

  get '/login', to:'sessions#new'
  post '/login', to:'sessions#create'
  delete '/logout', to:'sessions#destroy'

  resources 'users'
  resources 'topics'

  post '/favorites', to:'favorites#create'
  get '/favorites', to:'favorites#index'

  post 'ken', to:'comments#create'



# 指定したurlにに飛ばす
# commnetモデルを作る
# アクション先
# フォームからアクションにデータを渡す
# コメントコントローラを作る
# favoirteを作る

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
