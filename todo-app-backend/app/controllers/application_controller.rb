class ApplicationController < ActionController::API
    include ActionController::Helpers
    skip_before_action :verify_authenticity_token, raise: false

    helper_method :logged_in?, :login!, :logout!, :authorized_user?, :current_user, :set_user

    def login!
        session[:user_id] = @user.id
    end

    def logged_in?
        !!session[:user_id]
    end

    def logout!
        session.clear
    end

    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def set_user
        @user = User.find_by(id: session[:user_id])
    end

    def authorized_user?
        @user == current_user
    end

end
