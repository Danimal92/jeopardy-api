class WelcomeController < ApplicationController

    def index
        # render inline: "<% products.each do |p| %><p><%= p.name %></p><% end %>"
        render plain: "OK"
        # render inline: '<em>Hello, World!</em>'
        p "index is running"
    end


end
