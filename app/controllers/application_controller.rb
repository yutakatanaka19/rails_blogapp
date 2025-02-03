class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  before_action :configure_permitted_parameters, if: :devise_controller?

  rescue_from ActiveRecord::RecordNotFound, with: :render_404  # ここを追加！

  private  # ここから下はプライベートメソッド

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :icon])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :icon])
  end

  def render_404
    render file: Rails.public_path.join("404.html"), status: :not_found, layout: false
  end
end
