@texto = ARGV

File.open('almacen.txt', "a") do  |f|
	@lineas = File.open('almacen.txt', 'r').readlines
	@file = @lineas.to_a
	@texto = @texto[0].to_s
	@fecha = Time.now.to_s
	
		if @lineas.empty? 
			f.puts "1, " + @texto +", #{Time.now.to_s}"
		else
			ultimo = @file.last.to_s.split(/,/)[0].to_i.numerator + 1
			@ultimo = ultimo.to_s

			f.puts "#{@ultimo}, "+ @texto +", #{@fecha}"
		end 
end

if @lineas.empty?
	puts "Se agrego con exito el primer elemento " + @texto + ",con ID 1, y fecha #{@fecha}"
else
	puts "Se agrego con exito el elemento " + @texto + ",con ID #{@ultimo}, y fecha #{@fecha}"
end