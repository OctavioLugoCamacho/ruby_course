def once
  puts "Before"
  yield
  puts "After"
end
once {puts "Running block"}