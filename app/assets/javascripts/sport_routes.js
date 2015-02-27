window.onload = function() {
  update();
};

function update() {

    var wall_id = document.getElementById("wall_dropdown").value;
    var name = document.getElementById("name").value;
    
    nextRouteDropdown = document.getElementById("next_route_dropdown");
    prevRouteDropdown = document.getElementById("prev_route_dropdown");
    
    var length = nextRouteDropdown.options.length;
    for (i = 0; i < length; i++) {
        nextRouteDropdown.options[0] = null;
        prevRouteDropdown.options[0] = null;
    }
    var URL = '/sport_routes/get_sport_routes_from_wall/' + wall_id;
    $.get(URL, null, function(data){
        
        var optn = document.createElement("OPTION");
        optn.text = '';
        optn.value = '';
        nextRouteDropdown.options.add(optn);
        
        var optn1 = document.createElement("OPTION");
        optn1.text = '';
        optn1.value = '';
        prevRouteDropdown.options.add(optn1);
        for (var i = 0; i < data.length; i++)
        {
            if(data[i].name != name) {
                var optn1 = document.createElement("OPTION");
                optn1.text = data[i].name;
                optn1.value = data[i].id;
                nextRouteDropdown.options.add(optn1);
                var optn2 = document.createElement("OPTION");
                optn2.text = data[i].name;
                optn2.value = data[i].id;
                prevRouteDropdown.options.add(optn2);
            }
        }
    });
}