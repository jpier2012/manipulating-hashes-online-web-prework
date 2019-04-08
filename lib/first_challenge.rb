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
  contacts.each {|contact, info|
    info.each {|attribute, data|
        data.delete_if {|element|
        element == "strawberry"
      }
    }
  }

  #remember to return your newly altered contacts hash!
  puts contacts["Freddy Mercury"]
  #contacts
end


puts first_challenge
