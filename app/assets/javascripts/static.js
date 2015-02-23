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
        var mapType;
        if (markerData.parent.zoom < 15) {
            mapType = google.maps.MapTypeId.TERRAIN
        } else {
            mapType = google.maps.MapTypeId.SATELLITE
        }
        var mapOptions = {
            zoom: markerData.parent.zoom,
            center: latlon,
            mapTypeId: mapType,
            zoomControl: false,
            streetViewControl: false,
            scrollwheel: false,
            draggable: false,
            disableDoubleClickZoom: true,
            panControl: false
            
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
            var marker = new google.maps.Marker({
                position: new google.maps.LatLng(child.latitude, child.longitude),
                map: map,
                url: markerData.child_url + '/' + child.id,
                title: child.name
            });
            
            // Allow each marker to have an info window    
            google.maps.event.addListener(marker, 'click', (function(marker, i) {
                return function() {
                    window.location = marker.url;
                }
            })(marker, i));
        }
        
    } else {
    var latlon = new google.maps.LatLng(1.00, 1.00);
    var mapOptions = {
        zoom: 1,
        center: latlon,
            zoomControl: false,
            streetViewControl: false,
            scrollwheel: false,
            draggable: false,
            disableDoubleClickZoom: true,
            panControl: false
    }
    map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
    }
}

function parseMarkerData() {
    // get data-markers attribute 
    var markerData = document.getElementById("map-canvas").getAttribute("data-markers");
    
    if(markerData && markerData !== "") {
        markerData = JSON.parse(markerData);
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
