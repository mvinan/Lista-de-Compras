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

	fp = File.open('alimentos.txt','w')
def reportar(alimento)
	fp.puts(alimento)
end

tres_veces do
	reportar('Brocoli')
end

fp.close