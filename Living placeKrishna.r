library(leaflet)

//reference//
content <- paste(sep = "<br/>",
                 "<b><a href='http://www.sjsu.edu'>San Jose State University</a></b>",
                 "1 Washington Square",
                 "San Jose, CA 95192")

//Krishna's Code//

sjsuIcon <- makeIcon(
    iconUrl = "https://upload.wikimedia.org/wikipedia/en/d/d3/SJSU_Seal.svg",
    iconWidth = 42 * 215/230, iconHeight = 42,
    iconAnchorX = 42 * 215/230/2, iconAnchorY = 16)

m = leaflet() %>% setView(lat = 37.3352, lng = -121.8811, zoom = 16) %>%
    addTiles() %>%
    addPopups(lat = 28.7041 , lng = -77.102, content, 
              options = popupOptions(closeButton = FALSE)) %>%
    addMarkers(icon = sjsuIcon, lat = 37.33475, lng = -121.88471, 
               popup = "This is where Krishna Raj(me) is living RN!")

m
