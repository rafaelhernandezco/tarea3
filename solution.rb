#Solution File
class Node
	attr_accessor :data, :ref

	def initialize data,ref
		@data=data
		@ref=ref
	end
    
end

class List
    
	def initialize data
		@header=Node.new(data,nil)
	end
	
	def add(data)
		direction=@header
        
		while direction.ref !=nil
			direction=direction.ref
		end
		direction.ref=Node.new(data,nil)
	end

	def imprimir
		direction=@header
		list = []
        
		while direction.ref !=nil
			list = list +[direction.data.to_s]
			direction = direction.ref
		end
		list += [direction.data.to_s]
		puts list.join(",")
        
	end
end
	data = gets.chomp
	list = List.new(data)

	while data != "-1"
		data = gets.chomp
        
		if data != "-1"
			list.add(data)
	end
end

puts list.imprimir
