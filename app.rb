# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) - ça évite juste les "require" partout
require 'bundler'
Bundler.require

# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
# comme ça, tu peux faire User.new dans ce fichier d'application. Top.
require_relative 'lib/user'
require_relative 'lib/event'

# binding.pry

# Maintenant c'est open bar pour tester ton application. Tous les fichiers importants sont chargés
# Tu peux faire User.new, Event.new, binding.pry, User.all, etc.

# #On crée 3 User
# User.new("julie@julie.com", 35)
# User.new("jean@jean.com", 23)
# User.new("claude@claude.com", 75)

# #On cherche un des user à partir de son e-mail
# user_1 = User.find_by_email("claude@claude.com")

# #On peut ensuite utiliser ce user comme on veut. Par exemple pour afficher son age:
# puts "Voici l'age du User trouvé : #{user_1.age}"

# event1 = Event.new("27-04-2023 18:20", 30, "titre1", ["email@truc.fr, courriel@bidule.fr"])
# event2 = Event.new("27-04-2023 20:35", 10, "titre2", ["email2@supertruc.fr, courriel2@machin.fr"])

# event1.to_s
# event2.to_s

# puts event1.postpone_24h
# puts event1.end_date
# puts event1.is_soon?

# julie = User.new("julie@email.com", 35)
# jean = User.new("jean@maimail.com", 22)

# my_event = Event.new("2019-01-13 09:00", 10, "standup quotidien", [julie, jean])

# my_event.age_analysis #j'exécute la nouvelle méthode que j'ai écrite

meeting.is_past? #on obtient bien true
meeting.to_s #on obtient l'affichage de l'objet avec les identifiants bruts des User

meeting.postpone_24h
meeting.start_date #on confirme qu'elle a été déplacée au 2019-01-18, 9h



