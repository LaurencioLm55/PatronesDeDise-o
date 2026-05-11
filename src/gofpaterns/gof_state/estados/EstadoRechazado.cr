module GofStateSpp
  class EstadoRechazado
    include EstadoDocumento

    def nombre : String
      "Rechazado"
    end

    def editar(documento : DocumentoExpediente) : String
      documento.cambiar_estado(EstadoBorrador.new)
      "El documento rechazado vuelve a borrador para corregirse."
    end

    def entregar(documento : DocumentoExpediente) : String
      "Primero debe corregirse el documento rechazado."
    end

    def iniciar_revision(documento : DocumentoExpediente) : String
      "No se puede revisar un documento rechazado sin corregirlo."
    end

    def aprobar(documento : DocumentoExpediente) : String
      "No se puede aprobar un documento rechazado sin nueva revision."
    end

    def rechazar(documento : DocumentoExpediente) : String
      "El documento ya se encuentra rechazado."
    end
  end
end
