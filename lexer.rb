require_relative 'retina'

def main

  #chequear extension del archivo
  unless ARGV[0].end_with? ".rtn"
    abort("Por favor introduzca un archivo valido en formato .rtn")
  end

  #abrir el archivo
  begin
    file = File.read(ARGV[0])
  rescue
    puts""
    puts "Archivo no Encontrado"
    puts ""
    return
  end

  #crear lexer
  lexer = Lexer.new(file)

  #leer tokens
  lexer.leerPorLinea

  #imprimir tokens
  puts ""
  if !lexer.errors.empty?
    puts lexer.errors
  else
    puts lexer.tokens
  end
  puts ""
end

#llamada a la funcion
main
