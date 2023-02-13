# Why Use Class Variables and Methods

class Client 
    @@no_of_clients = 0
    def initialize(id, name, addr)
        @client_id = id 
        @client_name = name 
        client_addr = addr
    end

    def display_details()
        puts 'Client id #@client_id' 
        puts 'Client name #@client_name' 
        puts 'Client address #@client_addr' 
    end

    def total_no_of_clients()
        @@no_of_clients += 1
        puts "Total number of client: #@@no_of_clients"
    end
end
# Create Intance Object
client1 = Client.new("1", "Greg", "111 First Rd")
client2 = Client.new("2", "Larry", "222 Second Rd")
client3 = Client.new("3", "Helen", "333 Third Rd")
client1.total_no_of_clients()
client2.total_no_of_clients()
client3.total_no_of_clients()



# What is a Class Method?
# What is a Class Method?
# What is a Class Method?

class Album
    @@album_count = 0
    def initialize
        @@album_count += 1
    end
    def self.count
        @@album_count
    end
end

puts Album.new 


# Class Constants
# Class Constants

class Album
    GENRES = ["Hip-Hop", "Pop", "Jazz"]
  
    @@album_count = 0
  
    def initialize(genre)
      if GENRES.include?(genre)
        @@album_count += 1
      end
    end
  
    def self.count
      @@album_count
    end
  end
puts Album::GENRES