class Application
 
  def run
    loop do  
    show_main_menu
    @input = gets.chomp
      if @input == "new"
        Contact.new 
      elsif @input == "list"
        Contact.all
      elsif @input == "show"
        Contact.show
      elsif @input == "find"
        Contact.find
      else @input == "quit"
        abort("Thank You come again! \n".red) 
      end
    end    
  end
 
  private
 
  # Prints the main menu only
  def show_main_menu
    puts "Welcome to the app. What's next?".yellow
    puts " new      - Create a new contact"
    puts " list     - List all contacts"
    puts " show     - display details via index"
    puts " find     - find someone by name"
    puts " quit     - Exit Application"
    print "> "
  end
end