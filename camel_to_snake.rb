# guess who wrote 900 lines of ruby in camelCase instead of snake_case lol

def camel_to_snake(file_name)
  file_open = File.open(file_name)
  file = file_open.readlines
  file.each do |line|
    if line[/\W([a-z]+[A-Z]\w*)/, 1].nil? == false
      line.gsub(/\W([a-z]+[A-Z]\w*)/) do |var|
        var.gsub(/[A-Z]/) {|m| "_" + m.downcase}
      end
    end
  end
  output = file.join
  new_file = file_name.gsub(".", "_modified.")
  File.open(new_file, "w") {|f| f.write output}
end