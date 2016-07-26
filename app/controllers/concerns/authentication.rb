module Authentication
  extend ActiveSupport::Concern

  included do
    before_action :configure_permitted_parameters, if: :devise_controller?
    helper do
      def current_user
        super.decorate if user_signed_in?
      end
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i(name surname email password password_confirmation))
    devise_parameter_sanitizer.permit(:account_update, keys: %i(name surname email password password_confirmation))
  end
end