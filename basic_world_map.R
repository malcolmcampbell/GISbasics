# WORLD MAP
library("rnaturalearth", "rnaturalearthdata", "ggplot2", "sf")
world <- ne_countries(scale = "medium", returnclass = "sf")
# plot it
ggplot() + geom_sf(data = world, fill = "lightgreen")+
  theme(panel.background = element_rect(fill = "lightblue"),
        panel.ontop = FALSE) 
# alternative visualisation
world2 <- sf::st_transform(
  world,
  "+proj=laea +y_0=10 +lon_0=130 +lat_0=-60 +ellps=WGS84 +no_defs"
)
ggplot() + geom_sf(data = world2, fill = "lightgreen")+
theme(panel.background = element_rect(fill = "lightblue"),
      panel.ontop = FALSE) 

#END
