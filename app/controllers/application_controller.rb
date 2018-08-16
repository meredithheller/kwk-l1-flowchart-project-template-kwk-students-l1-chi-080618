class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  get '/' do
    erb :index
  end 
  
  get '/quiz' do
    erb :quiz
  end 
  
  get '/resources' do
    erb :resources
  end
  
  # require './config/environment'
# require './app/models/quiz.rb'
# require_relative 'models/result.rb'


  
  get '/about' do
    erb :about
  end
  
  get '/answer.erb' do
    erb :answer
  end
  
  post '/answer' do
    username=params[:name]
    @user_name = username.capitalize
    puts @user_name
    v1=params[:allergy]
    v2=params[:cuisine]
    v3=params[:price]
    # p v3
    @user_ans = total(v1, v2, v3)
    # p @user_ans
    if @user_ans == 111 
      #NUT ALLERGY
      restaurantName="Brightwok Kitchen"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} has a gluten-free, dairy-free, and peanut-free menu, and all of their homemade sauces are vegan. It is a counter style, veggie-focused, Asian inspired restaurant that believes in daily food prep."
      img="https://media.timeout.com/images/104064944/630/472/image.jpg"
      url="https://brightwok.com/"


    elsif @user_ans == 211
      restaurantName="Furious Spoon"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} is the restaurant that can best accommodate your allergies or intolerance. It is a fast casual Tokyo-style ramen shop. It provides a wide array of nut free menu items."
      img="https://assets.dnainfo.com/generated/chicago_photo/2016/02/furious-spoon-pilsen--1455286123.jpg/extralarge.jpg"
      url="http://furiousramen.com/"
      
    elsif @user_ans == 311
      restaurantName="Duck Duck Goat"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} offers creative Chinese fare from celebrity chef Stephanie Izard served in buzzy, ornately decorated surrounds. It offers provides for shellfish-free and peanut-free menu items."
      img="http://breakfastgator.com/wp-content/uploads/2016/07/DDG-Interior-7-W.jpg"
      url="http://duckduckgoatchicago.com/"
    
      
    elsif @user_ans == 121
      restaurantName="Portillo's"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} is an American restaurant chain that specializes in serving Chicago-style food such as hot dogs, Maxwell Street Polish, and Italian Beef. They have options to substitute nut and shellfish items."
      img="https://tribwxin.files.wordpress.com/2018/04/photo-credit-portillos-via-facebook.jpg?quality=85&strip=all&w=400&h=225&crop=1"
      url="https://www.portillos.com/index.html"
    
    elsif @user_ans == 221
      restaurantName="LYFE Kitchen"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} is an American fast-food restaurant chain operating in California, Texas, Colorado, Illinois, Nevada, and Tennessee. The company's name is an acronym that stands for 'Love Your Food Everyday'. They have menu items to accommodate nut-free, vegan, and gluten-free diets."
      img="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRs4WUzUM1KWfdemOpSr0NuoZJueC3JXRizjC8VC_qDXr1f61dYw"
      url="http://www.lyfekitchen.com/"
    
    elsif @user_ans == 321
     restaurantName="Catch 35"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} is a high-end restaurant that focuses on seafood, steaks, and salads. They accommodate nut and shellfish allergies and intolerances."
      img="https://www.chicagotraveler.com/sites/www.chicagotraveler.com/files/billboard/catch-35-restaurant_C.jpg"
      url="http://www.catch35.com/"

    elsif @user_ans == 131
      restaurantName="Al's Italian Beef"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} started selling the first Italian Beef Sandwich in 1938. Their Menu offers many classic Chicago Style food items, and is an entirely nut-free environment."
      img="https://i.ytimg.com/vi/Rj1M6B9f97Q/maxresdefault.jpg"
      url="https://www.alsbeef.com/"
      
      
    elsif @user_ans == 231
      restaurantName="Sapori Trattoria"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} is a small neighborhood restaurant with housemade pasta & other classic Italian dishes."
      img="https://img.grouponcdn.com/deal/e56c6e09d4634106a86a08b23ffac6fa/fa/v1/c700x420.jpg"
      url="http://www.saporitrattoria.net/"
      
    elsif @user_ans == 331
      restaurantName="Affresco Pizzeria and Lounge"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} serves chicken, pizza & Italian food cooked in a wood-fired brick oven & served in a grottolike space."
      img="https://img.grouponcdn.com/deal/c2e07fd69dcc46bab51afe62292d584b/4b/v1/c700x420.jpg"
      url="https://affrescopizzeria.com/"
      
    elsif @user_ans == 141
     restaurantName="Adobo Grill"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= " At #{restaurantName}, a lively Mexican spot with a patio, margaritas & tableside guacamole are the main draws. It has brought authentic Mexican food to Chicago since 2001."
      img="http://gozamos.com/wp-content/uploads/2010/07/adobo-grill.jpg"
      url="https://www.adobogrill.davinci-group.com/"
      
      
    elsif @user_ans == 241
     restaurantName="El Tapatio"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} is a casual Mexican restaurant with an extensive menu of tacos, and enchiladas. It also includes several menu items that are nut-free and vegan."
      img="https://media-cdn.tripadvisor.com/media/photo-s/02/d3/2b/4b/cafe-el-tapatio.jpg"
      url="http://www.cafeeltapatio.com/"
      
    elsif @user_ans == 341
      restaurantName="Topolobampo"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} serves Rick Bayless' innovative, refined Mexican cuisine in an elegant, art-filled space that has many nut-free and vegan options."
      img="http://www.rickbayless.com/wp-content/uploads/2017/07/TopoloSliderb1000x554.jpg"
      url="http://www.rickbayless.com/restaurants/topolobampo/"
      
      
    elsif @user_ans == 151
      restaurantName="Roti Modern Mediterranean"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "At #{restaurantName}, they are proud to serve food that loves you back.Enjoy their take on Modern Mediterranean foods - wraps, rice plates and salads, with nut and dairy free options"
      img="https://roti.com/wp-content/themes/roti/images/placeholder/about/rollover-food2.jpg"
      url="https://roti.com/"
      
      
    elsif @user_ans == 251
      restaurantName="Athena Greek Restaurant"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} serves traditional Greek food in a spacious setting featuring an outdoor patio with sweeping city views and nut-free menu items."
      img="http://www.athenarestaurantchicago.com/images/content/gallery/insidepano.png"
      url="http://www.athenarestaurantchicago.com/"
      
      
    elsif @user_ans == 351
      restaurantName="Fig and Olive"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} is an upscale restaurant & bar serving seasonal Mediterranean fare prepared with flavored olive oils."
      img="https://assets3.thrillist.com/v1/image/1526993/size/tmg-article_default_mobile.jpg"
      url="https://www.figandolive.com/"
      
    elsif @user_ans == 161
      restaurantName="Aloha Poke"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} is Chicago’s poke pioneer. The intention is simple: pack fresh, fast and tasty bowls of quality raw ingredients. We have a mission to rethink fast food and we are here to provide a healthy meal that fuels the day.They have options for vegan, gluten-free, and nut-free meals."
      img="https://cdn.vox-cdn.com/thumbor/LE4j3Jijweg7R1Nl_bRp87IJMzs=/0x0:1024x683/1200x800/filters:focal(357x271:519x433)/cdn.vox-cdn.com/uploads/chorus_image/image/59884101/AlohaPoke_29_1024x683.0.jpg"
      url="https://www.alohapokeco.com/"
      
      
    elsif @user_ans == 261
     restaurantName="Chicago Diner"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} offers an entirely meat-free menu. There are plenty of items for vegans and gluten free diets, including their famous vegan milkshakes."
      img="https://c.o0bg.com/rf/image_960w/Boston/2011-2020/2014/02/13/BostonGlobe.com/Lifestyle/Images/ILveggie-dagwood.jpg"
      url="http://www.veggiediner.com/"
      
    elsif @user_ans == 361
      restaurantName="Everest"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} is an elegant 40th floor eatery in the Chicago Stock Exchange with French prix fixe menus & city views with a seperate vegan menu."
      img="https://resizer.otstatic.com/v2/photos/large/24611439.jpg"
      url="http://www.everestrestaurant.com/"
      
    elsif @user_ans == 171
      restaurantName="Oberweis"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} is headquartered in North Aurora, Illinois, and is the parent company of several dairy-related and fast food restaurant operations in the midwest region of the United States. They have many options for nut and shellfish allergies." 
      img="https://s3-media1.fl.yelpcdn.com/bphoto/Rd9dCCIWMxJ-Lvu_R_mkKg/348s.jpg"
      url="https://www.oberweis.com/"
      
    elsif @user_ans == 271
      restaurantName="FRIO Gelato"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} is made in an allergen-friendly kitchen with a nut and gluten-free focus. No artificial flavorings are added only fresh and natural ingredients."
      img="https://3.bp.blogspot.com/-nUK899YKaVo/WMnqWULQCnI/AAAAAAALgsA/lchTAd05llA1dyyBi6QHadKO3CgHNGNEgCLcB/s1600/Frio%2BGelato%2BSouthport%2BCorridor%2BChicago.jpg"
      url="https://www.friogelato.com/"

    elsif @user_ans == 371
      restaurantName="Westtown Bakery"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName}'s food is meant to be enjoyed by anyone, regardless of lifestyle, allergies, moral beliefs, or health condition. Cakes and pastries at West Town Bakery can meet almost any need, including vegan, nut-free, soy-free, gluten-free, and dairy-free diets."
      img="https://lindsayamalone.files.wordpress.com/2015/02/ice-skate-2.jpg"
      url="https://westtownbakery.com/"
      
      
    #DAIRY ALLERGY
    elsif @user_ans == 112
      restaurantName="Brightwok Kitchen"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} has a gluten-free, dairy-free, and peanut-free menu, and all of their homemade sauces are vegan. It is a counter style, veggie-focused, Asian inspired restaurant that believes in daily food prep."
      img="https://media.timeout.com/images/104064944/630/472/image.jpg"
      url="https://brightwok.com/"
      
    elsif @user_ans == 212
      restaurantName="Brightwok Kitchen"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} has a gluten-free, dairy-free, and peanut-free menu, and all of their homemade sauces are vegan. It is a counter style, veggie-focused, Asian inspired restaurant that believes in daily food prep."
      img="https://media.timeout.com/images/104064944/630/472/image.jpg"
      url="https://brightwok.com/"
      
    elsif @user_ans == 312 
      restaurantName="Sunda"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName}  is a hip spot for creative Asian fusion fare, sushi & specialty cocktails in a chic modern space with plentiful gluten free and vegan options."
      img="https://sundachicago.com/wp-content/uploads/2014/02/Sunda-Sushi-Special-3-of-4.jpg"
      url="https://sundanewasian.com/chicago/"
      
    elsif @user_ans == 122
      restaurantName="Meatheads"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} Meatheads Burgers & Fries is an American fast food retailer of high-end hamburgers and other related menu items based in Illinois with dairy, nut, and shellfish free items."
      img="https://www.meatheadsburgers.com/wp-content/uploads/2016/05/meatheads-hawaiian.jpg"
      url="https://www.meatheadsburgers.com/"
      
    elsif @user_ans == 222
      restaurantName="Au Cheval"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "The open kitchen at #{restaurantName}'s upscale diner works with ingredients ranging from bologna to foie gras. It also accommodates gluten, dairy, nut, and shellfish free diet."
      img="https://media.timeout.com/images/104064944/630/472/image.jpg"
      url="https://brightwok.com/"
      
    elsif @user_ans == 322
      restaurantName="LYFE Kitchen"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} is an American fast-food restaurant chain operating in California, Texas, Colorado, Illinois, Nevada, and Tennessee. The company's name is an acronym that stands for 'Love Your Food Everyday'. They have menu items to accommodate nut-free, vegan, and gluten-free diets."
      img="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRs4WUzUM1KWfdemOpSr0NuoZJueC3JXRizjC8VC_qDXr1f61dYw"
      url="http://www.lyfekitchen.com/"
    
    elsif @user_ans == 132
      restaurantName="Felice's Kitchen"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} is a casual eatery run by Loyola students with thin-crust pizza served by the pie or the slice."
      img="https://s3-media3.fl.yelpcdn.com/bphoto/QuZXz20xxJsr5jStLQ_9dA/ls.jpg"
      url="http://www.feliceskitchen.com/"
      
    elsif @user_ans == 232
      restaurantName="Maggiano's Little Italy"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} is an American casual dining restaurant chain specializing in Italian-American cuisine that provides accommodations for all food allergies and intolerances."
      img="http://oldtownscottsdale.com/wp-content/uploads/2015/05/Maggiano.jpg"
      url="https://www.maggianos.com/"
      
    elsif @user_ans == 332
      restaurantName="RPM Italian"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} serves pasta, steaks & seafood in a sleek, group-friendly eatery. They provide menu items for gluten, nut, and dairy allergies."
      img="https://resizer.otstatic.com/v2/photos/wide-huge/24610276.jpg"
      url="http://rpmrestaurants.com/"
      
    elsif @user_ans == 142
      restaurantName="Chipotle"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} is an American chain of fast casual restaurants in the United States, United Kingdom, Canada, Germany, and France, specializing in tacos and Mission-style burritos. They can accommodate nut-free, vegan, and gluten-free diets."
      img="https://amp.businessinsider.com/images/596e15d9c50c29ac008b4fd1-750-563.jpg"
      url="https://www.chipotle.com/"
      
    elsif @user_ans == 242
      restaurantName="El Tapatio"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} is a casual Mexican restaurant with an extensive menu of tacos, and enchiladas. It also includes several menu items that are nut-free and vegan."
      img="https://media-cdn.tripadvisor.com/media/photo-s/02/d3/2b/4b/cafe-el-tapatio.jpg"
      url="http://www.cafeeltapatio.com/"
      
    elsif @user_ans == 342
      restaurantName="Topolobampo"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} serves Rick Bayless' innovative, refined Mexican cuisine served in an elegant, art-filled space, and has nut-free and vegan options."
      img="http://www.rickbayless.com/wp-content/uploads/2017/07/TopoloSliderb1000x554.jpg"
      url="http://www.rickbayless.com/restaurants/topolobampo/"
      
     elsif @user_ans == 152
      restaurantName="Roti Modern Mediterranean"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "At #{restaurantName} they are proud to serve Food That Loves You Back. Enjoy their take on Modern Mediterranean foods - wraps, rice plates and salads with nut and dairy free options."
      img="https://roti.com/wp-content/themes/roti/images/placeholder/about/rollover-food2.jpg"
      url="https://roti.com/"
      
    elsif @user_ans == 252
      restaurantName="Ema"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} is a Mediterranean restaurant showcasing Chef CJ Jacobson’s lighter California style of cooking. They have options for nut and dairy free items."
      img="https://media1.fdncms.com/chicago/imager/u/original/23192411/fnd_review-ema-teaser-1.jpg"
      url="http://emachicago.com/"
      
    elsif @user_ans == 352
      restaurantName="Fig and Olive"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} is an upscale restaurant & bar serving seasonal Mediterranean fare prepared with flavored olive oils."
      img="https://assets3.thrillist.com/v1/image/1526993/size/tmg-article_default_mobile.jpg"
      url="https://www.figandolive.com/"
      
      
    elsif @user_ans == 162
      restaurantName="Aloha Poke"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} is Chicago’s poke pioneer. The intention is simple: pack fresh, fast and tasty bowls of quality raw ingredients. We have a mission to rethink fast food and we are here to provide a healthy meal that fuels the day. They have options for vegan, gluten-free, and nut-free meals."
      img="https://cdn.vox-cdn.com/thumbor/LE4j3Jijweg7R1Nl_bRp87IJMzs=/0x0:1024x683/1200x800/filters:focal(357x271:519x433)/cdn.vox-cdn.com/uploads/chorus_image/image/59884101/AlohaPoke_29_1024x683.0.jpg"
      url="https://www.alohapokeco.com/"
      
      
    elsif @user_ans == 262
     restaurantName="Chicago Diner"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} offers an entirely meat-free menu. There are plenty of items for vegans and gluten free diets, including their famous vegan milkshakes."
      img="https://c.o0bg.com/rf/image_960w/Boston/2011-2020/2014/02/13/BostonGlobe.com/Lifestyle/Images/ILveggie-dagwood.jpg"
      url="http://www.veggiediner.com/"
     
      
    elsif @user_ans == 362
      restaurantName="Everest"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} is an elegant 40th floor eatery in the Chicago Stock Exchange with French prix fixe menus & city views with a seperate vegan menu."
      img="https://resizer.otstatic.com/v2/photos/large/24611439.jpg"
      url="http://www.everestrestaurant.com/"
      
      
    elsif @user_ans == 172
      restaurantName="Froyo Chicago"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} is a delicious soft serve located in the heart of Chicago that accommodates dairy-free, vegan and gluten-free diets."
      img="https://images.coplusk.net/blog/feature/values/8149/image/large_AGarbotPhotography-LakeviewChamber-FroyoRibbon-08-PRINT__1_.jpg"
      url="http://froyochicago.com/"
      
    elsif @user_ans == 272
      restaurantName="Pinkberry"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} is a counter-serve frozen yogurt chain offering many toppings, plus smoothies & shakes in a sleek space."
      img="http://justachitowngirl.files.wordpress.com/2011/06/pinkberry.jpg"
      url="http://www.pinkberry.com/"
      
    elsif @user_ans == 372
      restaurantName="Westtown Bakery"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName}'s food is meant to be enjoyed by anyone, regardless of lifestyle, allergies, moral beliefs, or health condition. Cakes and pastries at West Town Bakery can meet almost any need, including vegan, nut-free, soy-free, gluten-free, and dairy-free diets."
      img="https://lindsayamalone.files.wordpress.com/2015/02/ice-skate-2.jpg"
      url="https://westtownbakery.com/"


#SHELLFISH ALLERGY

    elsif @user_ans == 113
      restaurantName="PF Chang's"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} is an Asian-themed US casual dining restaurant chain founded in 1993 by Paul Fleming and Philip Chiang, owned and operated by Centerbridge Partners."
      img="https://www.downtowntempe.com/_files/images/pf.png"
      url="https://www.pfchangs.com/"
      
    elsif @user_ans == 213
      restaurantName="Serai"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} offers Thai, Malaysian & other Southeast Asian cuisine in a simple storefront setting."
      img="https://s3-media1.fl.yelpcdn.com/bphoto/lDjEKwKHYi9SpYnzJdWnhw/o.jpg"
      url="http://www.seraichicago.com/"
      
    elsif @user_ans == 313
      restaurantName="Duck Duck Goat"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} offers creative Chinese fare from celebrity chef Stephanie Izard served in buzzy, ornately decorated surrounds. It offers provides for shellfish-free and peanut-free menu items."
      img="http://breakfastgator.com/wp-content/uploads/2016/07/DDG-Interior-7-W.jpg"
      url="http://duckduckgoatchicago.com/"
      
    elsif @user_ans == 123
      restaurantName="Portillo's"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} is an American restaurant chain that specializes in serving Chicago-style food such as hot dogs, Maxwell Street Polish, and Italian Beef. They have opportunities to substitute nut and shellfish items."
      img="https://tribwxin.files.wordpress.com/2018/04/photo-credit-portillos-via-facebook.jpg?quality=85&strip=all&w=400&h=225&crop=1"
      url="https://www.portillos.com/index.html"
      
    elsif @user_ans == 223
      restaurantName="Square Roots Kitchen"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} is a high-tech spot with health-conscious American fare to go including vegan & restricted-diet options that include nut, shellfish, vegan, and dairy-free diets."
      img="https://static1.squarespace.com/static/5606ec51e4b017614f804ffe/t/56ae9580d210b838e554826b/1454282122264/SRK+Steak+Cobb+Wrap.jpg?format=1500w"
      url="https://squarerootskitchen.com/"
      
    elsif @user_ans == 323
     restaurantName="Catch 35"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} is a high-end restaurant that focuses on seafood, steaks, and salads. They do accommodate nut and shellfish allergies and intolerances."
      img="https://www.chicagotraveler.com/sites/www.chicagotraveler.com/files/billboard/catch-35-restaurant_C.jpg"
      url="http://www.catch35.com/"
      
    elsif @user_ans == 133
      restaurantName="Blaze Pizza"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} serves fast-fired custom built artisanal pizzas, and can accommodate nut and gluten allergies."
      img="https://bloximages.newyork1.vip.townnews.com/feastmagazine.com/content/tncms/assets/v3/editorial/5/9f/59f307aa-3c35-11e8-a0d1-1b86ab5fc600/5acbce3f77157.image.jpg"
      url="https://blazepizza.com/"
      
      
    elsif @user_ans == 233
      restaurantName="Maggiano's Little Italy"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} is an American casual dining restaurant chain specializing in Italian-American cuisine that provides accommodations for all food allergies and intolerance."
      img="https://lindsayamalone.files.wordpress.com/2015/02/ice-skate-2.jpg"
      url="https://westtownbakery.com/"
      
    elsif @user_ans == 333
      restaurantName="RPM Italian"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} serves pasta, steaks & seafood that is served in a sleek, group-friendly eatery. They provide menu items for gluten, nut, and dairy allergies."
      img="https://resizer.otstatic.com/v2/photos/wide-huge/24610276.jpg"
      url="http://rpmrestaurants.com/"
      
    elsif @user_ans == 143
      restaurantName="Chipotle"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} is an American chain of fast casual restaurants in the United States, United Kingdom, Canada, Germany, and France, specializing in tacos and Mission-style burritos. They can accommodate nut-free, vegan, and gluten-free diets."
      img="https://moadrupalweb.blob.core.windows.net/moadrupalweb/original/5586_Chipotle_HeroImage.jpg"
      url="https://www.chipotle.com/"
      
    elsif @user_ans == 243
      restaurantName="Sabroso Tex-Mex"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} offers fresh, high-quality tex-mex food at affordable pricing."
      img="https://resizer.otstatic.com/v2/photos/large/25189729.jpg"
      url="http://www.sabrosatexmex.com/"
      
      elsif @user_ans == 343
      restaurantName="Barrio"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} is a rustic-industrial spot for creative Mexican fare with Japanese influences and creative cocktails with nut-free and vegan options."
      img="http://www.jetsetreport.com/admin2/photos/rotatenightlife875/Barrio_Chicago_001.jpg"
      url="http://www.barriochicago.com/"
      
    elsif @user_ans == 153
      restaurantName="Roti Modern Mediterranean"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "At #{restaurantName}, they are proud to serve Food That Loves You Back. Enjoy their take on Modern Mediterranean foods - wraps, rice plates and salads with nut and dairy free options."
      img="https://roti.com/wp-content/themes/roti/images/placeholder/about/rollover-food2.jpg"
      url="https://roti.com/"
      
      
    elsif @user_ans == 253
      restaurantName="Athena Greek Restaurant"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} is a traditional Greek food in a spacious setting featuring an outdoor patio with sweeping city views with nut-free menu items."
      img="http://www.athenarestaurantchicago.com/images/content/gallery/insidepano.png"
      url="http://www.athenarestaurantchicago.com/"
      
      
    elsif @user_ans == 353
      restaurantName="Fig and Olive"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} is an upscale restaurant & bar serving seasonal Mediterranean fare prepared with flavored olive oils."
      img="https://assets3.thrillist.com/v1/image/1526993/size/tmg-article_default_mobile.jpg"
      url="https://www.figandolive.com/"
      
    elsif @user_ans == 163
      restaurantName="Aloha Poke"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} is Chicago’s poke pioneer. The intention is simple: pack fresh, fast and tasty bowls of quality raw ingredients. We have a mission to rethink fast food and we are here to provide a healthy meal that fuels the day. They have options for vegan, gluten-free, and nut-free meals."
      img="https://cdn.vox-cdn.com/thumbor/LE4j3Jijweg7R1Nl_bRp87IJMzs=/0x0:1024x683/1200x800/filters:focal(357x271:519x433)/cdn.vox-cdn.com/uploads/chorus_image/image/59884101/AlohaPoke_29_1024x683.0.jpg"
      url="https://www.alohapokeco.com/"
      
    elsif @user_ans == 263
      restaurantName="Be Leaf"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} is a stylish counter-serve spot featuring custom salads & grain bowls with locally sourced ingredients."
      img="https://www.beleafsalad.com/wp-content/uploads/2015/04/Img_Menu_MexicanSalad_550.jpg"
      url="https://www.beleafsalad.com/"
      
      elsif @user_ans == 363
      restaurantName="Everest"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} is an elegant 40th floor eatery in the Chicago Stock Exchange with French prix fixe menus & city views with a seperate vegan menu."
      img="https://resizer.otstatic.com/v2/photos/large/24611439.jpg"
      url="http://www.everestrestaurant.com/"
      
      elsif @user_ans == 173
      restaurantName="Firecakes"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} offers a roster of artisanal donuts & coffee drinks is available at their quaint, counter-serve spot."
      img="https://media-cdn.tripadvisor.com/media/photo-s/0e/b2/eb/c4/firecakes-donuts.jpg"
      url="http://firecakesdonuts.com/"
      
       elsif @user_ans == 273
      restaurantName="FRIO Gelato"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} is made in an allergen-friendly kitchen with a nut and gluten-free focus. No artificial flavorings are added only fresh and natural ingredients."
      img="https://3.bp.blogspot.com/-nUK899YKaVo/WMnqWULQCnI/AAAAAAALgsA/lchTAd05llA1dyyBi6QHadKO3CgHNGNEgCLcB/s1600/Frio%2BGelato%2BSouthport%2BCorridor%2BChicago.jpg"
      url="https://www.friogelato.com/"
      
      elsif @user_ans == 373
      restaurantName="Sugar Factory"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} is a huge venue with classic American eats, candy-themed shakes, & cocktails plus an on-site sweets shop."
      img="https://cdn.vox-cdn.com/thumbor/4h1BzezmiL4O2zZMM1kiLiAKmbI=/0x0:1207x901/1200x800/filters:focal(508x355:700x547)/cdn.vox-cdn.com/uploads/chorus_image/image/59544055/The_King_Kong_Sundae_Sugar_Factory_Atlanta_1.0.jpg"
      url="https://sugarfactory.com/location/chicago-river-north/"
      
    #WHEAT ALLERGY
    

      
    elsif @user_ans == 114
      restaurantName="Brightwok Kitchen"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} has a gluten-free, dairy-free, and peanut-free menu, and all of their homemade sauces are vegan. It is a counter style, veggie-focused, Asian inspired restaurant that believes in daily food prep."
      img="https://media.timeout.com/images/104064944/630/472/image.jpg"
      url="https://brightwok.com/"
      
      
    elsif @user_ans == 214
      restaurantName="Asian Outpost"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} is a rustic Chinese eatery that features inventive takes on homestyle recipes, sushi, ramen & cocktails and provides vegan and gluten free recipes."
      img="https://img.grouponcdn.com/deal/hzuQjGYHpnKt4XwC4eKY/En-700x420/v1/c700x420.jpg"
      url="http://www.asian-outpost.com/"
      
      
    elsif @user_ans == 314 
      estaurantName="Sunda"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} is a hip spot for creative Asian fusion fare, sushi & specialty cocktails in a chic modern space with plentiful gluten free and vegan options."
      img="https://sundachicago.com/wp-content/uploads/2014/02/Sunda-Sushi-Special-3-of-4.jpg"
      url="https://sundanewasian.com/chicago/"
      
      
    elsif @user_ans == 124 
      restaurantName="Wheat's End Cafe"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} is an airy daytime cafe serving coffee drinks & tea, plus gluten-free brunch, breads & pastries."
      img="https://www.godairyfree.org/wp-content/uploads/2017/11/resto-wheats-end-cafe-2.jpg"
      url="http://www.wheatsendcafe.com/"
    
    elsif @user_ans == 224 
      restaurantName="Au Cheval"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "The open kitchen at #{restaurantName}'s' upscale diner works with ingredients ranging from bologna to foie gras. It also accommodates gluten, dairy, nut, and shellfish free diet."
      img="https://amp.businessinsider.com/images/577c02c988e4a78c148b5de8-750-563.jpg"
      url="http://auchevalchicago.com/"
      
    elsif @user_ans == 324 
      restaurantName="Hub 51"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} offers diverse eats from sushi to tacos to burgers in a trendy, hopping space with a downstairs club that includes gluten and nut free dishes."
      img="https://partyslate.imgix.net/photos/152661/photo-32f75318-e41d-450e-b4bc-9e81d93cc49f.jpg?ixlib=rails-2.1.2"
      url="http://hub51chicago.com/"
      
     elsif @user_ans == 134
      restaurantName="Blaze Pizza"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} serves fast-fired custom built artisanal pizzas, and can accommodate nut and gluten allergies."
      img="https://bloximages.newyork1.vip.townnews.com/feastmagazine.com/content/tncms/assets/v3/editorial/5/9f/59f307aa-3c35-11e8-a0d1-1b86ab5fc600/5acbce3f77157.image.jpg"
      url="https://blazepizza.com/"
      
      
    elsif @user_ans == 234
      restaurantName="Maggiano's Little Italy"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} is an American casual dining restaurant chain specializing in Italian-American cuisine that provides accommodations for all food allergies and intolerances."
      img="https://lindsayamalone.files.wordpress.com/2015/02/ice-skate-2.jpg"
      url="https://westtownbakery.com/"
      
    elsif @user_ans == 334
      restaurantName="RPM Italian"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} serves pasta, steaks & seafood in a sleek, group-friendly eatery. They provide menu items for gluten, nut, and dairy allergies."
      img="https://resizer.otstatic.com/v2/photos/wide-huge/24610276.jpg"
      url="http://rpmrestaurants.com/"
      
    elsif @user_ans == 144
      restaurantName="Chipotle"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} is an American chain of fast casual restaurants in the United States, United Kingdom, Canada, Germany, and France, specializing in tacos and Mission-style burritos. They can accommodate nut-free, vegan, and gluten-free diets."
      img="https://moadrupalweb.blob.core.windows.net/moadrupalweb/original/5586_Chipotle_HeroImage.jpg"
      url="https://www.chipotle.com/"
      
    elsif @user_ans == 244
      restaurantName="Sabrosa Tex-Mex"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} offers fresh, high-quality tex-mex food at affordable pricing."
      img="https://resizer.otstatic.com/v2/photos/large/25189729.jpg"
      url="http://www.sabrosatexmex.com/"
      
    elsif @user_ans == 344
      restaurantName="Frontera Grill"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} is Chef Rick Bayless' always-busy flagship restaurant where creative Mexican fare is served in a festive space."
      img="https://cdn.vox-cdn.com/thumbor/O8WkbeU3l8iURC2IG2HtCm98N5E=/55x0:944x667/1200x675/filters:focal(55x0:944x667)/cdn.vox-cdn.com/uploads/chorus_image/image/38791528/2014_fronteraext.0.jpg"
      url="http://www.rickbayless.com/restaurants/frontera-grill/"
      
    elsif @user_ans == 154
      restaurantName="I Dream of Falafel"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "At #{restaurantName}, one of the best Mediterranean & middle eastern restaurants in downtown Chicago with gluten-free and vegan options, enjoy the fresh & flavorful taste of Mediterranean cuisines."
      img="http://www.idreamoffalafel.com/wp-content/uploads/i-dream-of-falafel-our-story-sharing-is-caring.jpg"
      url="http://www.idreamoffalafel.com/"
      
    elsif @user_ans == 254
      restaurantName="Andies Restaurant"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} offers Mediterranean & Middle Eastern fare, much of it vegetarian, served in a family-friendly venue."
      img="https://checkplease.wttw.com/sites/default/files/417511_iPad-Large_20121019132403.jpg.resize.768x432.jpg"
      url="https://www.andieschicago.com/"
      
     elsif @user_ans == 354
      restaurantName="Eden"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} is a restaurant where creative New American fare with Mediterranean influences pairs with craft cocktails in a chic space."
      img="https://cdn.vox-cdn.com/thumbor/dJE5YqeCJHqH8gl_ug8bPJDDxrw=/0x0:3500x2333/1200x800/filters:focal(1470x887:2030x1447)/cdn.vox-cdn.com/uploads/chorus_image/image/52330769/blb13495_31585242986_o.0.jpeg"
      url="https://edeninchicago.com/"
      
    elsif @user_ans == 164
      restaurantName="Aloha Poke"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} is Chicago’s poke pioneer. The intention is simple: pack fresh, fast and tasty bowls of quality raw ingredients. We have a mission to rethink fast food and we are here to provide a healthy meal that fuels the day. They have options for vegan, gluten-free, and nut-free meals."
      img="https://cdn.vox-cdn.com/thumbor/LE4j3Jijweg7R1Nl_bRp87IJMzs=/0x0:1024x683/1200x800/filters:focal(357x271:519x433)/cdn.vox-cdn.com/uploads/chorus_image/image/59884101/AlohaPoke_29_1024x683.0.jpg"
      url="https://www.alohapokeco.com/"
      
      
    elsif @user_ans == 264
     restaurantName="Chicago Diner"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} offers an entirely meat-free menu. There are plenty of items for vegans and gluten free diets, including their famous vegan milkshakes."
      img="https://c.o0bg.com/rf/image_960w/Boston/2011-2020/2014/02/13/BostonGlobe.com/Lifestyle/Images/ILveggie-dagwood.jpg"
      url="http://www.veggiediner.com/"
     
      
    elsif @user_ans == 364
      restaurantName="Everest"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} is an elegant 40th floor eatery in the Chicago Stock Exchange with French prix fixe menus & city views with a seperate vegan menu."
      img="https://resizer.otstatic.com/v2/photos/large/24611439.jpg"
      url="http://www.everestrestaurant.com/"
      
      
    elsif @user_ans == 174
      restaurantName="Froyo Chicago"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} is a delicious soft serve yogurt establishment located in the heart of Chicago that accommodates dairy-free, vegan and gluten-free diets."
      img="https://images.coplusk.net/blog/feature/values/8149/image/large_AGarbotPhotography-LakeviewChamber-FroyoRibbon-08-PRINT__1_.jpg"
      url="http://froyochicago.com/"
    
    elsif @user_ans == 274
      restaurantName="Swirlz Cupcakes"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} has cakes & cupcakes with Italian buttercream, plus gluten-free & vegan options, in a spare setting."
      img="https://wwcdn.weddingwire.com/vendor/70001_75000/71929/thumbnails/800x800_1231886838203-grownupcakescropped.jpg"
      url="http://www.swirlzcupcakesshop.com/"
       
    elsif @user_ans == 374
      restaurantName="Westtown Bakery"
      welcome = "Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip = "#{restaurantName}'s food is meant to be enjoyed by anyone, regardless of lifestyle, allergies, moral beliefs, or health condition. Cakes and pastries at West Town Bakery can meet almost any need, including vegan, nut-free, soy-free, gluten-free, and dairy-free diet."
      img = "https://lindsayamalone.files.wordpress.com/2015/02/ice-skate-2.jpg"
      url = "https://westtownbakery.com/"
    
    # elsif @user_ans == 374 && @user_ans == 374
    #   restaurantName="Westtown Bakery"
    #   restaurantName2="Westtown Bakery"
    #   welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName} and #{restaurantName2}</a> </b> are the restaurant that will best accommodate your allergies!"
    #   descrip= "#{restaurantName} has a gluten-free, dairy-free, and peanut-free menu, and all of their homemade sauces are vegan. It is a counter style, veggie-focused, Asian inspired restaurant that believes in daily food prep."
    #   img="https://lindsayamalone.files.wordpress.com/2015/02/ice-skate-2.jpg"
    #   url="https://westtownbakery.com/"  
      
      
    else
      welcome ="In order to get a solution you must complete all the answers to the test"
      img="https://blog.sqlauthority.com/i/a/errorstop.png"
    end
    @results=[welcome, restaurantName, descrip, img, url]
    erb :answer
  end

end
