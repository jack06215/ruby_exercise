# Object
class Book
  attr_accessor :title, :author, :pages
  def initialize(title, author, pages)
    @title = title
    @author = author
    @pages = pages
  end
end

book1 = Book.new('Harry Potter', 'JK Rowling', 400)
puts format('Title: %<title>s, Author: %<author>s, Pages: %<pages>d', 'title': book1.title,\
                                                                      'author': book1.author,\
                                                                      'pages': book1.pages)

# Inheritance
class Chef
  def make_chicken
    puts 'The chef makes chicken'
  end

  def make_salad
    puts 'The chef makes salad'
  end

  def make_special_dish
    puts 'The chef makes bbq ribs'
  end
end

# Inherited class
class ItalianChef < Chef
  def make_special_dish
    puts 'The chef makes eggplant parm'
  end

  def make_pasta
    puts 'The chef makes pasta'
  end
end

chef = Chef.new
chef.make_chicken

italian_chef = ItalianChef.new
italian_chef.make_special_dish
italian_chef.make_pasta
