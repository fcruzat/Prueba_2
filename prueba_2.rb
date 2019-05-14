def read_alum(file_name)
    file = File.open(file_name, 'r')
    alum = file.readlines.map(&:chomp).map { |lines| lines.split(', ') }
    file.close
    alum
end


def promedio
    alum = read_alum('alumnos.csv') 
        alum.each do |arreglo|
        notas = arreglo[1..5]
        suma = 0
        notas.each do |nota|
            suma += nota.to_i.to_f
        end
        
        division = suma/notas.length
        puts "El promedio de #{arreglo[0]} es: #{division}"
        end
    end



def inasistencias
    alum = read_alum('alumnos.csv') {}
    alum.each do |arreglo|
        nombre = arreglo[0]
        "A" == 0
        arreglo.each do |inasistencia|
            contador = 0
            
            if inasistencia == "A"
                contador += 1
                puts "Alumno #{nombre} presenta #{contador} inasistencia"
            end 
        end
    end
end


def aprobados
    alum = read_alum('alumnos.csv') 
    alum.each do |arreglo|
        notas = arreglo[1..5]
        suma = 0
        notas.each do |nota|
            suma += nota.to_i.to_f
        end
        division = suma/notas.length
        if division >= 5.0
            puts "Alumno #{arreglo[0]} fue aprobado con #{division}!!"
        else
            puts "Alumno #{arreglo[0]} fue desaprobado :("
        end
    end
end

condicion = 0 
while condicion != 4
    puts "Ingresa un número del 1 al 3, Escribe 4 para salir"
    condicion = gets.chomp.to_i
    case condicion
    when 1
        puts "1) Promedios de cada alumno:
         "
        promedio
    when 2
        puts "2) Quienes tienen inasistencias: 
        "
        inasistencias
    when 3
        puts "3) Conoce quienes aprobaron: 
        "
        aprobados
    when 4
        puts "Saliste"
    else 
        puts "Opción inválida, intenta nuevamente"
    end
end