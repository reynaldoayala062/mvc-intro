class ApplicationController < Sinatra::Base

    set(:views, 'app/views')

    get('/') do
        "Hello World"
    end

    # get('/book/:id') do 
    #     @book = Book.find(params[:id])
    #     erb(:book)
    # end

    get('/get-airline/:id') do 
        @airline = Airline.find(params[:id])
        erb(:single_airline)
    end


    get('/list-airlines') do
        @airlines = Airline.all
        erb(:list_airlines)
    end

    post('/remove/:id') do
        airline = Airline.find(params[:id])
        airline.destroy()
    end




    

end


### HTTP Method  + URL  -> Address/Function Name
### Headers -> Postage
### Body -> Contents