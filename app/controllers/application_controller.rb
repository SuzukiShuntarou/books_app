class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
    def after_sign_in_path_for(resource)
      user_path(resource) # サインイン後にユーザー詳細画面にリダイレクト
    end
  
    def after_sign_up_path_for(resource)
      user_path(resource) # サインアップ後にユーザー詳細画面にリダイレクト
    end
end
