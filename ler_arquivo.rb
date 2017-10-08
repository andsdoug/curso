begin
  puts "ola"
   File.open("/tmp/resolv1.conf")
rescue Errno::ENOENT => e
  puts e.message
   puts "nao encontrado!"
rescue NameError
  puts "variavel nao existe"
end

file
