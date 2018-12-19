exports.hentvejr = function () {
    // Create a request variable and assign a new XMLHttpRequest object to it.
    var request = new XMLHttpRequest();

    // Open a new connection, using the GET request on the URL endpoint
    request.open('GET', 'https://vejr.eu/api.php?location=Copenhagen&degree=C', true);

    request.onload = function () {
        // Begin accessing JSON data here
        var vejrobj = JSON.parse(this.response)

        document.getElementById("id_locationname").innerHTML = vejrobj[0].LocationName;
        document.getElementById("id_temperature").innerHTML = vejrobj[0].temperature;
        document.getElementById("id_skyText").innerHTML = vejrobj[0].skyText;
        document.getElementById("id_humidity").innerHTML = vejrobj[0].humidity;
        document.getElementById("id_windText").innerHTML = vejrobj[0].windText;
        
    }
}

// Send request
request.send();