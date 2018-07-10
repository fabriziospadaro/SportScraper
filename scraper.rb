url = "https://betsapi.com/e/"

 r = Nokogiri::HTML(open(url))


table = r.at('table')

array = []

table.search('tr').each do |tr|
   array << tr.text.strip.gsub("\n","").gsub(/\s+/, ' ')
end

new_array =  array.collect(&:strip)
new_array.each do |t|
  p t
end
