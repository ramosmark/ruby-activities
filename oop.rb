class User
    attr_accessor :id, :name, :username
    attr_writer  :password

    def initialize(id, name, username, password)
        @id = id
        @name = name
        @username = username
        @password = password
    end
    
    def login
        puts "User #{@id} has logged in."
    end

    def logout
        puts "User #{@id} has logged out."
    end

    def changePassword(new_password)
        @password = new_password
        puts "Password changed."
    end
end


user = User.new(201412312, "Mark", "asd123", "123456789")
user.login
user.changePassword("987654321")
user.logout