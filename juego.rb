jugador = ARGV[0]
computador = rand(3)
elije = ARGV[1]

if computador == 0
    elije = 'piedra'
elsif computador == 1
    elije = 'papel'
elsif computador == 2
    elije =  'tijera'
end


if computador == 0 && jugador == 'papel' || computador == 1 && jugador == 'tijera' || computador == 2 && jugador == 'piedra'
  print "computador juega #{elije}"
  print "ganaste"
elsif computador == 0 && jugador == 'tijera' || computador == 1 && jugador == 'piedra' || computador == 2 && jugador == 'papel'
  print "computador juega #{elije}"
  print "perdiste"
elsif
  computador == 0 && jugador == 'piedra' || computador == 1 && jugador == 'papel' || computador == 2 && jugador == 'tijera'
  print "computador juega #{elije}"
  print "Empataste"
else
  print "Argumento inválido: Debe ser piedra, papel o tijera."
end
