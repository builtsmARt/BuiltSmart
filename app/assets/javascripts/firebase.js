// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

// $(document).ready(function() {

  // Initialize Firebase
  // var config = {
  //   apiKey: "AIzaSyBeRU9US2IBEQuXLMMv8rqbGdhOfJ-Yc-E",
  //   authDomain: "ibuilt-fdc16.firebaseapp.com",
  //   databaseURL: "https://ibuilt-fdc16.firebaseio.com",
  //   storageBucket: "ibuilt-fdc16.appspot.com",
  //   messagingSenderId: "711394388600"
  // };
  //
  // firebase.initializeApp(config);
  //
  // var email = $("#session_email");
  // var password = $("#session_password");
  // var btnSignup = $("#btnSignup");
  // var btnLogin = $("#btnLogin");
  //
  // btnLogin.on("click", function(e) {
  //   e.preventDefault();
  //
  //   var email =  $("#session_email").val(),
  //       password = $("#session_password").val();
  //
  //   var auth = firebase.auth();
  //
  //   var promise = auth.signInWithEmailAndPassword(email, password);
  //   promise.catch(function(e) {
  //     console.log(e.message);
  //   });
  // });


  // Signup logic for firebase
  // btnSignup.on("click", function(e) {
  //   e.preventDefault();

    // var fullName = $("#").val(),
  //   var email =  $("#user_email").val(),
  //       password = $("#user_password").val();
  //
  //   var auth = firebase.auth();
  //
  //   var promise = auth.createUserWithEmailAndPassword(email, password);
  //
  //   promise.catch(function(e) {
  //     console.log(e.message);
  //   });
  //
  //   promise
  //     .then(function(user) {
  //       console.log(user);
  //     })
  //     .catch(function(e) {
  //       console.log(e.message);
  //     });
  //
  // });

  // find logout button, and attach event listener click.
  // signout user
  // $("#btnLogout").on('click', function(e) {
  //   firebase.auth().signout();
  // });

  // checks if user is logined or logout
  // firebase.auth().onAuthStateChanged(firebaseUser => {
  //     if (firebaseUser) {
  //       console.log(firebaseUser);
  //       // update input hiddden field for login
  //       // continue on with submit
  //       debugger;
  //     } else {
  //       console.log('not logged in');
  //     }
  //   });
// });
