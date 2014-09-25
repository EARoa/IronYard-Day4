# Define a Robot class
# A robot has a name
class Robot
  def initialize(name)
    @name = name
  end

  def say_hi
    "Hi"
  end

  def say_name
   "My name is #{@name}"
  end

end

# The bend method has one argument 'object_to_bend'
# The bend method should put to the console "Bend X!" where X is object_to_bend

class BendingUnit < Robot

  def object_to_bend(object)
    "Bend #{object}"
  end
end
robot1 = Robot.new("WALL-E")
p robot1.say_hi
p robot1.say_name

robot2 = BendingUnit.new("R2D2")
p robot2.object_to_bend("All Robots")



# Define an ActorUnit class
# An ActorUnit inherits from Robot
# An ActorUnit has a method called 'change_name'
# The 'change_name' method accepts an argument 'new_name'
# The 'change_name' method changes the name property of Robot to 'new_name'


class ActorUnit < Robot
  def change_name(new_name)
    @name = new_name
  end

end

robot3 = ActorUnit.new("Bob")
p robot3.say_name
robot3.change_name("Efrain")
p robot3.say_name
