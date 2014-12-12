var GoogleMapController = function() {

	/*constants*/
	var PIN_COLOR = "99CCFF";
	var PIN_SIZE = new google.maps.Size(21, 34);
	var PIN_POINT1 = new google.maps.Point(0,0);
	var PIN_POINT2 = new google.maps.Point(10, 34);
	var PIN_RESOURCE = "http://chart.apis.google.com/chart?chst=d_map_pin_letter&chld=%E2%80%A2|";
	var PIN_IMAGE = new google.maps.MarkerImage(PIN_RESOURCE + PIN_COLOR, PIN_SIZE, PIN_POINT1, PIN_POINT2);

	/**
	* inicialize the map
	*/
	/* globals */
	this.markerArray = [];
	var mapOptions = {
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
  // creates the map itself
  var map = new google.maps.Map(document.getElementById('map-canvas'),
      mapOptions);
      

	/**
	* addMarker will add a single marker to the map with listener functions
	* take the latitude, longitude, and title of the marker	
	* returns the new marker
	*/
	this.addMarker = function(lat, lng, title) {
		var myLatlng = new google.maps.LatLng(lat,lng);
		// To add the marker to the map, use the 'map' property
		var marker = new google.maps.Marker({
			position: myLatlng,
			map: map,
			title: title,
			icon: PIN_IMAGE
		});
		// add the marker to the end of the array
		this.markerArray.push(marker);
		return marker;
	};

	this.addLink = function(marker, link) {
		marker.url = link;
		google.maps.event.addListener(marker, 'click', function() {
			window.location.href = this.url;
		});
	};

	/**
	* sets the map zoom to the specified value
	*/
	/*this.setZoom = function (zoomValue) {
		map.setZoom(zoomValue);
	};*/

	/**
	* sets the map to a new center
	*/
	/*this.setCenter = function(latitude, longitude) {
		map.setCenter(latitude, longitude);
	};*/

	/**
	* sets the center of the map and its zoom level
	*/
	this.setMap = function(latitude, longitude, zoom) {
		mapOptions.center.lat = latitude; 
		mapOptions.center.lng = longitude;
    mapOptions.zoom = zoom;
    map.setOptions(mapOptions);
	};

	/**
	* resets the center of the map and its zoom level to the default possition
	*/
	this.resetMap = function() {
		this.removeAllMarkers();
		this.setMap(38, -100, 4);
	};

	/**
	* adds the specificed function to the specificed marker
	*/
	this.addFunction = function(marker, onClickFunction) {
		google.maps.event.addListener(marker, 'click', onClickFunction);
	};

	/**
	* removes all of the map markers
	*/
	this.removeAllMarkers = function() {
		var marker = this.markerArray.pop();
		while(marker != null) {
			marker.setMap(null);
			marker = this.markerArray.pop();
		}
	};
};

	/***test functions***/
	function runMapTests() {
		var controller = testObjectCreation();
		testAddMarker(controller);
		testMarkerLink(controller);
		testAddFunction(controller);
		testSetMap(controller);
		testRemoveMarkers(controller);
	}

	function testObjectCreation() {
		var controller = new GoogleMapController();
		if(controller == null || controller == 'undefined') {
			console.log('failed testObjectCreation');
		}
		return controller;
	}

	function testAddMarker(controller) {
		for(var i = 0; i < 5; ++i) {
			controller.addMarker(35, 20 + (i*10), 'marker: ' + i.toString());
		}
		if(controller.markerArray.length != 5) {
			console.log('testAddMarker failed, only ' + controller.markerArray.length.toString() + ' markers added');
		}
	}

	function testMarkerLink(controller) {
		for(var i = 0; i < controller.markerArray.length; ++i) {
			controller.addLink(controller.markerArray[i], "https://www.google.com/#q=" + i.toString());
		}
	}

	function testAddFunction(controller) {
		for(var i = 0; i < 3; ++i) {
			var marker =  controller.addMarker(10 + i*10, 150, 'function: ' + i.toString());
			controller.addFunction(marker, function() {
				alert(this.title); // note 'this.' in this context will be the marker itself
			});
		}
	}

	function testSetMap(controller) {
		for(var i = 0; i < 3; ++i) {
			var marker =  controller.addMarker(1 + i*10, 10, 'zoom: ' + i.toString());
			controller.addFunction(marker, function() {
				controller.setMap(this.position.lat(), this.position.lng(), 10);
			});
		}
	}

	function testRemoveMarkers(controller) {
		var marker =  controller.addMarker(-20, -20, 'clear map');
		controller.addFunction(marker, function() {
			controller.removeAllMarkers();
		});
	}