def string_shuffle(s)
  s.split('').shuffle.join
end
puts("1 задание")
puts(string_shuffle("foobar"))


puts("2 задание")

class String
  def shuffle
    self.split('').shuffle.join
  end
end

my_string = "Hello, World!"
shuffled_string = my_string.shuffle
puts shuffled_string


puts("3 задание")
person1 = { :first => "Имя1", :last => "Фамилия1" }
person2 = { :first => "Имя2", :last => "Фамилия2" }
person3 = { :first => "Имя3", :last => "Фамилия3" }

# Создаем хэш params и устанавливаем значения :father, :mother и :child
params = {
  :father => person1,
  :mother => person2,
  :child => person3
}

# Проверяем значение params[:father][:first]
puts "Имя отца: #{params[:father][:first]}"