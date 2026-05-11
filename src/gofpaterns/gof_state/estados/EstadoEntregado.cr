module GofStateSpp

  class EstadoEntregado
    include EstadoDocumento

    def nombre : String
      "Entregado"
    end

    def editar(documento : DocumentoExpediente) : String
      "No se puede editar un documento ya entregado."
    end

    def entregar(documento : DocumentoExpediente) : String
      "El documento ya fue entregado anteriormente."
    end

    def iniciar_revision(documento : DocumentoExpediente) : String
      documento.cambiar_estado(EstadoEnRevision.new)
      "El documento pasó a revisión."
    end

    def aprobar(documento : DocumentoExpediente) : String
      "Primero debe iniciarse la revisión del documento."
    end

    def rechazar(documento : DocumentoExpediente) : String
      "Primero debe iniciarse la revisión del documento."
    end
  end
end