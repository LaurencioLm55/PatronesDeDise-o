module GofStateSpp
  class EstadoEnRevision
    include EstadoDocumento

    def nombre : String
      "En revision"
    end

    def editar(documento : DocumentoExpediente) : String
      "No se puede editar un documento en revision."
    end

    def entregar(documento : DocumentoExpediente) : String
      "El documento ya fue entregado y esta en revision."
    end

    def iniciar_revision(documento : DocumentoExpediente) : String
      "El documento ya se encuentra en revision."
    end

    def aprobar(documento : DocumentoExpediente) : String
      documento.cambiar_estado(EstadoAprobado.new)
      "El documento fue aprobado."
    end

    def rechazar(documento : DocumentoExpediente) : String
      documento.cambiar_estado(EstadoRechazado.new)
      "El documento fue rechazado."
    end
  end
end
