// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

  // Initialize Firebase
  // signout user
  $("#btnLogout").on('click', function(e) {
    var config = {
      apiKey: "AIzaSyBeRU9US2IBEQuXLMMv8rqbGdhOfJ-Yc-E",
      authDomain: "ibuilt-fdc16.firebaseapp.com",
      databaseURL: "https://ibuilt-fdc16.firebaseio.com",
      storageBucket: "ibuilt-fdc16.appspot.com",
      messagingSenderId: "711394388600"
    };
    
    firebase.initializeApp(config);
    firebase.auth().signout();
  });
