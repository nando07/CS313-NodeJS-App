function toggle() {
var element = document.getElementById('navigation');
    element.preventDefault();
   element.classList.toggle('sidebar-open');
}

// Constants used during the AJAX request.
const DONE  = 4;
const OKAY  = 200;
const ERROR = {
  "message": "The request failed!"
};

// Wait for the document to load before binding event handlers further.
document.addEventListener('DOMContentLoaded', function(e) {

  // Obtain programmatic reference to the important elements of the page.
  var exform = document.getElementById('cform'),
      finalists = document.getElementById('finalists'),
      output = document.getElementById('output');

  // Listen for submission events on the example form.
  cform.addEventListener('submit', function(e) {

    // Programmatically prevent the form from submitting.
    e.preventDefault();

    // Create a new XMLHttpRequest object and resolve the target URI.
    var request = new XMLHttpRequest(),
        target  = '/getWorldCupDetails?year=' + finalists.value;

    // Open and send a GET request to the target URI.
    request.open('GET', target);
    request.send();

    // Listen for changes to the XMLHttpRequest's readyState.
    request.onreadystatechange = function() {

      // Do nothing until the request is finished.
      if (request.readyState === DONE) {

        // Create a div element to hold the output.
        var div = document.createElement('div');

        // If the request was successful, append the response.
        // If not, append a JSON error object.
        if (request.status === OKAY) {

          // The most notable difference here is that vanilla JavaScript returns
          // the result of an AJAX request as a string, whereas jQuery attempts
          // to parse JSON responses into a JSON object.
          div.appendChild(document.createTextNode(request.responseText));
        } else {
          div.appendChild(document.createTextNode(JSON.stringify(ERROR)));
        }

        // Append the div to the output container.
        output.appendChild(div);
      }
    };
  });
});
