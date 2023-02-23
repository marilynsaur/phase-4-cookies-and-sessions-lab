class SessionsController < ApplicationController
    def index
        session[:session_hello] ||= 0
        cookies[:cookies_hello] ||= 0
        render json: { session: session, cookies: cookies.to_hash }
      end

    #   user = User.find_by(id: session[:user_id])
    #   if user 
    #     render json: user
    #   else
    #     render json: { error: "Not authorized" }, status: :unauthorized
      
end
