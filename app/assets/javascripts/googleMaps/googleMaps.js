    /* globals */
	var map;
	var mapOptions;
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

        mapOptions = {
        	center: { lat: 38, lng: -100},
        	zoom: 1,
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
      }
      

	/**
	* addMarker will add a single marker to the map with listener functions
	* take the latitude, longitude, and title of the marker	
	* returns the new marker
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

		// add the marker to the end of the array
		markerArray.push(marker);
		return marker;
	}

	/**
	* sets the map zoom to the specified value
	*/
	function setZoom(zoomValue) {
		map.setZoom(zoomValue);
	}

	/**
	* sets the map to a new center
	*/
	function setCenter(latitude, longitude) {
		map.setCenter(latitude, longitude);
	}

	/**
	* sets the center of the map and its zoom level
	*/
	function setMap(latitude, longitude, zoom) {
		mapOptions.center.lat = latitude; 
		mapOptions.center.lng = longitude;
        mapOptions.zoom = zoom;
        map.setOptions(mapOptions);
	}

	/**
	* resets the center of the map and its zoom level to the default possition
	*/
	function resetMap() {
		setMap(38, -100, 4);
	}	

	/**
	* adds the specificed function to the specificed marker
	*/
	function addClickListenerToMarker(marker, onClickFunction) {
		google.maps.event.addListener(marker, 'click', onClickFunction);
	}

	/**
	* removes all of the map markers
	*/
	function removeAllMarkers() {
		alert("started removeAllMarkers()");
		var marker = markerArray.pop();
		while(marker != null) {
			marker.setMap(null);
			alert(marker.title);
			marker = markerArray.pop();
		}
		alert("ended removeAllMarkers()");
	}


	/***test functions***/
	function testClickFunction() {
		alert("calling testClickFunction()");
		removeAllMarkers();
		populate();
	}

	function populate() {
		for(var i = 0; i < 10; ++i) {
			newMarker = addMarker(38, -150+(i*5), "added"+(i+1));
			addClickListenerToMarker(newMarker, testSetMap);
		}
	}

	function testSetZoom() {
		if(map.zoom == 4) {
			setZoom(3);
		} else {
			setZoom(4);
		}
	}

	function testSetMap() {
		setMap(38, -50, 3);
	}