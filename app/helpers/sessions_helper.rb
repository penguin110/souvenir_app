module SessionsHelper

    def log_in(user)
        session[:user_id] = user.id
    end
    def current_user?(user)
        user == current_user
    end
    def current_user
        if session[:user_id]
            current_user = session[:user_id]
        else
            current_user = ""
        end
    end
end
