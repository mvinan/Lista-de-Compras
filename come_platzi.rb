cmd = ARGV.shift
if cmd
	alimento = cmd
	File.open('alimentos.txt', 'a') do |f|
		creado = Time.now
		f.puts "#{alimento}, #{creado}"
	end
	puts "#{alimento} agregado"
end