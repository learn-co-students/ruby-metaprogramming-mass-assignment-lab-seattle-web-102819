class Person
  
  attr_accessor :name, :birthday, :hair_color, :eye_color, :height, 
  :weight, :handed, :complexion, :t_shirt_size, 
  :wrist_size, :glove_size, :pant_length, :pant_width

  def initialize(attributes)
    attributes.each {|key, value| self.send(("#{key}="), value)}
  end

end

devin_attributes = {name: "Devin", hair_color: "brown", eye_color: "green", pant_length: 30}
bob_attributes = {name: "Bob", weight: "220", t_shirt_size: "XL"}

devin = Person.new(devin_attributes)
bob = Person.new(bob_attributes)

puts devin.name
puts devin.hair_color
puts devin.eye_color
puts bob.name
puts bob.weight
puts bob.t_shirt_size