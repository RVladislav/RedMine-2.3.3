get 'polls', :to => 'polls#index'
post 'post/:id/vote', :to => 'polls#vote'
post 'show', :to => 'polls#show'