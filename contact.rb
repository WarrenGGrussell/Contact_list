class Contact
 
  ## In-memory list of contacts
  @@contacts = []
 
  attr_accessor :name
  attr_accessor :email
 
  def initialize(name, email)
    @name = name
    @email = email
    # TODO: assign local variables to instance variables
  end
 
  def to_s
    # TODO: return string representation of Contact
    @@contacts = [].to_s
  end
 
  ## Class Methods
  class << self
    def create
      # TODO: Will initialize a contact as well as add it to the list of contacts
      puts 'Name you want to add?'.green
        name = gets.chomp.capitalize
      puts 'Email you want to add?'.green
        email = gets.chomp.downcase
      contact = Contact.new(name, email)
        @@contacts << contact
      print "back to main menu! \n".green
      Application.new.run
    end
 
    def find(index)
      # TODO: Will find and return contact by index
    end
 
    def all
      # TODO: Return the list of contacts, as is
      self.create.all
    end
  end
 
end