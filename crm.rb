require_relative "contact"

class CRM



  def main_menu
    while true
      print_main_menu
      user_selected = gets.to_i
      call_option(user_selected)
    end
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
  def call_option(user_selected)
    case user_selected
    when 1 then add_new_contact
    when 2 then modify_existing_contact
    when 3 then delete_contact
    when 4 then display_all_contacts
    when 5 then search_by_attribute
    when 6 then puts 10**10**6
    when 7 then exit
    when 8 then puts "Congratz you typed 8"
    end
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
     id = gets.to_i
    contact_to_modify = Contact.find(id)
    puts "What would you like to modify?"
    puts "options include [email],[first_name],[family_name], [last_name], [note]"
    search_attribute = gets.chomp
    puts "what would you like to change this to?"
    changed_thing = gets.chomp
    contact_to_modify.update(search_attribute, changed_thing)
  end

  def delete_contact
    puts "who would you like to delete? [id#]"
    puts "if you are unsure please use the the display_all_contacts"
    puts "command on the home screen, it is option [4], or search with [5] type home to get to home screen"
    contact_id = gets.to_i
    delete_victum = Contact.find(contact_id)
    delete_victum.delete
    puts "contact has been erased."
  end

  # This method should accept as an argument an array of contacts
  # and display each contact in that array
  def display_all_contacts
    puts "here are all your contacts"
    Contact.all

    # HINT: Make use of the display_contacts method to keep your code DRY
  end

  def search_by_attribute
    puts "Tell me what you would like to search with."
    puts "first_name"
    puts "family_name"
    puts "email"
    puts "note"
    category = gets.chomp
    puts "ok im ready, give me something to search for"
    user_search = gets.chomp
    Contact.find_by(category, user_search)
  end

  # Add other methods here, if you need them.
end

crmapp = CRM.new
crmapp.main_menu
