class ApplicationController < ActionController::Base

  def after_sign_in_path_for(resource)
    tweets_path(resource) # ログイン後に遷移するpathを設定
  end

  def after_sign_up_path_for(resource)
     tweets_path(resource)# サイン後に遷移するpathを設定
  end

  def after_sign_out_path_for(resource)
    root_path # ログアウト後に遷移するpathを設定
  end

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :account_id])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :account_id])
  end
end
