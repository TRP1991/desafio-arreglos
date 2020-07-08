=begin 

Desafío 4

Se necesita crear un programa llamado filtro_procesos.rb que lea un archivo que tiene datos por
línea. Estos  datos  representan la  cantidad de  milisegundos que demoran  en  terminar algunos
procesos del sistema operativo.

Ejemplo de archivo

procesos.data

121
141
159
131
199
121
299
312
412
024
213

Se  necesita un  programa que  pueda leer  un  archivo  de  las  mismas características y  generar  un
archivo  llamado procesos_filtrados.data  donde  todos los  valores sean mayor a  un  número
utilizar al cargar el programa.

Uso:

ruby filtro_procesos.rb 250

Debe generar el archivo procesos_filtrados.data con:

299
312
412

Tips:

Puedes ocupar los datos del archivo procesos.data como base para crear tu archivo.
En la corrección el archivo contendrá distintos datos al presentado.
La revisión se realizará sobre el archivo generado, este tiene que generarse en el mismo
directorio de trabajo.


=end 

valor = ARGV[0]
valor = valor.to_i
data = open('procesos.data').readlines
lines = data.count
array = []
lines.times do |i|
    array << data [i].to_i
end
new_array = array.select do |x|
    x > valor
end
File.write('procesos_filtrados.data', new_array.join("\n"))