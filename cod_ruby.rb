puts "dia dos"

["Pollo","Arroz"].each do |alimento|
	puts "Este es el alimento #{alimento}"
	puts "----------"
end

def tres_veces
	yield
	yield
	yield
end


def reportar(archivo, alimento)
	archivo.puts(alimento)
end

File.open('alimentos.txt','w') do |fp|
	tres_veces do
		reportar(fp,'Brocoli')
	end
end

def nuestro_reportar(nombre)
	fp = File.open("alimentos.txt", "w")
	yield(fp)
ensure
	fp.close
end

nuestro_reportar('alimentos.txt') do |fp|
	tres_veces { fp.puts("Coliflor") }
end