class Contact
 
  ## In-memory list of contacts
  @@contacts = [{:name => "Rene", :email => "rene.cravioto@gmail.com"}]
 
  attr_accessor :name
  attr_accessor :email
 
  def initialize(name, email)
    @name = name
    @email = email
    # TODO: assign local variables to instance variables
  end
 
  def to_s
    # TODO: return string representation of Contact
    @@contacts.to_s
  end
 
  ## Class Methods
  class << self
    def new
      # TODO: Will initialize a contact as well as add it to the list of contacts
      puts 'Name you want to add?'.green
        name = gets.chomp.capitalize
      puts 'Email you want to add?'.green
        email = gets.chomp.downcase
      contact = {:name => name, :email => email}
        @@contacts << contact
      print "back to main menu! \n".red
    end
 
    def find(index)
      # TODO: Will find and return contact by index
    end
 
    def all
      # TODO: Return the list of contacts, as is
      # grabs everything I appened to the @@contacts and shows
      @@contacts.each do |contact|
        puts contact[:name].blue
        puts contact[:email].blue
        puts 
      end

    end
  end
 
end