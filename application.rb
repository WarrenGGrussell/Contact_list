class Application
 
  def run
    begin
    show_main_menu
    @input = gets.chomp
      if @input == "new"
        new_contact
      elsif @input == "list"
        list
      else
      end until @input == "quit"
        print "Thank You come again! \n"
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