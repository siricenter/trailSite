

var BASE_URL = "http://localhost:3000/";

function getRegions() {
	url = BASE_URL + "regions/getJson";
	$.getJSON(url, function(response) {
		console.log(response);
		for(var i = 0; i < response.length; ++i) {
			console.log(response[i]);
			var marker = addMarker(response[i].latitude, response[i].longitude, response[i].name);
			addClickListenerToMarker(marker, function() {
				alert(marker.title);
			});
		}
	});
}