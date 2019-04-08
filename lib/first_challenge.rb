require 'pry'

def first_challenge
  contacts = {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we",
      favorite_icecream_flavors: ["chocolate", "vanilla", "mint chip"],
      knows: nil
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_icecream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }

  #your code here
#  contacts["Freddy Mercury"][:favorite_icecream_flavors].delete("strawberry")
  contacts.each {|name, info|
    info.each {|attribute, value|
      value.delete_if {|key, data|
        data == "strawberry"
        #remember to return your newly altered contacts hash!
      }
    }
  }
  binding.pry
  contacts
  puts contacts
end

first_challenge
