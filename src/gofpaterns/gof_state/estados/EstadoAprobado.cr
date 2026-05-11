module GofStateSpp
  class EstadoAprobado
    include EstadoDocumento

    def nombre : String
      "Aprobado"
    end

    def editar(documento : DocumentoExpediente) : String
      "No se puede editar un documento aprobado."
    end

    def entregar(documento : DocumentoExpediente) : String
      "El documento aprobado ya no requiere entrega."
    end

    def iniciar_revision(documento : DocumentoExpediente) : String
      "El documento aprobado ya no requiere revisión."
    end

    def aprobar(documento : DocumentoExpediente) : String
      "El documento ya se encuentra aprobado."
    end

    def rechazar(documento : DocumentoExpediente) : String
      "No se puede rechazar un documento ya aprobado."
    end
  end
end
