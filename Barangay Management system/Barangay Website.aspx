<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Barangay Website.aspx.cs" Inherits="Barangay_Management_system.Barangay_Website" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
        href="https://fonts.googleapis.com/css2?family=ABeeZee:ital@0;1&family=Abel&family=Abhaya+Libre:wght@400;500;600;700;800&display=swap"
        rel="stylesheet" />
    <title>Barangay Website</title>
    <style>
        * {
  padding: 0px;
  margin: 0px;
}
html{
    scroll-behavior:smooth;
}

body {
  font-family: "ABeeZee", sans-serif;
  font-size: 20px;
}

.nav_Bar {
  background-color: #f9f9f9;
  color: #333333;
  padding: 14px;
  display: flex;
  justify-content: space-evenly;
  align-items: center;
}

.nav_Bar img {
  width: 10%;
}

.nav_Bar ul {
  list-style: none;
  display: flex;
  justify-content: center;
  align-items: center;
}

.nav_Bar li a {
  margin: 10px 40px;
  text-decoration: none;
  color: #333333;
}

.nav_Bar .sign-in {
  font-size: 20px;
  padding: 10px 30px 10px 30px;
  border-radius: 50px;
  color: #f9f9f9;
  background-color: #0048ff;
  border: none;
  height: 40px;
  align-items: center;
  display: flex;
  cursor: pointer;
}
/* End of nav-bar code */

.main_Content {
  display: flex;
  align-items: start;
  justify-content: space-around;
  padding-top: 50px;
}

.main_Content img {
  width: 315px;
}

.text_Container {
  flex-basis: 40%;
}

.text_Container h2 {
  font-size: 46px;
  line-height: 50px;
  font-family: "Abhaya Libre", serif;
  background: linear-gradient(to right, #0048ff, #d6008d);
  -webkit-background-clip: text;
  color: transparent;
  margin-bottom: 40px;
}

.text_Container p {
  font-size: 20px;
  line-height: 36px;
  font-family: "Abel", sans-serif;
  margin-bottom: 40px;
}

.text_Container button {
  font-size: 20px;
  padding: 10px 30px 10px 30px;
  border-radius: 50px;
  color: #f9f9f9;
  background-image: linear-gradient(to left, #09153f, #002bc2);
  border: none;
  display: flex;
  align-items: center;
  cursor: pointer;
}
.text_Container img {
  width: 30px;
}
/*End of main Code */

.aside_Container img {
  margin-top: 30px;
  width: 100%;
}
/*End of aside Code */

.kapitan-info img{
    width: 120px;
}
.section1 {
  height: 100vh;
}

.section1_About h1 {
  text-align: center;
  padding: 50px 0px 50px 0px;
  font-size: 50px;
}

.section1_Content {
  display: flex;
  justify-content: space-evenly;
  align-items: start;
}

.section1_Content img {
  width: 20%;
  -moz-border-radius: 80%;
  -webkit-border-radius: 80%;
  border-radius: 80%;
  background-color: yellow;
}

.section1_text {
  flex-basis: 50%;
  font-size: 25px;
  text-align: justify;
}

.section1_Box {
  display: flex;
  align-items: center;
  justify-content: space-between;
  gap: 10px;
  margin-top: 20px;
}

.section1_Box p {
  font-size: 10px;
}

.section1_box1 {
  padding: 10% 20px;
  background-color: #ff9494;
  border-radius: 10px;
  width: 40%;
}

.section1_box2 {
  padding: 10% 20px;
  background-color: #ff94e1;
  border-radius: 10px;
  width: 40%;
}
/*end of section1 code */

/*Slideshow*/

* {
  box-sizing: border-box;
}

.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
  overflow: hidden;
  justify-content: center;
}

.mySlides {
  display: none;
  text-align: center;
  height: 300px;
}

.prev,
.next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  margin-top: -22px;
  padding: 16px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
}

.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

.prev:hover,
.next:hover {
  background-color: rgba(0, 0, 0, 0.8);
}

.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active,
.dot:hover {
  background-color: #717171;
}

.fade {
  animation-name: fade;
  animation-duration: 1.5s;
}

@keyframes fade {
  from {
    opacity: 0.4;
  }
  to {
    opacity: 1;
  }
}

/*End of Slideshow*/

.box-wrapper {
  display: flex;
}

/*events-announcements-hotlines*/

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

.box-wrapper {
  height: 95vh;
  width: 100%;
  display: flex;
  flex-direction: column;
  text-align: center;
}

#box {
  padding: 10px;
  flex-grow: 1;
  display: flex;
  flex-direction: row;
}

#events-box {
  flex-grow: 0.5;
  border: solid 1px black;
}

.events-title {
  text-align: center;
}

.events-contents {
  text-align: left;
}

.announcement-container {
  flex-direction: row;
  display: flex;
}

.announcement-box {
  flex-grow: 1;
  display: flex;
  flex-direction: column;
}

.announcement-box div {
  flex-grow: 1;
  margin: 0 8px;
  border: solid 1px black;
}

.announcement-box div + div {
  margin-top: 8px;
}

#hotlines-box {
  flex-grow: 1;
  border: solid 1px black;
}

.hotlines-title {
  text-align: center;
}

.hotlines-contents {
  text-align: left;
}

/*events-announcements-hotlines*/

.section2 {
  height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
}

.section2_container {
  background-color: #407bff;
  height: 100vh;
  width: 100%;
}

.section2_text {
  display: inline-block;
  justify-content: center;
  align-items: center;
  text-align: center;
  width: 100%;
  margin-top: 20px;
}

.section2_text h1 {
  font-size: 50px;
}

.section2 p {
  margin-top: 10px;
}

.section2_offers {
  display: flex;
  align-items: center;
  justify-content: space-evenly;
  margin-top: 50px;
  text-decoration: none;
}
.section2_offers ul {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  justify-content: center;
  align-items: center;
}

.section2_offers li {
  list-style: none;
  padding: 50px 50px;
  background-color: #f9f9f9;
  text-align: center;
  border: #333333 solid 1px;
  display: inline-block;
  justify-content: center;
  align-items: center;
  margin: 20px;
}
.section2_offers img {
  width: 100px;
  display: block;
  margin: 0 auto;
  padding-bottom: 20px;
}
.section2_offers a {
  text-decoration: none;
  color: #333333;
  font-size: 25px;
  font-family: "Abhaya Libre", serif;
}
/*end of section2 code*/

.section3 {
  height: 100vh;
}

.section3_text {
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 20px;
  font-size: xx-large;
  color: #0048ff;
}

/*end of section3 code*/

.footer {
  background-color: gray;
}
.footer_container {
  display: flex;
  justify-content: space-around;
}

.footer_container span {
  font-weight: bold;
}

.footer_container ul li a {
  text-decoration: none;
  color: #333333;
}
.footer_information li {
  text-decoration: none;
  list-style: none;
  line-height: 50px;
}

.footer_contacts li {
  text-decoration: none;
  list-style: none;
  line-height: 50px;
}

.footer_location li {
  text-decoration: none;
  list-style: none;
  line-height: 50px;
}

.reserve {
  height: 15%;
  align-items: center;
  display: flex;
  justify-content: center;
}
@media all and (max-width: 500px) {
  * {
    padding: 0px;
    margin: 0px;
  }

  body {
    font-family: "ABeeZee", sans-serif;
    font-size: 20px;
  }

  .nav_Bar {
    background-color: #f9f9f9;
    color: #333333;
    padding: 14px;
    display: flex;
    justify-content: space-evenly;
    align-items: center;
  }

  .nav_Bar img {
    width: 10%;
  }

  .nav_Bar ul {
    list-style: none;
    display: flex;
    justify-content: center;
    align-items: center;
  }

  .nav_Bar li a {
    margin: 10px 40px;
    text-decoration: none;
    color: #333333;
  }

  .nav_Bar button {
    font-size: 20px;
    padding: 10px 30px 10px 30px;
    border-radius: 50px;
    color: #f9f9f9;
    background-color: #0048ff;
    border: none;
    height: 40px;
    align-items: center;
    display: flex;
  }
  /* End of nav-bar code */

  .main_Content {
    display: flex;
    align-items: start;
    justify-content: space-around;
    padding-top: 50px;
  }

  .main_Content img {
    width: 315px;
  }

  .text_Container {
    flex-basis: 40%;
  }

  .text_Container h2 {
    font-size: 70px;
    line-height: 50px;
    font-family: "Abhaya Libre", serif;
    background: linear-gradient(to right, #0048ff, #d6008d);
    -webkit-background-clip: text;
    color: transparent;
    margin-bottom: 40px;
  }

  .text_Container p {
    font-size: 20px;
    line-height: 36px;
    font-family: "Abel", sans-serif;
    margin-bottom: 40px;
  }

  .text_Container button {
    font-size: 20px;
    padding: 10px 30px 10px 30px;
    border-radius: 50px;
    color: #f9f9f9;
    background-image: linear-gradient(to left, #09153f, #002bc2);
    border: none;
    display: flex;
    align-items: center;
  }
  .text_Container img {
    width: 30px;
  }
  /*End of main Code */

  .aside_Container img {
    margin-top: 20px;
    width: 100%;
  }
  /*End of aside Code */

  .section1 {
    height: 100vh;
  }

  .section1_About h1 {
    text-align: center;
    padding: 50px 0px 50px 0px;
    font-size: 50px;
  }

  .section1_Content {
    display: flex;
    justify-content: space-evenly;
    align-items: start;
  }

  .section1_Content img {
    width: 20%;
    -moz-border-radius: 80%;
    -webkit-border-radius: 80%;
    border-radius: 80%;
    background-color: yellow;
  }

  .section1_text {
    flex-basis: 50%;
    font-size: 25px;
    text-align: justify;
  }

  .section1_Box {
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 10px;
    margin-top: 20px;
  }

  .section1_Box p {
    font-size: 10px;
  }

  .section1_box1 {
    padding: 10% 20px;
    background-color: #ff9494;
    border-radius: 10px;
    width: 40%;
  }

  .section1_box2 {
    padding: 10% 20px;
    background-color: #ff94e1;
    border-radius: 10px;
    width: 40%;
  }
  /*end of section1 code */

  /*Slideshow*/
  .slideshow {
    height: 20%;
  }

  .slideshow-container {
    max-width: 1000px;
    position: relative;
    margin: auto;
  }

  .slideshow-container {
    max-width: 1000px;
    position: relative;
    margin: auto;
    overflow: hidden;
    justify-content: centered;
  }

  .mySlides {
    display: none;
    text-align: center;
    height: 300px;
  }

  .prev,
  .next {
    cursor: pointer;
    position: absolute;
    top: 50%;
    width: auto;
    margin-top: -22px;
    padding: 16px;
    color: white;
    font-weight: bold;
    font-size: 18px;
    transition: 0.6s ease;
    border-radius: 0 3px 3px 0;
    user-select: none;
  }

  .next {
    right: 0;
    border-radius: 3px 0 0 3px;
  }

  .prev:hover,
  .next:hover {
    background-color: rgba(0, 0, 0, 0.8);
  }

  .text {
    color: #f2f2f2;
    font-size: 15px;
    padding: 8px 12px;
    position: absolute;
    bottom: 8px;
    width: 100%;
    text-align: center;
  }

  .numbertext {
    color: #f2f2f2;
    font-size: 12px;
    padding: 8px 12px;
    position: absolute;
    top: 0;
  }

  .dot {
    cursor: pointer;
    height: 15px;
    width: 15px;
    margin: 0 2px;
    background-color: #bbb;
    border-radius: 50%;
    display: inline-block;
    transition: background-color 0.6s ease;
  }

  .active,
  .dot:hover {
    background-color: #717171;
  }

  .fade {
    animation-name: fade;
    animation-duration: 1.5s;
  }

  @keyframes fade {
    from {
      opacity: 0.4;
    }
    to {
      opacity: 1;
    }
  }

  /*End of Slideshow*/

  .section2 {
    height: 100vh;
    display: flex;
    justify-content: start;
    align-items: start;
    margin-top: 100px;
  }

  .section2_container {
    background-color: #407bff;
    height: vh;
    width: 100%;
  }

  .section2_text {
    margin-top: 5%;
    display: inline-block;
    justify-content: center;
    align-items: center;
    text-align: center;
    width: 100%;
  }

  .section2_text h1 {
    font-size: 50px;
  }

  .section2 p {
    margin-top: 20px;
  }

  .section2_offers {
    display: flex;
    align-items: center;
    justify-content: space-evenly;
    margin-top: 50px;
    text-decoration: none;
    display: flex;
    flex-wrap: wrap;
  }
  .section2_offers ul {
    display: flex;
    justify-content: center;
    align-items: center;
    flex-wrap: wrap;
  }

  .section2_offers li {
    list-style: none;
    padding: 100px 50px;
    background-color: #f9f9f9;
    text-align: center;
    border: #333333 solid 1px;
    display: inline-block;
    justify-content: center;
    align-items: center;
    margin: 20px;
    display: flex;
    flex-wrap: wrap;
  }
  .section2_offers img {
    width: 120px;
    display: block;
    margin: 0 auto;
    padding-bottom: 20px;
  }
  .section2_offers a {
    text-decoration: none;
    color: #333333;
    font-size: 25px;
    font-family: "Abhaya Libre", serif;
  }
  /*end of section2 code*/

  .section3 {
    height: 100vh;
  }

  .section3_text {
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 20px;
    font-size: xx-large;
    color: #0048ff;
  }

  /*end of section3 code*/

  .footer_container {
    display: flex;
    justify-content: space-around;
  }

  .footer_container span {
    font-weight: bold;
  }

  .footer_container ul li a {
    text-decoration: none;
    color: #ead8d8;
  }
  .footer_information li {
    text-decoration: none;
    list-style: none;
    line-height: 50px;
  }

  .footer_contacts li {
    text-decoration: none;
    list-style: none;
    line-height: 50px;
  }

  .footer_location li {
    text-decoration: none;
    list-style: none;
    line-height: 50px;
  }
}

::selection {
    color: #fff;
    background: var(--primary);
}
.container {
    width: var(--containerWidth);   
    text-align: center;
    border-radius: 5px;
    padding: 50px 35px 10px 35px;
    background-color: white;
}
.container header {
    font-size: 35px;
    font-weight: 600;
    margin: 0 0 30px 0;
}
.container .form-outer {
    width: 100%;
    overflow: hidden;
}
.container .form-outer form {
    display: flex;
    width: calc(100% * var(--stepNumber));
}
.form-outer form .page {
    width: calc(100% / var(--stepNumber));
    transition: margin-left 0.3s ease-in-out;
}
.form-outer form .page .title {
    text-align: left;
    font-size: 25px;
    font-weight: 500;
}
.form-outer form .page .field {
    width: var(--containerWidth);
    height: 45px;
    margin: 45px 0;
    display: flex;
    position: relative;
}
form .page .field .label {
    position: absolute;
    top: -30px;
    font-weight: 500;
}
label{
    position: static;
}
form .page .field input {
    box-sizing: border-box;
    height: 100%;
    width: 100%;
    border: 1px solid var(--inputBorderColor);
    border-radius: 5px;
    padding-left: 15px;
    margin: 0 1px;
    font-size: 12px;
    transition: border-color 150ms ease;
}
form .page .field input.invalid-input {
    border-color: var(--errorColor);
}
form .page .field select {
    width: 100%;
    padding-left: 10px;
    font-size: 17px;
    font-weight: 500;
}
form .page .field button {
    width: 100%;
    height: calc(100% + 5px);
    border: none;
    background: var(--secondary);
    margin-top: -20px;
    border-radius: 5px;
    color: #fff;
    cursor: pointer;
    font-size: 18px;
    font-weight: 500;
    letter-spacing: 1px;
    text-transform: uppercase;
    transition: 0.5s ease;
}
form .page .field button:hover {
    background: #000;
}
form .page .btns button {
    margin-top: -20px !important;
}
form .page .btns button.prev {
    margin-right: 3px;
    font-size: 17px;
}
form .page .btns button.next {
    margin-left: 3px;
}
.container .progress-bar {
    display: flex;
    margin: 40px 0;
    user-select: none;
}
.container .progress-bar .step {
    text-align: center;
    width: 100%;
    position: relative;
}
.container .progress-bar .step p {
    font-weight: 500;
    font-size: 18px;
    color: #000;
    margin-bottom: 8px;
}
.progress-bar .step .bullet {
    height: 25px;
    width: 25px;
    border: 2px solid #000;
    display: inline-block;
    border-radius: 50%;
    position: relative;
    transition: 0.2s;
    font-weight: 500;
    font-size: 17px;
    line-height: 25px;
}
.progress-bar .step .bullet.active {
    border-color: green;
    background: green;
}
.progress-bar .step .bullet span {
    position: absolute;
    left: 50%;
    transform: translateX(-50%);
}
.progress-bar .step .bullet.active span {
    display: none;
}
.progress-bar .step .bullet:before,
.progress-bar .step .bullet:after {
    position: absolute;
    content: "";
    bottom: 11px;
    right: -100px;
    height: 3px;
    width: 80px;
    background: #262626;
}
.progress-bar .step .bullet.active:after {
    background: green;
    transform: scaleX(0);
    transform-origin: left;
    animation: animate 0.3s linear forwards;
}
/* Upload Image */

/* Existing CSS code */

/* Upload Image */
.container .img-area {
    border: 2px dashed #ccc;
    padding: 20px;
    margin-bottom: 20px;
    cursor: pointer;
    position: relative;
    width: 500px;
    text-align: center;
    margin: 0 auto;
}

.container .img-area .icon {
    font-size: 50px;
    color: #ccc;
}

.container .img-area h3 {
    font-size: 18px;
    margin-top: 10px;
}

.container .img-area p {
    font-size: 14px;
}

.container .img-area span {
    font-weight: bold;
}

.container .select-image {
    background-color: var(--secondary);
    color: #fff;
    border: none;
    border-radius: 5px;
    padding: 10px 20px;
    cursor: pointer;
    font-size: 16px;
    transition: background-color 0.3s ease;
    margin-top: 20px;
}

.container .select-image:hover {
    background-color: #000;
}

.container .img-area.active {
    border-color: green;
}

.container .img-area.active .icon {
    display: none;
}

.container .img-area img {
    max-width: 100%;
    max-height: 200px;
    margin-top: 10px;
    border-radius: 5px;
}

.container .img-area img.active {
    display: block;
}







@keyframes animate {
    100% {
        transform: scaleX(1);
    }
}
.progress-bar .step:last-child .bullet:before,
.progress-bar .step:last-child .bullet:after {
    display: none;
}
.progress-bar .step p.active {
    color: var(--primary);
    transition: 0.2s linear;
}
.progress-bar .step .check {
    position: absolute;
    left: 50%;
    top: 70%;
    font-size: 15px;
    transform: translate(-50%, -50%);
    display: none;
}
.progress-bar .step .check.active {
    display: block;
    color: #fff;
}

@media screen and (max-width: 660px) {
    :root {
        --containerWidth: 400px;
    }
    .progress-bar .step p {
        display: none;
    }
    .progress-bar .step .bullet::after,
    .progress-bar .step .bullet::before {
        display: none;
    }
    .progress-bar .step .bullet {
        display: flex;
        align-items: center;
        justify-content: center;
    }
    .progress-bar .step .check {
        position: absolute;
        left: 50%;
        top: 50%;
        font-size: 15px;
        transform: translate(-50%, -50%);
        display: none;
    }
    .step {
        display: flex;
        align-items: center;
        justify-content: center;
    }
   .form-outer .page .slide-page .field input {
        font-size: 12px;
   }
   select{
    width: 100px;
   }
}

.modal{
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background-color: #111111bd;
    display: flex;
    opacity: 0;
    pointer-events: none;
    animation: none;
}

.modal--show{
    opacity: 1;
    pointer-events: unset;
    transition: opacity .6s;
    --transform: translateY(0);
    --transition: transform .8s .8s;
}

.modal__container{
    margin: auto;
    width: 90%;
    max-width: 600px;
    max-height: 90%;
    background-color: #fff;
    border-radius: 6px;
    padding: 10px 2.5em;
    display: grid;
    gap: 1em;
    place-items: center;
    grid-auto-columns: 100%;
    transform: var(--transform);
    transition:var(--transition);
    display: flex;
    flex-direction: column;

}

.modal__title{
    font-size: 40px;
}


.modal__close{
    color: #fff;
    background-color: red;
    padding: 1em 3em;
    border: 1px solid ;
    border-radius: 6px;
    font-weight: 300;
    transition: background-color .3s;
}
.modal__open{
    color: #fff;
    background-color:blue;
    padding: 1em 3em;
    border: 1px solid ;
    border-radius: 6px;
    font-weight: 300;
    transition: background-color .3s;
}

.modal__close:hover
{
    color: #F26250;
    background-color: #fff;
}
.modal__open:hover{
    color: #6650f2;
    background-color: #fff;
}

.main-user-info{
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    padding: 20px 0;
}

.user-input-box:nth-child(2n){
    justify-content: end;
}

.user-input-box{
    display: flex;
    flex-wrap: wrap;
    width: 50%;
    padding-bottom: 15px;
}

.user-input-box label{
    width: 95%;
    color: black;
    font-size: 15px;
    font-weight: 400;
    margin: 5px 0;
}

.user-input-box input  {
    width: 95%;
    border-radius: 7px;
    outline: none;
    border: 1px solid grey;
    padding:5px;
}
.user-input-box select{
    padding: 5px;
    width: 250px;
    border-radius: 7px;
}


.img-area {
	position: relative;
	width: 50%;
	height: 100px;
	border: black 1px dashed ;
	margin-bottom: 30px;
	border-radius: 15px;
	overflow: hidden;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
   
}
.img-area .icon {
	font-size: 100px;
}
.img-area h3 {
	font-size: 20px;
	font-weight: 500;
	margin-bottom: 6px;
}
.img-area p {
	color: #999;
}
.img-area p span {
	font-weight: 600;
}
.img-area img {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	object-fit: cover;
	object-position: center;
	z-index: 100;
}
.img-area::before {
	content: attr(data-img);
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, .5);
    color: white;
	font-weight: 500;
	text-align: center;
	display: flex;
	justify-content: center;
	align-items: center;
	pointer-events: none;
	opacity: 0;
	transition: all .3s ease;
	z-index: 200;
}
.img-area.active:hover::before {
	opacity: 1;
}
.select-image {
    margin: auto;
	display: block;
	width: 50%;
	padding: 10px 0;
    color: white;
	border-radius: 15px;
	background: blue;
	font-weight: 500;
	font-size: 16px;
	border: none;
	cursor: pointer;
	transition: all .3s ease;
}
.select-image:hover {
	background: darkblue;
}

@media (max-width:800px) {
    .nav__list{
        display: none;
    }

    .nav__menu{
        display: block;
    }

    .hero__main{
        grid-template-columns: 1fr;
        grid-template-rows:max-content max-content ;
        text-align: center;
    }

    .hero__picture{
        grid-row: 1/2;
    }

    .hero__img{
        max-width: 500px;
        display: block;
        margin: 0 auto;
    }

    .modal__container{
        padding: 2em 1.5em;
    }

    .modal__title{
        font-size: 2rem;
    }
}

@media(max-width: 600px){
    .container{
        min-width: 280px;
    }

    .user-input-box{
        margin-bottom: 12px;
        width: 100%;
    }

    .user-input-box:nth-child(2n){
        justify-content: space-between;
    }

    .gender-category{
        display: flex;
        justify-content: space-between;
        width: 100%;
    }

    .main-user-info{
        max-height: 380px;
        overflow: auto;
    }

    .main-user-info::-webkit-scrollbar{
        width: 0;
    }
}
    </style>
</head>
    
<body>
    <form id="form1" runat="server">
        <div class="nav_Container">
            <nav class="nav_Bar">
                <img src="Pictures/mainLogo.png" />
                <ul>
                    <li><a href="#Main">Home</a></li>
                    <li><a href="#Services">Our Services</a></li>
                    <li><a href="#News">News</a></li>
                    <li><a href="#Roadmap">Road Map</a></li>
                    <li><a href="#About">About</a></li>
                </ul>
                <asp:Button runat="server" Text="Sign-in" cssClass="sign-in" href="#About"/>
            </nav>
        </div>

        <main class="main_Container" id="Main">
            <div class="main_Content">
                <div class="text_Container">
                    <h2>Be known, Barangay Bagong Silangan</h2>
                    <p>
                        Welcome! This is the official website of Barangay Bagong Silangan, located in the 2nd district of Quezon City in the Philippines. It is known for being the most populous barangay in the Philippines with a population of 261,729 according to the 2020 census.
                    </p>
                    <button>Learn More<img src="Pictures/leftArrow.png" /></button>
                </div>
                <img src="Pictures/mainLogo.png" />
            </div>
        </main>

        <aside class="aside">
            <div class="aside_Container">
                <img src="Pictures/Banner.jpg" />
            </div>
        </aside>


        <!-- Slideshow-->

        <section class="slideshow">
            <div class="slideshow-container">
                <div class="slideshow-text" style="text-align: center;">
                    <h1>NEWS</h1>
                    <p>Barangay News, Events, and Announcements</p>
                </div>
                <div class="mySlides fade">
                    <div class="numbertext">1 / 4</div>
                    <img src="Pictures\img1.jpg" style="height: 300px; display: block; margin: 0 auto;"/>
                    <div class="text">Caption One</div>
                </div>
                <div class="mySlides fade">
                    <div class="numbertext">2 / 4</div>
                    <img src="Pictures/img2.jpg" style="height: 300px; display: block; margin: 0 auto;"/>
                    <div class="text">Caption Two</div>
                </div>
                <div class="mySlides fade">
                    <div class="numbertext">3 / 4</div>
                    <img src="Pictures/img3.jpg" style="height: 300px; display: block; margin: 0 auto;"/>
                    <div class="text">Caption Three</div>
                </div>
                <div class="mySlides fade">
                    <div class="numbertext">4 / 4</div>
                    <img src="Pictures/img4.jpg" style="height: 300px; display: block; margin: 0 auto;"/>
                    <div class="text">Caption Four</div>
                </div>
                <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
                <a class="next" onclick="plusSlides(1)">&#10095;</a>
            </div>
            <br/>
            <div style="text-align: center">
                <span class="dot" onclick="currentSlide(1)"></span>
                <span class="dot" onclick="currentSlide(2)"></span>
                <span class="dot" onclick="currentSlide(3)"></span>
                <span class="dot" onclick="currentSlide(4)"></span>
            </div>
        </section>
        <!-- End of Slideshow -->
        <!-- events-announcements-hotlines -->
        <section class="box" id="News">
            <div class="box-wrapper">
                <div id="box">
                    <div id="events-box">
                        <div class="events-title">
                            <h1>Events</h1>
                        </div>
                        <div class="events-contents">
                            <h3>-March 5, 2024</h3>
                            <p>
                               Zumba
                            </p>
                            <h3></h3>
                            <h3>-March 6, 2024 - April 1, 2024</h3>
                            <p>
                               Health care Caravan
                            </p>
                        </div>
                    </div>


                    <div class="announcement-box">
                        <div id="announcement1">
                            <h4 style="padding-top: 10px;">
                                <img style="float: left; padding: 10px" src="Pictures/dave.jpg" height="200"/>
                                Si Dave antok na.
                            </h4>
                        </div>
                        <div id="announcement2">
                            <h4 style="padding-top: 10px;">
                                <img style="float: left; padding: 10px" src="Pictures/dave.jpg" height="200"/>
                                Si Dave antok na.
                            </h4>
                        </div>
                        <div id="announcement3">
                            <h4 style="padding-top: 10px;">
                                <img style="float: left; padding: 10px" src="Pictures/dave.jpg" height="200"/>
                                Si Dave antok na.
                            </h4>
                        </div>
                    </div>
                    <div id="hotlines-box">
                        <div class="hotlines-title">
                            <h1>Hotlines</h1>
                        </div>
                        <div class="hotlines-contents">
                            <h3>Fire Station</h3>
                            <ul>
                                <li>0923-453-7859</li>
                            </ul>
                            <h3></h3>
                            <h3>Police Station</h3>
                            <ul>
                                <li>0923-453-7859</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Slideshow JS -->
        <!-- End of Slideshow JS -->

        <!-- events-announcements-hotlines -->

        <section class="section2" id="Services">
            <div class="section2_container">
                <div class="section2_text">
                    <h1>SERVICES</h1>
                    <p>Online Documents Offered</p>
                </div>
                <div class="section2_offers">
                    <ul>
                        <li>
                            <img src="Pictures/document.png" /><a href="#">Barangay Clearance</a>
                        </li>
                        <li>
                            <img src="Pictures/document.png" /><a href="#">Recidency Certification</a>
                        </li>
                        <li>
                            <img src="Pictures/document.png" /><a href="#">Barangay Business Permit</a>
                        </li>
                        <li>
                            <img src="Pictures/document.png" /><a href="#">Barangay Business Permit</a>
                        </li>
                        <li>
                            <img src="Pictures/document.png" /><a href="#">Barangay Business Permit</a>
                        </li>
                        <li>
                            <img src="Pictures/document.png" /><a href="#">Barangay Business Permit</a>
                        </li>
                    </ul>
                </div>
            </div>
        </section>

        <section class="section3" id="Roadmap">
            <div class="section3_container">
                <div class="section3_text">
                    <h1>Map</h1>
                </div>
                <iframe
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d30872.066998737584!2d121.0926814983206!3d14.712118440381309!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397ba3dc1451ead%3A0x53b134a948ab104d!2sBagong%20Silangan!5e0!3m2!1sen!2sph!4v1709884218632!5m2!1sen!2sph"
                    width="100%"
                    height="645"
                    style="border: 0"
                    allowfullscreen=""
                    loading="lazy"
                    referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
        </section>


        <section class="section1" id="About">
            <div class="section1_Container">
                <div class="section1_About">
                    <h1>About us</h1>
                </div>

                <div class="section1_Content">
                    <div class="kapitan-info">
                    <img src="Pictures/Kapitan.png" />
                    <p>ASODNVOASNDAOSNo</p>
                </div>  
                    <div class="section1_text">
                        <h3>Lorem, ipsum dolor sit amet consectetur adipisicing elit.
              Temporibus fugiat rem architecto ullam magnam fuga. Laboriosam
              doloribus, excepturi dolores ipsa natus sit deserunt deleniti
              perspiciatis aspernatur provident eius modi asperiores!
                        </h3>

                        <div class="section1_Box">
                            <div class="section1_box1">
                                <h3>Lorem ipsum dolor sit amet,</h3>
                                <p>
                                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Modi
                  officiis ex rerum eum enim quibusdam earum, iste fugiat quae!
                  Voluptates hic eum reiciendis ut sequi placeat pariatur
                  explicabo a dolores?
                                </p>
                            </div>

                            <div class="section1_box2">
                                <h3>Lorem ipsum dolor sit amet,</h3>
                                <p>
                                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Modi
                  officiis ex rerum eum enim quibusdam earum, iste fugiat quae!
                  Voluptates hic eum reiciendis ut sequi placeat pariatur
                  explicabo a dolores?
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <div class="footer">
            <div class="footer_container">
                <div class="footer_information">
                    <h4>Information</h4>
                    <ul>
                        <li><a href="#">Home</a></li>
                        <li><a href="#">About</a></li>
                        <li><a href="#">Our Services</a></li>
                        <li><a href="#">Service Map</a></li>
                    </ul>
                </div>
                <div class="footer_contacts">
                    <h4>Contacts</h4>
                    <ul>
                        <li>
                            <span>Mail:</span><a href="barangaybagongsilangan@gmail.com" target="_blank"> barangaybagongsilangan@gmail.com</a>
                        </li>
                        <li><span>Contact :</span> 63+ 2222 222 2222</li>
                        <li>
                            <span>Facebook:</span>
                            <a
                                href="https://www.facebook.com/brgybagongsilanganqc?mibextid=LQQJ4d" target="_blank">facebook.com/brgybagongsilanganqc</a>
                        </li>
                    </ul>
                </div>
                <div class="footer_location">
                    <h4>Our Location</h4>
                    <ul>
                        <li><span>Location :</span> A. Bonifacio St. Bagong Silangan, Quezon City, Philippines</a></li>
                    </ul>
                </div>
            </div>
        </div>

        <footer class="reserve">
            <h3>© 2024 | COPYRIGHT: BARANGAY BAGONG SILANGAN</h3>
        </footer>

        
    <section class="modal">
      <div class="modal__container">
         <div class="container">           
            <header>Signup Form</header>
            <div class="progress-bar">
                <div class="step">
                    <p>Name</p>
                    <div class="bullet">
                        <span>1</span>
                    </div>
                    <div class="check fas fa-check" style="color: white;"></div>
                </div>
                <div class="step">
                    <p>Address</p>
                    <div class="bullet">
                        <span>2</span>
                    </div>
                    <div class="check fas fa-check"></div>
                </div>
                <div class="step">
                    <p>Household</p>
                    <div class="bullet">
                        <span>3</span>
                    </div>
                    <div class="check fas fa-check"></div>
                </div>
                <div class="step">
                    <p>Identity</p>
                    <div class="bullet">
                        <span>4</span>
                    </div>
                    <div class="check fas fa-check"></div>
                </div>              
                <div class="step">
                    <p>Submit</p>
                    <div class="bullet">
                        <span>6</span>
                    </div>
                    <div class="check fas fa-check"></div>
                </div>
            </div>
            <div class="form-outer">
                <div action="#">
                    <div class="page slide-page">
                        <!-- First Step -->
                        <div class="title">Basic Info:</div>
                        <div class="field">
                            <div class="label">Fullname</div>
                            <input type="text" placeholder="Lastname"  required="required" />                           
                            <input type="text" placeholder="Firstname"  required="required" />
                            <input type="text" placeholder="Middlename" required="required" />
                            <input type="text" placeholder="Suffix" />                         
                        </div>
                        <div class="field">    
                            <div class="label">Gender</div>
                            <select   required="required" > 
                                <option disabled="disabled" selected="selected" value="">Select Gender</option>                              
                                <option >Male</option>
                                <option>Female</option> 
                                <option>Other</option>                              
                            </select>
                        </div>
                        <div class="field">                         
                                <div class="label">Citizenship</div>
                                <input type="text"   required="required" />                              
                        </div>
                        <div class="field">
                            <div class="label">Birtdate</div>
                            <input type="date"  required="required" />                                                                                              
                        </div>
                        <div class="field">
                            <div class="label">Place of Birth</div>
                            <input type="text"  required="required" />                                                                           
                        </div>
                        <div class="field">
                            <div class="label">Civil Status</div>
                            <select   required="required" > 
                                <option disabled="disabled" selected="selected" value="">Select Status</option>                              
                                <option >Single</option>
                                <option>Married</option>
                                <option>Widowed</option>                                                             
                              </select>                                                                      
                        </div>
                        <div class="field">
                            <div class="label">Contact Number</div>
                            <input type="number" oninput="this.value = this.value.slice(0, 11)"  required="required" />                                                                           
                        </div>
                        <div class="field">
                            
                            <button class="firstNext next">Next</button>
                        </div>
                    </div>
                    <!-- End -->
                    <!-- Second Step -->
                    <div class="page">
                        <div class="title">Address:</div>
                        <div class="field">
                            <div class="label">Street Name</div>
                            <input type="text"  required="required" />
                        </div>
                        <div class="field">
                            <div class="label">House Number</div>
                            <input type="Number"  required="required" />
                        </div> 
                        <div class="field">
                            <div class="label">Subdivision</div>
                            <input type="text"  required="required" />
                        </div>
                        <div class="field">
                            <div class="label">Purok</div>
                            <select   required="required" > 
                                <option disabled="disabled" selected="selected" value="">Select Purok</option>                              
                                <option >Purok 1</option>
                                <option>Purok 2</option>
                                <option>Purok 3</option>                                                             
                              </select>  
                        </div>
                        <div class="field">
                            <div class="label">Zip Code</div>
                            <input type="Number" required="required" />
                        </div>
                        
                        <div class="field btns">
                            <button class="prev-1 prev">Previous</button>
                            <button class="next-1 next">Next</button>
                        </div>
                         <!-- End -->
                    <!-- Third Step -->
                    </div>                   
                    <div class="page">
                        <div class="title">Family Background:</div>
                        <div class="field">
                            <div class="label">Spouse Fullname</div>
                            <input type="text" placeholder="Lastname"  required="required" />                           
                            <input type="text" placeholder="Firstname"  required="required" />
                            <input type="text" placeholder="Middlename" required="required" />
                            <input type="text" placeholder="Suffix"/>     
                        </div>
                        <div class="field">
                            <div class="label">Occupation</div>
                            <input type="text"  required="required" />                                                         
                        </div>
                        <div class="field">
                            <div class="label">Phone Number</div>
                            <input type="number" oninput="this.value = this.value.slice(0, 11)"  required="required" />                                                         
                        </div>
                        <div class="field">
                            <div class="label">Father Fullname</div>
                            <input type="text" placeholder="Lastname"  required="required" />                           
                            <input type="text" placeholder="Firstname"  required="required" />
                            <input type="text" placeholder="Middlename" required="required" />
                            <input type="text" placeholder="Suffix"/>     
                        </div>
                        <div class="field">
                            <div class="label">Mother Fullname</div>
                            <input type="text" placeholder="Lastname"  required="required" />                           
                            <input type="text" placeholder="Firstname"  required="required" />
                            <input type="text" placeholder="Middlename" required="required" />
                            <input type="text" placeholder="Suffix"/>     
                        </div>
                        <div class="field btns">
                            <button class="prev-4 prev">Previous</button>
                            <button class="next-4 next">Next</button>
                        </div>
                    </div>             
                    <div class="page">
                        <div class="title">Proof of Identity:</div>
                        
                            <div class="container">
                                <input type="file" id="file" accept="image/*" hidden/="hidden" />
                                <div class="img-area" data-img="">
                                    <i class='bx bxs-cloud-upload icon'></i>
                                    <h3>Upload Image</h3>
                                    <p>Image size must be less than <span>2MB</span></p>
                                </div>
                                <button class="select-image">Select Image</button>
                            </div>                     
                                             
                        <div class="field btns">
                            <button class="prev-4 prev">Previous</button>
                            <button class="next-4 next">Next</button>
                        </div>
                    </div>

                    <div class="page">
                        <div class="title">Account</div>
                        <div class="field">
                            <div class="label">Username</div>
                            <input type="text" required="required" />
                         
                        </div>
                        <div class="field">
                            <div class="label">Password</div>
                            <input type="password" required="required" />
                        </div>
                        <div class="field btns">
                            <button class="prev-5 prev">Previous</button>
                            <button class="submit">Submit</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div>
          <button class="modal__close">Close</button>
          <button class="modal__open">Create</button>
        </div>
      </div>
    </section>

    </form>

    <script>
            let slideIndex = 1;
            showSlides(slideIndex);

            function plusSlides(n) {
                showSlides(slideIndex += n);
            }

            function currentSlide(n) {
                showSlides(slideIndex = n);
            }

            function showSlides(n) {
                let i;
            let slides = document.getElementsByClassName("mySlides");
            let dots = document.getElementsByClassName("dot");
                if (n > slides.length) {slideIndex = 1}
            if (n < 1) {slideIndex = slides.length}
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
                }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
                }
            slides[slideIndex - 1].style.display = "block";
            dots[slideIndex - 1].className += " active";
        }

        initMultiStepForm();

        function initMultiStepForm() {
            const progressNumber = document.querySelectorAll(".step").length;
            const slidePage = document.querySelector(".slide-page");
            const submitBtn = document.querySelector(".submit");
            const progressText = document.querySelectorAll(".step p");
            const progressCheck = document.querySelectorAll(".step .check");
            const bullet = document.querySelectorAll(".step .bullet");
            const pages = document.querySelectorAll(".page");
            const nextButtons = document.querySelectorAll(".next");
            const prevButtons = document.querySelectorAll(".prev");
            const stepsNumber = pages.length;

            if (progressNumber !== stepsNumber) {
                console.warn(
                    "Error, number of steps in progress bar do not match number of pages"
                );
            }

            document.documentElement.style.setProperty("--stepNumber", stepsNumber);

            let current = 1;

            for (let i = 0; i < nextButtons.length; i++) {
                nextButtons[i].addEventListener("click", function (event) {
                    event.preventDefault();

                    inputsValid = validateInputs(this);
                    // inputsValid = true;

                    if (inputsValid) {
                        slidePage.style.marginLeft = `-${(100 / stepsNumber) * current
                            }%`;
                        bullet[current - 1].classList.add("active");
                        progressCheck[current - 1].classList.add("active");
                        progressText[current - 1].classList.add("active");
                        current += 1;

                        // Scroll to the top of the page
                        window.scrollTo(0, 0);
                    }
                });
            }


            for (let i = 0; i < prevButtons.length; i++) {
                prevButtons[i].addEventListener("click", function (event) {
                    event.preventDefault();
                    slidePage.style.marginLeft = `-${(100 / stepsNumber) * (current - 2)
                        }%`;
                    bullet[current - 2].classList.remove("active");
                    progressCheck[current - 2].classList.remove("active");
                    progressText[current - 2].classList.remove("active");
                    current -= 1;
                });
            }
            submitBtn.addEventListener("click", function () {
                bullet[current - 1].classList.add("active");
                progressCheck[current - 1].classList.add("active");
                progressText[current - 1].classList.add("active");
                current += 1;
                setTimeout(function () {
                    alert("Your Form Successfully Signed up");
                    location.reload();
                }, 800);
            });

            function validateInputs(ths) {
                let inputsValid = true;

                const inputs =
                    ths.parentElement.parentElement.querySelectorAll("input");
                for (let i = 0; i < inputs.length; i++) {
                    const valid = inputs[i].checkValidity();
                    if (!valid) {
                        inputsValid = false;
                        inputs[i].classList.add("invalid-input");
                    } else {
                        inputs[i].classList.remove("invalid-input");
                    }
                }
                return inputsValid;
            }

            // Additional code for image selection
           

        const openModal = document.querySelector('.sign-in');
        const modal = document.querySelector('.modal');
        const closeModal = document.querySelector('.modal__close');

        openModal.addEventListener('click', (e) => {
            e.preventDefault();
            modal.classList.add('modal--show');
        });

        closeModal.addEventListener('click', (e) => {
            e.preventDefault();
            modal.classList.remove('modal--show');
        });

   
    </script>

</body>
</html>
