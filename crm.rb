#ok, time to get started on this thing. looks pretty intimidating.

class CRM

  def initialize(name)
    @name = name
  end

  def main_menu

  end

  def print_main_menu
    puts 'Welcome to the main_menu! The following options are available to you'
    puts 'please type any of the following numbers/commands'
    puts '[1] add_new_contact'
    puts '[2] edit/change a contact'
    puts '[3] delete_contact'
    puts '[4] display_all_contacts'
    puts '[5] search_by_attribute'
    puts '[6] fill your screen with 0s'
    puts '[7] exit everything'
    puts '[home] go home to this main menu at any time'
  end

  def call_option
    when 1 then add_new_contact
    when 2 then modify_existing_contact
    when 3 then delete_contact
    when 4 then display_all_contacts
    when 5 then search_by_attribute
    when 6 then 10**10**6
    when 7 then Exit
    when 8 then puts "Congratz you typed 8"
    end

  def add_new_contact
    puts 'Enter First name'
    first_name = gets.chomp
    puts 'enter family/second name'
    family_name = gets.chomp
    puts 'Enter Email'
    email = gets.chomp
    puts 'enter a note'
    note = gets.chomp
    Contact.create(first_name, family_name, email, note)
  end

  def modify_existing_contact
    puts "Please give the ID# of the contact you wish to modify"
    puts "if you are unsure of the ID# then please use the display_all_contacts"
    puts "command on the home screen, it is option [4], or search with [5] type home to get to home screen"
     id = gets.chomp
    contact_to_modify = Contact.find(id)
    puts "What would you like to modify?"
    puts "options include [email],[first_name],[family_name],[note]"
    gets.chomp #stuff

  end

  def delete_contact
    puts "what is the id of the contact you would like to delete?"
    puts "if you are unsure please use the the display_all_contacts"
    puts "command on the home screen, it is option [4], or search with [5] type home to get to home screen"
    id = gets.chomp
    #this is getting tedious. guess ill push this now.

  end

  # This method should accept as an argument an array of contacts
  # and display each contact in that array
  def display_contacts #not sure why i have display_contacts and display_all_contacts
    puts "which contacts do you want displayed?"

    # HINT: Make use of this method in the display_all_contacts and search_by_attribute methods to keep your code DRY
  end

  def display_all_contacts

    # HINT: Make use of the display_contacts method to keep your code DRY
  end

  def search_by_attribute

    # HINT: Make use of the display_contacts method to keep your code DRY
  end

  # Add other methods here, if you need them.

end
