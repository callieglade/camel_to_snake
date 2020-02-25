# guess who wrote 900 lines of ruby in camelCase instead of snake_case lol
# Regex Magic: /\W([a-z]+[A-Z]\w*)/

def camel_to_snake(file_name)
  file_open = File.open(file_name)
  file = file_open.readlines.map(&:chomp)
  content = file.select{|line| line[/\W([a-z]+[A-Z]\w*)/, 1].nil? == false}
  index = content.map{|line| file.index(line)}
  matches = Array.new(content.length) {|i| {content: content[i], index: index[i]}}
end