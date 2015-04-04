# Crear un clon de Akinator pero solo para animales en ruby (akinator.rb) 
# preguntando y validando la informacion suministrada por los usuarios
#  hasta que finalmente se obtenga un animal final.

# Para que este reto sea valido se debe tomar en cuenta:

# 1. No se deben usar bucles ni estructuras iterativas. 
# 2. Debe estar validada toda la informacion cargada por el usuario 
# con su respectivo feedback (si el juego termina repentinamente o no 
#   se explica al usuario el tipo de error se tomara como un fallo en la entrega) 
# 3. No es necesario contemplar todos los animales existente, pero si 
# es necesario que el juego sea al menos divertido (al menos 10 animales 
#   con caracteristicas distintas al final de cada set de preguntas).

# Para mas referencia revisar http://es.akinator.com

# Animales = perro, gato, @loro, @pollo, @tortuga, ardilla, @delfin, @puerco, @ballena, @aguila


def hello_and_rules
  puts "\t\t\tAkinator de animales"
  puts "\nNuestro avanzado sistema de IA tratara de adivinar el animal en el que piensas"
  puts "\nPor los momentos solo puedes pensar en: perro, gato, loro, pollo, tortuga, ardilla, delfin, puerco, ballena o aguila"
  puts "\nResponde 'si' o 'no'"
end

def check_answer(answer)
  if answer == "si" || answer == "no"
    return true
  else 
    puts  "Recuerda solo puedes responder 'si' o 'no'"
  end
end

def game
  puts
  print "¿tiene alas? "
  a1 = gets.chomp.to_s.downcase
  if check_answer(a1) && a1 == "si"
    print "¿vuela? "
    a2 = gets.chomp.to_s.downcase
    if check_answer(a2) && a2 == "si"
      print "¿puede imitar sonidos? "
      a3 = gets.chomp.to_s.downcase
      if check_answer(a3) && a3 == "si"
        puts "¡Tu animal es el loro!"
      else
        puts "¡Tu animal es el aguila!"
      end
    else
      puts "¡Tu animal es el pollo!"
    end
  else
    print "¿es maritimo? "
    a4 = gets.chomp.to_s.downcase
    if check_answer(a4) && a4 == "si"
      print "¿tiene caparazon? "
      a5 = gets.chomp.to_s.downcase
      if check_answer(a5) && a5 == "si"
        puts "¡Tu animal es la tortuga!"
      else
        print "¿es muy grande? "
        a6 = gets.chomp.to_s.downcase
        if check_answer(a6) && a6 == "si"
          puts "¡Tu animal es la ballena!"
        else
          puts "¡Tu animal es el delfin!"
        end
      end
    else
      print "¿puede tener orgasmos de 30 minutos?"
      a7 = gets.chomp.to_s.downcase
      if check_answer(a7) && a7 == "si"
        puts "¡Tu animal es el puerco!"
      else
        print "¿le gusta comer nueces y trepar arboles? "
        a8 = gets.chomp.to_s.downcase
        if check_answer(a8) && a8 == "si"
          puts "¡Tu animal es la ardilla!"
        else
          print "¿dicen que es el mejor amigo del hombre?"
          a9 = gets.chomp.to_s.downcase
          if check_answer(a9) && a9 == "si"
            puts "¡Tu animal es el perro!"
          else
            puts "¡Tu animal es el gato!"
          end
        end
      end
    end
  end

end

def main
  hello_and_rules
  game
end

main