Dir.entries("/tmp").each do |arquivo|
  dados = File.open(arquivo).read
  puts dados
end
