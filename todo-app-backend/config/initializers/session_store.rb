if Rails.env === 'production' 
    Rails.application.config.session_store :cookie_store, key: '_CVWO-todo-app', domain: 'CVWO-todo-app-json-api'
else
    Rails.application.config.session_store :cookie_store, key: '_CVWO-todo-app'
end