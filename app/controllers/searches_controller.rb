class SearchesController < ApplicationController
   @resp = Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
     req.params['client_id'] = KMYAOVQMHM1IOSSBT3QMFNFDXC5CBEWOLAAGJGQK2O30LXLQ
     req.params['client_secret'] = KM1DWVJ5VLGZIYH5VA4LB51IWPUZJCJNV2JKATFBPE2INDKM
     req.params['v'] = '20160201'
     req.params['near'] = params[:zipcode]
     req.params['query'] = 'coffee shop'
   end
   
   body_hash = JSON.parse(@resp.body)
    @venues = body_hash["response"]["venues"]
   render 'search'
 end
 
  def search
  end

  def foursquare
  end
end
