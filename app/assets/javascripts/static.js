//= require googleMaps/googleMaps
//= require googleMaps/googleTrailMarkers

function initializeMap() {
  // get data-markers attribute
  var markerData = document.getElementById("map-canvas").getAttribute("data-markers");
  if(markerData !== "") {
    markerData = JSON.parse(markerData);
    console.dir(markerData);

    // make map acording to attributes (if any)
    var map = new GoogleMapController(markerData.parent /*contains latitude, longitude, and zoom data*/);
    
    // get data-mapOptions attribute
    // if options exist then change attributes

    // add markers to the map
    var children = markerData["children"];
    for(var i = 0; i < children.length; ++i) {
      var child = children[i];
      var marker = map.addMarker(child.latitude, child.longitude, child.name);
      // add function to each marker to call the next url (url + id)
      map.addLink(marker, markerData["child_url"] + "/" + child.id);
    }
  } else {
    var map = new GoogleMapController();
  }
}
