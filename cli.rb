kernel_function = ARGV[0]
kernel_function_parametro = ARGV[1]

def ls(caminho)
    puts Dir.entries(caminho)
end

def cat(caminho)
    puts File.open(caminho).read
end

if kernel_function.downcase == "ls"
   ls(kernel_function_parametro)
elsif  kernel_function.downcase == "cat"
   cat(kernel_function_parametro)
end

case kernel_function.downcase
when "cat"
   cat(kernel_function_parametro)
when "ls"
   ls(kernel_function_parametro)
end
