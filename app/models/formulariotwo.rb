class Formulariotwo < ApplicationRecord
    # Asumiendo que estás usando Paperclip
  has_attached_file :evidencia

  # Validaciones (por ejemplo, tipo de contenido permitido)
  validates_attachment_content_type :evidencia, content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif", "application/pdf", "application/msword", "application/vnd.openxmlformats-officedocument.wordprocessingml.document"]
end
