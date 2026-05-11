require "./patrones_de_diseño"

documento = GofStateSpp::DocumentoExpediente.new("Solicitud de beca")

puts "Demo del patron State"
puts "Documento: #{documento.nombre}"
puts "Estado inicial: #{documento.estado_actual}"
puts

puts "Accion: entregar"
puts documento.entregar
puts "Estado actual: #{documento.estado_actual}"
puts

puts "Accion: iniciar revision"
puts documento.iniciar_revision
puts "Estado actual: #{documento.estado_actual}"
puts

puts "Accion: rechazar"
puts documento.rechazar
puts "Estado actual: #{documento.estado_actual}"
puts

puts "Accion: editar"
puts documento.editar
puts "Estado actual: #{documento.estado_actual}"
puts

puts "Accion: entregar, iniciar revision y aprobar"
puts documento.entregar
puts documento.iniciar_revision
puts documento.aprobar
puts "Estado final: #{documento.estado_actual}"
