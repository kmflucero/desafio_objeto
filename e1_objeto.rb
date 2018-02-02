class Carta
    attr_reader :type, :number
	def initialize(pinta, numero)
		@type = pinta 
		 @number = numero
	end
end

arreglo_cartas = []
pinta_cartas = ['trebol','corazon','pica','diamante']
numero_cartas = [1,2,3,4,5,6,7,8,9,10,11,12,13]

puts "escriba jugar para generar 5 cartas nuevas"
	puts "escriba mostrar para mostrar las cartas generadas"
	puts "escriba salir para empezar el juego"
	puts "si quiere elegir cambiar sus cartas escriba jugar nuevamente"
opcion =''
while opcion != 'salir'
	

  opcion = gets.chomp
  case opcion
    when 'jugar'
    	5.times do
        arreglo_cartas.push(Carta.new(pinta_cartas.sample, numero_cartas.sample))
        end
        puts 'se han generado 5 cartas, para verlas escribe mostrar'
    when 'mostrar'
    	arreglo_cartas.each{ |v| puts "#{v.type} #{v.number}"}
    	puts "debe elegir jugar para ver las cartas" if arreglo_cartas == []
    when 'salir' 
      puts "ha elegido salir"
    else
      puts "opción inválida"
  end
end



