    /* globals */
	var map;
	var markerArray = [];

	/*constants*/
	var PIN_COLOR = "99CCFF";
	var PIN_SIZE = new google.maps.Size(21, 34);
	var PIN_POINT1 = new google.maps.Point(0,0);
	var PIN_POINT2 = new google.maps.Point(10, 34);
	var PIN_RESOURCE = "http://chart.apis.google.com/chart?chst=d_map_pin_letter&chld=%E2%80%A2|";
	var PIN_IMAGE = new google.maps.MarkerImage(PIN_RESOURCE + PIN_COLOR, PIN_SIZE, PIN_POINT1, PIN_POINT2);
	

	/**
	* inicialize starts the map
	*/
      function initialize() {

        var mapOptions = {
        	center: { lat: 38, lng: -100},
        	zoom: 4,
        	scrollwheel: false,
    		navigationControl: false,
    		mapTypeControl: false,
    		scaleControl: false,
    		draggable: false,
    		zoomControl: false,
    		panControl: false,
    		streetViewControl: true,
    		mapTypeId: google.maps.MapTypeId.TERRAIN
        };

        // creates the map
        map = new google.maps.Map(document.getElementById('map-canvas'),
            mapOptions);

        // add a marker to the center
		addMarker(mapOptions.center.lat, mapOptions.center.lng, "center");
      }
      

	/**
	* addMarker will add a single marker to the map with listener functions
	* take the latitude, longitude, and title of the marker	
	*/
	function addMarker(lat, lng, title) {
		var myLatlng = new google.maps.LatLng(lat,lng);
		// To add the marker to the map, use the 'map' property
		var marker = new google.maps.Marker({
			position: myLatlng,
			map: map,
			title: title,
			icon: PIN_IMAGE
		});
		
		// add a listener to the newly created marker
		google.maps.event.addListener(marker, 'click', function() {
			alert(marker.title);
			removeAllMarkers();
		});

		// add the marker to the end of the array
		markerArray.push(marker);
	}

	/**
	* removes all of the map markers
	*/
	function removeAllMarkers() {
		var marker = markerArray.pop();
		while(marker != null) {
			marker.setMap(null);
			alert(marker.title);
			marker = markerArray.pop();
		}
		for(var i = 0; i < 10; ++i) {
			addMarker(38, -150+(i*11), "added"+(i+1));
		}
	}