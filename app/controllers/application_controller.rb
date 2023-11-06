class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :authenticate_user!

    def after_sign_out_path_for(resource)
        # Personaliza la ruta a la que quieres redirigir después de cerrar sesión
        root_path
    end
end
