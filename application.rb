class Application
 
  def run
    loop do 
    show_main_menu
    @input = gets.chomp
      if @input == "new"
        Contact.new 
      elsif @input == "list"
        Contact.all
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