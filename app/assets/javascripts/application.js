// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function() {

  // Initialize Firebase
  var config = {
    apiKey: "AIzaSyBeRU9US2IBEQuXLMMv8rqbGdhOfJ-Yc-E",
    authDomain: "ibuilt-fdc16.firebaseapp.com",
    databaseURL: "https://ibuilt-fdc16.firebaseio.com",
    storageBucket: "ibuilt-fdc16.appspot.com",
    messagingSenderId: "711394388600"
  };

  firebase.initializeApp(config);

  var email = $("#session_email");
  var password = $("#session_password");
  var btnSignup = $("#btnSignup");
  var btnLogin = $("#btnLogin");

  // Login logic for firebase
  btnLogin.on("click", function(e) {
    e.preventDefault();

    var email =  $("#session_email").val(),
        password = $("#session_password").val();

    var auth = firebase.auth();

    var promise = auth.signInWithEmailAndPassword(email, password);
    promise.catch(function(e) {
      console.log(e.message);
    });
  });


  // Signup logic for firebase
  btnSignup.on("click", function(e) {
    e.preventDefault();

    // var fullName = $("#").val(),
    var email =  $("#user_email").val(),
        password = $("#user_password").val();

    var auth = firebase.auth();

    var promise = auth.createUserWithEmailAndPassword(email, password);

    promise.catch(function(e) {
      console.log(e.message);
    });

    promise
      .then(function(user) {
        console.log(user);
      })
      .catch(function(e) {
        console.log(e.message);
      });

  });

  // find logout button, and attach event listener click.
  // signout user
  $("#btnLogout").on('click', function(e) {
    // $.ajax({
    //   url: "/sessions/logout",
    //   method: "get"
    // });
    firebase.auth().signout();
  });

  // checks if user is logined or logout
  firebase.auth().onAuthStateChanged(firebaseUser => {
      if (firebaseUser) {
        console.log(firebaseUser);
        // $.ajax({
        //   url: "/sessions/login",
        //   method: "post",
        //   data: {user_id: firebaseUser.uid}
        // });
      } else {
        console.log('not logged in');
      }
    });
});
