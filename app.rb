require "date"

class App < Sinatra::Base

	get '/' do
		erb :index
	end

    get '/hello' do
		erb :hello
    end

    get '/goodbye' do
		erb :goodbye
    end

    get '/date' do
      erb :date, :locals => { :now => self.format_date(DateTime.now)}
    end

    def format_date date
      date.strftime("%A, %B %e, %Y")
    end

end
