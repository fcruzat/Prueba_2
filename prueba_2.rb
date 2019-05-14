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

promedio