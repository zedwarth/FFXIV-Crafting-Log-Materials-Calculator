#!/usr/bin/env ruby

input_file = ARGV[0]
@dic = Hash.new(0)


def parse line
	quantity = line[0].to_i
	item = line[2..-1]
	@dic[item] += quantity
end

def output hash 
	hash.each do |key, value|
		puts "#{value} #{key}"
	end
end

File.open(input_file).each_line do |line|
	parse line
end

output @dic
