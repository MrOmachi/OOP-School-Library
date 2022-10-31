class Person 

  attr_accessor = :name, :age
  attr_reader = :id, 

  initialize(name = 'Unknown', age, parent_permission = true)
    super()
    @id = random.rand(1..50)
    @name = name
    @age = age
    @parent_permission = parent_permission

  end

  def is_of_age?
    if(@age >= 18)
      true
    else
      false
  end

  def can_use_services?
    is_of_age || parent_permission
  end

  end


end