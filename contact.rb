class Contact
  attr_accessor :first_name, :family_name, :email, :note

  @@contacts = []
  @@id = 1000

  def initialize(first_name, family_name, email, note)
    @first_name = first_name
    @family_name = family_name
    @email = email
    @note = note
    @id = @@id
    @@id += 1
  end

  def full_name
    "#{first_name} #{family_name}"
  end
  def self.create(first_name, family_name, email, note = "N/A")
    # make new contact
    new_contact = Contact.new(first_name, family_name, email, note)
    #assign a unique identifier!
    #add the new contact to the contacts array
    @@contacts << new_contact
    #incremient the id\
    # return the new contact we created =}
  new_contact
  end
  def self.all
    @@contacts
  end

  def self.find (search_id)
    @@contacts.each {|x| return x if x.id == search_id}
  end

  def update(attribute, value)
    case attribute
      when "first_name" then @first_name = value
      when "family_name" then @family_name = value
      when "last_name" then @family_name = value
      when "email" then @email = value
      when "note" then @note = value
  end


  # This method should work similarly to the find method above
  # but it should allow you to search for a contact using attributes other than id
  # by specifying both the name of the attribute and the value
  # eg. searching for 'first_name', 'Betty' should return the first contact named Betty
  def self.find_by

  end

  # This method should delete all of the contacts
  def self.delete_all

  end

  def full_name

  end

  # This method should delete the contact
  # HINT: Check the Array class docs for built-in methods that might be useful here
  def delete

  end

  # Feel free to add other methods here, if you need them.

end
