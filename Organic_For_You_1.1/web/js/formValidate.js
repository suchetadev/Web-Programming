/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function validateForm(){
                
                var firstName = document.myForm.firstName.value;
                var lastName = document.myForm.lastName.value;
                var email = document.myForm.email.value;
                var phoneNumber = document.myForm.phoneNumber.value;
                var month = document.myForm.month.value;
                var day = document.myForm.day.value;
                var year = document.myForm.year.value;
                var password = document.myForm.password.value;
                var passwordConfirm = document.myForm.passwordConfirm.value;
                
                var msg = "";
                var status = true;
                var letters = /^[A-Za-z]+$/;
                
                if(firstName === null || firstName === ""){
                    msg = "Please enter first name.";
                    document.getElementById("error_firstName").innerHTML = msg;
                    status = false;
                
                }
                else if(!(firstName.match(letters))){
                    msg = "Please enter letters only.";
                    document.getElementById("error_firstName").innerHTML = msg;
                    status = false;
     
                }
                if(lastName === null || lastName === ""){
                    msg = "Please enter last name.";
                    document.getElementById("error_lastName").innerHTML = msg;
                    status = false;
                }
                if(email === null || email === ""){
                    msg = "Please enter email id.";
                    document.getElementById("error_email").innerHTML = msg;
                    status = false;
                }
                if(phoneNumber === null || phoneNumber === ""){
                    msg = "Please enter phone number.";
                    document.getElementById("error_phoneNumber").innerHTML = msg;
                    status = false;
                }
                if(password === null || password === ""){
                    msg = "Please enter password.";
                    document.getElementById("error_password").innerHTML = msg;
                    status = false;
                }
                 if(passwordConfirm === null || passwordConfirm === ""){
                    msg = "Please confirm your password.";
                    document.getElementById("error_passwordConfirm").innerHTML = msg;
                    status = false;
                }
                
                return status;
            }