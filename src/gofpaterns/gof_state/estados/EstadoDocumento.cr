module GofStateSpp
  module EstadoDocumento
    abstract def nombre : String
    abstract def editar(documento : DocumentoExpediente) : String
    abstract def entregar(documento : DocumentoExpediente) : String
    abstract def iniciar_revision(documento : DocumentoExpediente) : String
    abstract def aprobar(documento : DocumentoExpediente) : String
    abstract def rechazar(documento : DocumentoExpediente) : String
  end
end
