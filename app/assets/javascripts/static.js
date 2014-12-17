//= require googleMaps/googleMaps
//= require googleMaps/googleTrailMarkers

function initializeMap() {
  // get data-markers attribute
  var markerData = document.getElementById("map-canvas").getAttribute("data-markers");
  var map;
  if(markerData !== "") {
    markerData = JSON.parse(markerData);
    console.dir(markerData);

    // make map acording to attributes (if any)
    map = new GoogleMapController(markerData.parent /*contains latitude, longitude, and zoom data*/);
    
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
    map = new GoogleMapController();
  }
  return map;
}

function initializeAdminMap() {

  // start a basic map
  var map = initializeMap();

  // bind input value to map
  map.zoomBind(document.getElementById("zoom"));  
    
  // add possition bind to map
    /*map.addMoveListener(function() {
      latitude = this.getCenter().k;
      longitude = this.getCenter().D;

      if(longitude < -180) {
        var dif = longitude - -180;
        longitude = 180 + dif;
        var myLatLng = new google.maps.LatLng(latitude, longitude);
        this.setCenter(myLatLng);
      }

      if(longitude > 180) {
        var dif = longitude - 180;
        longitude = -180 + dif;
        var myLatLng = new google.maps.LatLng(latitude, longitude);
        this.setCenter(myLatLng);
      }
    });*/
}