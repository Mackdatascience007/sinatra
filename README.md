Projet Ruby

Apprentissage de l'utilisation de la Gem SINATRA

Comme le nom l'indique nous allons chanter les louanges de la Gem SINATRA, qui va nous aider à concilier création web et code RUBY.
Ce sera le lien qui unira notre apprentissage de base en RUBY et notre futur apprentissage de RAILS.

Le projet du jour reprend notre fameuse application The GOSSIP Projet, ici nos potins seront dévoilés au grand jour sur la toile alors lachez vous ...

Lancez le fichier en tapant dans le terminal cette commande : shotgun -p 4567

Fonctionnalités présentes :
1. lancer un serveur rack
2. afficher une page d'accueil montrant la liste des potins
3. afficher une page de saisie des potins
4. enregistrer un potin

Configuration requise

Version de Ruby :
$ ruby -v
ruby 2.5.1

Version de Bundler :
$ bundle -v
Bundler version 2.0.2

Gemmes utilisées (source : Gemfile) :
pry et rubocop sont commentées car inutiles pour exécuter le programme.
# gem 'pry'
gem 'rspec'
# gem 'rubocop'
gem 'sinatra'
gem 'shotgun'



A+

the_gossip_project_sinatra
├── Gemfile
├── Gemfile.lock
├── config.ru
├── db
│   └── gossip.csv
└── lib
    ├── controller.rb
    ├── gossip.rb
    └── views
        ├── index.erb
        └── new_gossip.erb
	└── show.erb
