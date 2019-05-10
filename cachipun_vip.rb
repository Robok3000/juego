human_score = 0.0
comp_score = 0.0

while true

  puts "Vamos a jugar piedra, papel o tijera"
  puts "elige, piedra, papel o tijera"
  human_choice = STDIN.gets.chomp

  comp_choice = %w[tijera piedra papel][rand(3)]

  puts "Computador eligió: #{ comp_choice }"
  puts "Tú elejiste: #{ human_choice }"

  msg = case [human_choice, comp_choice]
  when ['piedra', 'piedra'], ['papel', 'papel'], ['tijera', 'tijera']
    comp_score += 0.5
    human_score += 0.5
    'El resultado es un empate'
  when ['piedra', 'tijera'], ['papel', 'piedra'], ['tijera', 'papel']
    human_score += 1
    'Tú Ganas'
  when ['papel', 'tijera'], ['tijera', 'piedra'], ['piedra', 'papel']
    comp_score += 1
    'Computador Gana'
  end

else
    print ("argumento invalido: Debe ser piedra, papel o tijera")
end

  puts msg

end
