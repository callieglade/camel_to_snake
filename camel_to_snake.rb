# guess who wrote 900 lines of ruby in camelCase instead of snake_case lol

def camel_to_snake(file_name)
  file_open = File.open(file_name)
  file = file_open.readlines.map(&:chomp)
  file.each do |line|
    #
  end
end