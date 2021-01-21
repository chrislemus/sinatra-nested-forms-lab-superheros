require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    
    get('/') {
        erb :super_hero
    }

    post('/teams') {
        @t = params['team']
        h = params['team']['members']
        @h1 = h[0]
        @h2 = h[1]
        @h3 = h[2]
        # puts @h1
        erb :team
    }

end
