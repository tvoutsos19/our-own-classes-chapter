# Define a class Person with:

#  - An attribute first_name
#  - An attribute last_name
#  - An attribute birthdate (we just assign a string to this attribute, e.g. "April 19, 1987")
#  - An instance method, full_name, that puts first_name and last_name together
#  - An instance method, age, that calculates the number of years between today and birthdate

class Person
  require("date")
  attr_accessor :birthdate
  attr_accessor :first_name
  attr_accessor :last_name

  def age
    dob = Date.parse(self.birthdate)
    now = Date.today
    age_in_days = now - dob
    age_in_years = age_in_days / 365

    return age_in_years.to_i
  end

  def full_name
    return self.first_name + " " + self.last_name
  end
end

c=Person.new
c.first_name = "Tom"
c.last_name = "Voutsos"
c.birthdate = "October 20, 1991"

p "Hello " + c.full_name + "!"
p c.age