#!/usr/bin/ruby

#https://blog.codeship.com/creating-powerful-command-line-tools-in-ruby/
#http://rubylearning.com/blog/2011/01/03/how-do-i-make-a-command-line-tool-in-ruby/


require 'optparse'



def opts_tsm_consulta_vm(vm_hostname)
  require './tsm_consulta_vm'
  # colocar condicao para baixar caso nao exista
  tsm_consulta_vm.rb vm_hostname
end

parser = OptionParser.new do|opts|
	opts.banner = "Usage: years.rb [options]"
	opts.on('-q', '--query-restore vm_hostname', 'Name') do |vm_hostname|
		opts_tsm_consulta_vm(vm_hostname)
	end

	opts.on('-h', '--help', 'Displays Help') do
		puts opts
		exit
	end
end

parser.parse!



sayHello = 'Hello ' + options[:name] + ', '

if Integer(options[:age]) == 100
    sayAge = 'You are already 100 years old!'
elsif Integer(options[:age]) < 100
    sayAge = 'You will be 100 in ' + String(100 - Integer(options[:age])) + ' years!'
else
    sayAge = 'You turned 100 ' + String(Integer(options[:age]) - 100) + ' years ago!'
end

puts sayHello + sayAge









x = {"hello" => "world", this: {"apple" => 4, tastes: "delicious"}}

require 'json'
puts x.to_json
# {"hello":"world","this":{"apple":4,"tastes":"delicious"}}

puts JSON.pretty_generate( x )
