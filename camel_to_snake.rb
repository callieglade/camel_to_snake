# guess who wrote 900 lines of ruby in camelCase instead of snake_case lol

def camel_to_snake(file_name)
  f = File.new(file_name.gsub(".", "_snaked."), "w+")
  File.foreach(file_name) do |line|
    if line[/\W([a-z]+[A-Z]\w*)/, 1].nil? == false
      line.gsub!(/\W([a-z]+[A-Z]\w*)/) do |var|
        var.gsub!(/[A-Z]/) {|m| "_" + m.downcase}
      end
    end
    f.write line
  end
  f.close
end