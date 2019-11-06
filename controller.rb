require('sinatra')
require('sinatra/contrib/all') if development?
require_relative('./models/film.rb')
also_reload('./models/*')

get '/films' do
  @films = Film.all
  erb(:'films/index') #sinatra is built to look inside directory views for this file. thats why no filepath
end
#
# get '/films/:film_id' do
#   @films = Film.all
#   for film in @films
#     @filminfo = display_film_info(param[:film_id].to_i)
#     erb(:'films/film')
#   end
# end
