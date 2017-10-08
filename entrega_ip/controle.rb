
require 'logger'
require 'json'

@logger = Logger.new(STDOUT)
@logger.level = Logger::DEBUG

lista_ips_vlan_dev = []
ip = {}

File.open("./ips_livres_dev.txt").each_line do |line|
  lista_ips_vlan_dev.insert(0,line)
end


lista_ips_vlan_dev_ip_em_uso = File.new("./ips_em_uso_dev.txt",  "a")
lista_ips_vlan_dev_ip_livre = File.new("./ips_livres_dev.txt",  "w")


puts "\nFavor informar seu email:"
usuario = gets
puts ''

if lista_ips_vlan_dev.empty?
  @logger.error("Acabaram os IP's disponiveis.")
else
  novo_ip = lista_ips_vlan_dev.pop.chomp
  puts ''
  ip["ip"] = novo_ip.chomp
  puts ip.to_json
  puts ''
  @logger.info("Disponibilizado IP #{novo_ip} para o usuario #{usuario}")
  lista_ips_vlan_dev_ip_em_uso.write(novo_ip)
end


lista_ips_vlan_dev.each do |line|
    lista_ips_vlan_dev_ip_livre.puts line
end
