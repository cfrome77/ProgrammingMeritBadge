function myFunction() {
    var x = document.getElementById("image");
    if (x.style.display === "none") {
      x.style.display = "block";
      document.getElementById('myButton').innerHTML = "Hide the image below";
    } else {
      x.style.display = "none";
      document.getElementById('myButton').innerHTML = "Show the image below";
    }
  }