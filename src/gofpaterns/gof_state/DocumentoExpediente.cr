module GofStateSpp
  class DocumentoExpediente
    getter nombre

    def initialize(@nombre : String)
      @estado = EstadoBorrador.new.as(EstadoDocumento)
    end

    def estado_actual : String
      @estado.nombre
    end

    def editar : String
      @estado.editar(self)
    end

    def entregar : String
      @estado.entregar(self)
    end

    def iniciar_revision : String
      @estado.iniciar_revision(self)
    end

    def aprobar : String
      @estado.aprobar(self)
    end

    def rechazar : String
      @estado.rechazar(self)
    end

    def cambiar_estado(nuevo_estado : EstadoDocumento) : Nil
      @estado = nuevo_estado
    end
  end
end
