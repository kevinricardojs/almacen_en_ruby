@lineas = File.open('almacen.txt', 'r').readlines
@busqueda = ARGV.shift


@lineas.each do |l|
	busqueda = @busqueda.to_i
	if l.to_s.split(/,/)[0].to_i == busqueda
		puts "Has comprado un#{l.to_s.split(/,/)[1]}"
	end
end