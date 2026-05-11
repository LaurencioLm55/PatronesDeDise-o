module GofStateSpp
  class EstadoBorrador
    include EstadoDocumento

    def nombre : String
      "Borrador"
    end

    def editar(documento : DocumentoExpediente) : String
      "El documento '#{documento.nombre}' puede editarse."
    end

    def entregar(documento : DocumentoExpediente) : String
      documento.cambiar_estado(EstadoEntregado.new)
      "El documento fue entregado."
    end

    def iniciar_revision(documento : DocumentoExpediente) : String
      "No se puede revisar un documento en borrador."
    end

    def aprobar(documento : DocumentoExpediente) : String
      "No se puede aprobar un documento en borrador."
    end

    def rechazar(documento : DocumentoExpediente) : String
      "No se puede rechazar un documento en borrador."
    end
  end
end