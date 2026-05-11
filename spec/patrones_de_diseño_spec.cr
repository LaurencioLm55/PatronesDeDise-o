require "./spec_helper"

describe PatronesDeDiseño do
  it "defines a version" do
    PatronesDeDiseño::VERSION.should eq("0.1.0")
  end
end

describe GofStateSpp::DocumentoExpediente do
  it "moves through the approval flow" do
    documento = GofStateSpp::DocumentoExpediente.new("Solicitud")

    documento.estado_actual.should eq("Borrador")
    documento.entregar.should eq("El documento fue entregado.")
    documento.estado_actual.should eq("Entregado")
    documento.iniciar_revision.should eq("El documento pasó a revisión.")
    documento.estado_actual.should eq("En revision")
    documento.aprobar.should eq("El documento fue aprobado.")
    documento.estado_actual.should eq("Aprobado")
  end

  it "moves rejected documents back to draft when edited" do
    documento = GofStateSpp::DocumentoExpediente.new("Expediente")

    documento.entregar
    documento.iniciar_revision
    documento.rechazar.should eq("El documento fue rechazado.")
    documento.estado_actual.should eq("Rechazado")
    documento.editar.should eq("El documento rechazado vuelve a borrador para corregirse.")
    documento.estado_actual.should eq("Borrador")
  end
end
