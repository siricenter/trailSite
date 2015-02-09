//= require googleMaps/googleMaps
//= require googleMaps/googleTrailMarkers

var directionsDisplay;
var directionsService = new google.maps.DirectionsService();
var map;

function initializeMap() {
    directionsDisplay = new google.maps.DirectionsRenderer();
    var markerData = parseMarkerData();
    if (markerData) {
        // make map acording to attributes (if any)
        var latlon = new google.maps.LatLng(markerData['parent'].latitude, markerData['parent'].longitude);
        var mapOptions = {
            zoom: markerData.parent.zoom,
            center: latlon,
            mapTypeId: google.maps.MapTypeId.SATELLITE
        };
        map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
        //map = new GoogleMapController(markerData.parent /*contains latitude, longitude, and zoom data*/);
        directionsDisplay.setMap(map);
        directionsDisplay.setPanel(document.getElementById('directions-panel'));
        
        // get data-mapOptions attribute
        // if options exist then change attributes

        // add markers to the map
        var children = markerData["children"];
        for(var i = 0; children != null && i < children.length; ++i) {
            var child = children[i];
            var marker = map.addMarker(child.latitude, child.longitude, child.name);
            // add function to each marker to call the next url (url + id)
            map.addLink(marker, markerData["child_url"] + "/" + child.id);
        }
    
    } else {
    var latlon = new google.maps.LatLng(1.00, 1.00);
    var mapOptions = {
        zoom: 1,
        center: latlon
    }
    map = new new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
    }
}

function parseMarkerData() {
    // get data-markers attribute 
    var markerData = document.getElementById("map-canvas").getAttribute("data-markers");
    
    if(markerData !== "") {
        markerData = JSON.parse(markerData);
        console.dir(markerData);
    }
    return markerData;
}
      
function calcRoute() {
    // get geolocation
    // // Try HTML5 geolocation
  if(navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function(position) {
        var pos = new google.maps.LatLng(position.coords.latitude,
                                         position.coords.longitude);
        var markerData = parseMarkerData();
        if (markerData.parent.length) {
            var end = new google.maps.LatLng(markerData['parent'].latitude, markerData['parent'].longitude);
            var request = {
                origin:pos,
                destination:end,
                travelMode: google.maps.TravelMode.DRIVING
            };
            directionsService.route(request, function(response, status) {
                if (status == google.maps.DirectionsStatus.OK) {
                    directionsDisplay.setDirections(response);
                }
            });
            map.setMapTypeId(google.maps.MapTypeId.HYBRID);
        }
    }, function() {
        handleNoGeolocation(true);
        
    });
  } else {
    // Browser doesn't support Geolocation
    handleNoGeolocation(false);
  }
}

function initializeAdminMap() {

  // start a basic map
  var map = initializeMap();

  // bind input value to map
  map.zoomBind(document.getElementById("zoom"));  
    
  // bind latitude and longitude to map movements
  map.moveBind(document.getElementById('latitude'), document.getElementById('longitude'));
  // add possition bind to map
    /*map.addMoveListener(function() {
      
    });*/
}