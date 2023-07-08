<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
        integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
        integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
        crossorigin="anonymous"></script>

    <style>
        body {
            box-sizing: border-box;
        }

        header img {
            width: 100%;
            height: 400px;
        }

        .general {
            margin-top: 50px;
        }

        .notice h4 {
            font-size: larger;
            font-weight: bold;
            color: red;
        }

        .notice img {
            width: 100%;
        }

        .ccard {
            border: 1px solid blueviolet;
            border-radius: 10%;
            text-align: center;
            box-sizing: border-box;
            margin: 20px auto;
            width: 300px;



        }

        .ccard img {
            width: 80%
        }

        .ccard p {
            font-size: 2 rem;
        }

        footer{
            background-color: rgb(241, 81, 81);
            color: rgb(251, 241, 241);
        }
        footer a{
            color: aliceblue;
            text-decoration: none;
        }
    </style>

</head>
<body>
<%@include file="navbar.html" %>

 <header>
        <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">

                <div class="carousel-item active">
                    <img src="images/just-daisy-BlCJi8walFQ-unsplash.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>School building</h5>
                        <p>My school is most valuable school in the city</p>
                    </div>
                </div>

                <div class="carousel-item">
                    <img src="images/priscilla-du-preez-ggeZ9oyI-PE-unsplash.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>School Library</h5>
                        <p>In school their is big library</p>
                    </div>
                </div>


                <div class="carousel-item">
                    <img src="images/maxim-ivanov-9M9VYzjHYB8-unsplash.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>School playgroung</h5>
                        <p>School hs big campus.</p>
                    </div>
                </div>

            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls"
                data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls"
                data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </header>


    <div class="container general">
        <div class="row">
            <div class="col-md-4 notice ">

                <h4>Notice Board</h4>
                <marquee behavior="" direction="up" scrolldelay="250">
                    <a href="">
                        <p>Final Exam notification</p>
                    </a>
                    <a href="">
                        <p>Exam fee notification</p>
                    </a>
                    <a href="">
                        <p>Result Exam notification</p>
                    </a>
                    <a href="">
                        <p> Acadmic calender notification</p>
                    </a>
                    <a href="">
                        <p>Admission notification</p>
                    </a>
                </marquee>
            </div>

            <div class="col-md-4 notice ">
                <h4>Event</h4>
                <p style="color: blueviolet;">Comming soon!</p>
            </div>
            <div class="col-md-4 notice ">
                <img src="http://davsreshtha.com/File/4/AdvtImg_8ef3a99e-1369-4b2b-8f30-06e97127931d_Notice.jpg" alt="">
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-sm-4 hh">
                <div class="ccard">
                    <div>
                        <img src="images/pranav pic.png" alt="">
                    </div>
                    <div>
                        <h3>
                            Pranav kumar
                        </h3>
                        <h4>secretary of the school</h4>
                        <p>He had done MCA</p>
                    </div>
                </div>
            </div>

            <div class="col-sm-4 ">
                <div class="ccard">
                    <div>
                        <img src="images/alok.png" alt="">
                    </div>
                    <div>
                        <h3>
                            Alok kumar ranjan
                        </h3>
                        <h4>Director of the school</h4>
                        <p>He had done MCA</p>
                    </div>
                </div>
            </div>

            <div class="col-sm-4 ">
                <div class="ccard">
                    <div>
                        <img src="images/ankit.png" alt="">
                    </div>
                    <div>
                        <h3>
                            Ankit srivastva
                        </h3>
                        <h4>Priciple of the school</h4>
                        <p>He had done MCA</p>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <div><iframe
                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d56004.13769864605!2d77.12198495864868!3d28.68190979608835!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390d027628daa8a7%3A0xd8320130e43319e4!2sJunior%20Public%20School!5e0!3m2!1sen!2sin!4v1688840646046!5m2!1sen!2sin"
                        width="465" height="450" style="border:0;" allowfullscreen="" loading="lazy"
                        referrerpolicy="no-referrer-when-downgrade"></iframe></div>
            </div>

            <div class="col-sm-6">
                <div>
                    
                        <form class="" action="mailto:pranavkr175@gmail.com " method="post" enctype="text/plain">
                            <h3>Contact us</h3>
                            <table>
                                <tr>
                                    <td><label for="">Your name </label> </td>
                                    <td><input type="text" name="Name" value="" style="margin: 10px;"><br></td>
                                </tr>

                                <tr>
                                    <td><label for="">Your email </label> </td>
                                    <td><input type="email" name="email" value="" style="margin: 10px;"><br></td>
                                </tr>

                                <tr>
                                    <td><label for="">phone no. </label> </td>
                                    <td><input type="text" name="mob" value="" style="margin: 10px;"><br></td>
                                </tr>

                                <tr>
                                    <td><label for="">Your message </label> </td>
                                    <td><textarea name="message" id="" cols="50" rows="7"
                                            style="margin: 10px;"></textarea><br></td>
                                </tr>
                            </table>

                            <input type="submit" name="">


                        </form>
                    
                </div>
            </div>
        </div>

        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-sm-4">
                        <h5>Contact <i class="fa fa-usb" aria-hidden="true"></i></h5>
                        <address>
                            <em> DAV Public School <br>
                            East of Loni Road, Delhi - 110093

                            Ph: 011-22812391
                            E:mail davp@rediffmail.com  </em>    
                        </address>
                    </div>

                    <div class="col-sm-4">
                        <h5>Quick link</h5>
                        <ul type="none">
                            <a href=""><li>Online Registration form</li></a>
                            <a href=""><li>Result</li></a>
                            <a href=""><li>CIrcular</li></a>
                            <a href=""><li>Pay online fee</li></a>
                        </ul>
                        
                    </div>

                    <div class="col-sm-4" style="text-align: right;">
                        <h5>copyright 	&#169; 2023 </h5>
                        
                    </div>

                </div>
            </div>
        </footer>
</body>
</html>