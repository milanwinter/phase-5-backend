# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# California/Nevada 

Resort.create({name: "Sqaw Valley/Alpine", website: "https://www.squawalpine.com/", state: "California",logo: "https://cdn1.snowpak.com/resorts/logos/000/000/036/original/squaw-valley-alpine-meadows.png?1524458656" ,api_id: "916011"})

Resort.create({name: "Heavenly", website: "https://www.skiheavenly.com/", state: "California",logo:"https://cdn1.coolworks.com/production/clients/157/logos/medium/heavenly_logo.PNG?1531375640" ,  api_id: "916004"})

Resort.create({name: "Mt.Rose", logo: "https://i.vimeocdn.com/portrait/22564647_100x100.webp" ,  website: "https://skirose.com/", state: "Nevada", api_id: "702003"})

Resort.create({name: "Sugar Bowl", logo: "https://tahoe.com/sites/default/files/styles/medium/public/business/33595/logo/21766744_10155774510629772_4709399039071291813_n.png?itok=sR-5idQG", website: "https://www.sugarbowl.com/", state: "California", api_id: "916012"})

Resort.create({name: "Lee Canyon",logo: "https://pbs.twimg.com/profile_images/1045005588722200576/rAK9aDjN_400x400.jpg",  website: "https://www.leecanyonlv.com/", state: "Nevada", api_id: "702002"})

#Colorado 

Resort.create({name: "Vail", website: "https://www.vail.com/",logo:"https://d1yjjnpx0p53s8.cloudfront.net/styles/logo-thumbnail/s3/0001/3254/brand.gif?cKYJ.b8GfWWXulVG5ZXapb9VabE9eVpS&amp;itok=TqdCtgyC", state: "Colorado", api_id: "303023"})

Resort.create({name: "Telluride", logo: "https://carsandcolors.com/wp-content/uploads/2016/04/TelSki-web.png", website: "https://tellurideskiresort.com/", state: "Colorado", api_id: "303022"})

Resort.create({name: "Beaver Creek Village", website: "https://www.beavercreek.com/", state: "Colorado", logo: "https://i.pinimg.com/originals/ab/95/52/ab9552defbb723def720f594185e576f.jpg" , api_id: "303005"})


Resort.create({name: "Steamboat Ski Resort", website: "www.steamboat.com/", state: "Colorado", logo: "https://media.glassdoor.com/sql/249589/steamboat-ski-resort-squarelogo-1424874409026.png", api_id: "303021"})

Resort.create({name: "Copper Mountain", website: "https://www.coppercolorado.com/", state: "Colorado", logo: "https://www.pngkit.com/png/detail/194-1948385_copper-mountain-logo-mogulski-2018-07-04t17-copper.png", api_id: "303009"})

# Utah

Resort.create({name: "Snowbird", website: "https://www.snowbird.com/", state: "Utah",logo: "https://images-na.ssl-images-amazon.com/images/I/51uBRiiT4UL._AC_SX679_.jpg",  api_id: "801010"})

Resort.create({name: "Deer Valley Resort", website: "https://www.deervalley.com/ ", state: "Utah",logo: "https://mediad.publicbroadcasting.net/p/kpcw/files/styles/large/public/202004/deer_valley_logo.jpg",  api_id: "801004"})

Resort.create({name: "Park City Mountain", website: "https://www.parkcitymountain.com/", logo: "https://images.squarespace-cdn.com/content/v1/5b48c1ff70e8021016535ae3/1546550728983-IHYC4UV2ZCBLQXPOU2BO/ke17ZwdGBToddI8pDm48kFODgfdrv4jjAEm6N9XxoDhZw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZUJFbgE-7XRK3dMEBRBhUpwELJdBc53pqW8e-vjUhT2oCbEO-b9WspgPHkDD32hPq2U6BmMkITJFW1FBg39mUk8/PCM.jpg?format=500w", state: "Utah", api_id: "801006"})

Resort.create({name: "Brighton Resort", website: "https://brightonresort.com/", state: "Utah", logo: "https://images.squarespace-cdn.com/content/v1/5b48c1ff70e8021016535ae3/1546549822660-AMLOJVPWIVXWACPMBBWG/ke17ZwdGBToddI8pDm48kHqYAt3UgyjNg-0dlUc4K5hZw-zPPgdn4jUwVcJE1ZvWhcwhEtWJXoshNdA9f1qD7UnCxNA8dHvmd7460Z7fbKEmJ2gL2qv94i4UWS2y7YfwkXCxk_sn2atIO3dASbw33Q/image-asset.png?format=500w" , api_id: "801003"})

Resort.create({name: "Solitude Mountain Resort", website: "https://www.solitudemountain.com/", logo: "https://searchlogovector.com/wp-content/uploads/2018/10/solitude-mountain-resort-logo-vector.png", state: "Utah", api_id: "801011"})

Resort.create({name: "Sundance Resort", website: "https://www.sundanceresort.com/", state: "Utah", logo: "https://pbs.twimg.com/profile_images/1237501771397783552/OTDT2Z3v_400x400.jpg" , api_id: "801012"})


