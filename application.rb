class Application
 
  def run
    loop do 
    show_main_menu
    @input = gets.chomp
      if @input == "new"
        Contact.create 
      elsif @input == "list"
        list
      else @input == "quit"
        print "Thank You come again! \n".red
        abort 
      end
    end    
  end
 
  private
 
  # Prints the main menu only
  def show_main_menu
    puts "Welcome to the app. What's next?"
    puts " new      - Create a new contact"
    puts " list     - List all contacts"
    puts " quit     - Exit Application"
    print "> "
  end
end