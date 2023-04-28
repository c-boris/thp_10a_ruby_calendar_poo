class User
  attr_accessor :age, :email
  @@all_users = []

  def initialize(email, age)
    @email = email
    @age = age
    @@all_users << self
  end

  def self.all
    @@all_users
  end

  def self.find_by_email(email)
    @@all_users.each do |user|

      if user.email == email
        return user
      end

    end

    puts "aucun utilisateur n'a cet email"
    return false
  end

end

# julie = User.new("julie@email.com", 32)
# jean = User.new("jean@gmail.com", 28)
# puts julie.email
# puts julie.age
# puts User.find_by_email("julie@email.com")
# puts User.all.inspect