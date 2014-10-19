
    /* globals */
	var map;
	var markerArray = [];

	/**
	* inicialize starts the map
	*/
      function initialize() {

        var mapOptions = {
        	center: { lat: 45, lng: -95},
        	zoom: 3,
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

        // this just addes test markers
		for(var i = 0; i < 10; ++i) {
			addMarker(45, -95+(i*11), "test "+(i+1));
		}

      }
      // listener starts the map after the window loads
      google.maps.event.addDomListener(window, 'load', initialize);

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
			title: title
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
			addMarker(40, -95+(i*11), "added"+(i+1));
		}
	}