class Employee

  attr_accessor :name, :title
  attr_reader :salary
  # could also use attr_reader for all of them

  def initialize name, title, salary
    @name, @title, @salary = name, title, salary
  end

end
