<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User-Sign-in.aspx.cs" Inherits="Barangay_Management_system.User_Sign_in" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign in</title>
    <style>
        @import url("https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap");
* {
    margin: 0;
    padding: 0;
    outline: none;
    font-family: "Poppins", sans-serif;
}
:root {
    --primary: #333;
    --secondary: #333;
    --errorColor: red;
    --stepNumber: 6;
    --containerWidth: 900px;   
    --inputBorderColor: lightgray;
}

body {
    display: flex;
    align-items: center;
    justify-content: center;
    min-height: 100vh;
    overflow-x: hidden;
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
.form .page .field .label {
    position: absolute;
    top: -30px;
    font-weight: 500;
}
label{
    position: static;
}
.form .page .field input {
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
.form .page .field input.invalid-input {
    border-color: var(--errorColor);
}
.form .page .field select {
    width: 100%;
    padding-left: 10px;
    font-size: 17px;
    font-weight: 500;
}
.form .page .field button {
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
.form .page .field button:hover {
    background: #000;
}
.form .page .btns button {
    margin-top: -20px !important;
}
.form .page .btns button.prev {
    margin-right: 3px;
    font-size: 17px;
}
.form .page .btns button.next {
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

    </style>
</head>
<body>
    <form id="form1" runat="server">
        
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
                <div class="form" action="#">
                    <div class="page slide-page">
                        <!-- First Step -->
                        <div class="title">Basic Info:</div>
                        <div class="field">
                            <div class="label">Fullname</div>
                            <input type="text" placeholder="Lastname" required />                           
                            <input type="text" placeholder="Firstname" required />
                            <input type="text" placeholder="Middlename"required />
                            <input type="text" placeholder="Suffix" />                         
                        </div>
                        <div class="field">    
                            <div class="label">Gender</div>
                            <select  required > 
                                <option disabled selected value>Select Gender</option>                              
                                <option >Male</option>
                                <option>Female</option> 
                                <option>Other</option>                              
                            </select>
                        </div>
                        <div class="field">                         
                                <div class="label">Citizenship</div>
                                <input type="text"  required />                              
                        </div>
                        <div class="field">
                            <div class="label">Birtdate</div>
                            <input type="date" required />                                                                                              
                        </div>
                        <div class="field">
                            <div class="label">Place of Birth</div>
                            <input type="text" required />                                                                           
                        </div>
                        <div class="field">
                            <div class="label">Civil Status</div>
                            <select  required > 
                                <option disabled selected value>Select Status</option>                              
                                <option >Single</option>
                                <option>Married</option>
                                <option>Widowed</option>                                                             
                              </select>                                                                      
                        </div>
                        <div class="field">
                            <div class="label">Contact Number</div>
                            <input type="number" oninput="this.value = this.value.slice(0, 11)" required />                                                                           
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
                            <input type="text" required />
                        </div>
                        <div class="field">
                            <div class="label">House Number</div>
                            <input type="Number" required />
                        </div> 
                        <div class="field">
                            <div class="label">Subdivision</div>
                            <input type="text" required />
                        </div>
                        <div class="field">
                            <div class="label">Purok</div>
                            <select  required > 
                                <option disabled selected value>Select Purok</option>                              
                                <option >Purok 1</option>
                                <option>Purok 2</option>
                                <option>Purok 3</option>                                                             
                              </select>  
                        </div>
                        <div class="field">
                            <div class="label">Zip Code</div>
                            <input type="Number" required />
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
                            <input type="text" placeholder="Lastname" required />                           
                            <input type="text" placeholder="Firstname" required />
                            <input type="text" placeholder="Middlename"required />
                            <input type="text" placeholder="Suffix"/>     
                        </div>
                        <div class="field">
                            <div class="label">Occupation</div>
                            <input type="text" required />                                                         
                        </div>
                        <div class="field">
                            <div class="label">Phone Number</div>
                            <input type="number" oninput="this.value = this.value.slice(0, 11)" required />                                                         
                        </div>
                        <div class="field">
                            <div class="label">Father Fullname</div>
                            <input type="text" placeholder="Lastname" required />                           
                            <input type="text" placeholder="Firstname" required />
                            <input type="text" placeholder="Middlename"required />
                            <input type="text" placeholder="Suffix"/>     
                        </div>
                        <div class="field">
                            <div class="label">Mother Fullname</div>
                            <input type="text" placeholder="Lastname" required />                           
                            <input type="text" placeholder="Firstname" required />
                            <input type="text" placeholder="Middlename"required />
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
                                <input type="file" id="file" accept="image/*" hidden>
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
                            <input type="text" required />
                         
                        </div>
                        <div class="field">
                            <div class="label">Password</div>
                            <input type="password" required />
                        </div>
                        <div class="field btns">
                            <button class="prev-5 prev">Previous</button>
                            <button class="submit">Submit</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script>
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
            const selectImage = document.querySelector('.select-image');
            const inputFile = document.querySelector('#file');
            const imgArea = document.querySelector('.img-area');

            selectImage.addEventListener('click', function () {
                inputFile.click();
            });

            inputFile.addEventListener('change', function () {
                const image = this.files[0];
                if (image.size < 2000000) {
                    const reader = new FileReader();
                    reader.onload = () => {
                        const allImg = imgArea.querySelectorAll('img');
                        allImg.forEach(item => item.remove());
                        const imgUrl = reader.result;
                        const img = document.createElement('img');
                        img.src = imgUrl;
                        imgArea.appendChild(img);
                        imgArea.classList.add('active');
                        imgArea.dataset.img = image.name;
                    };
                    reader.readAsDataURL(image);
                } else {
                    alert("Image size more than 2MB");
                }
            });
        }

    </script>
</body>
    
</html>
