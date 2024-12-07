<!DOCTYPE html>
<html>
<% HttpSession hs=request.getSession(false);
 if(hs !=null){
    hs.invalidate();
 }
    %>
<%@ include file="Header.jsp" %>
<head>
    <link rel="stylesheet" href="css/style.css">
</head>
<style>
body {
    margin: 0;
    padding: 0;
    font-family: 'Roboto', Arial, sans-serif;
    background: linear-gradient(to right, #74ebd5, #acb6e5);
    color: #333;
    animation: fadeIn 1.5s ease-in-out;
    
   
}
</style>

<!-- Registration Section -->
<div class="container-xxl py-5" >
    <div class="container">
        <h1 class="text-center mb-5 wow fadeInUp" data-wow-delay="0.1s" style="color: #333; font-weight: 600;">User Login</h1>
        
        <div class="row justify-content-center">
            <!-- Form Section -->
            <div class="col-lg-6">
                <div class="wow fadeInUp card p-4 shadow-lg rounded-3 border-0" data-wow-delay="0.3s" style="border: 2px solid #cfd8dc; background-color: #ffffff;">
                    <form action="CustomerLoginChk" >
                       

                        <div class="row g-3 mb-3">
                            <!-- Username Field -->
                            <div class="col-12">
                                <div class="d-flex align-items-center">
                                    <label for="unm" style="width: 100px; font-weight: 500; color: #555;">Username:</label>
                                    <input type="text" class="form-control rounded-3 shadow-sm" name="unm" placeholder="User Name" required style="margin-left: 10px;">
                                </div>
                            </div>
                        </div>

                        <div class="row g-3 mb-3">
                            <!-- Password Field -->
                            <div class="col-12">
                                <div class="d-flex align-items-center">
                                    <label for="psw" style="width: 100px; font-weight: 500; color: #555;">Password:</label>
                                    <input type="password" class="form-control rounded-3 shadow-sm" name="psw" placeholder="Password" required style="margin-left: 10px;">
                                </div>
                            </div>
                        </div>

                        <!-- Submit Button -->
                        <div class="col-12">
                            <button class="btn btn-primary w-100 py-3 shadow-sm" type="submit"
                                style="background: linear-gradient(135deg, #42a5f5 0%, #1976d2 100%); border: none; border-radius: 50px; transition: 0.3s;">
                                Login
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <!-- Map Section Below Form -->
        <!-- <div class="row justify-content-center mt-5">
            <div class="col-lg-8 wow fadeInUp" data-wow-delay="0.5s">
                <div class="card rounded-3 shadow-sm" style="overflow: hidden; border: 2px solid #cfd8dc;">
                    <iframe class="position-relative w-100 h-100"
                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3683284.031932616!2d75.8562467843054!3d22.71956811850582!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3962fcf38f5d400d%3A0xe4ba196e436dc2d2!2sIndore%2C%20Madhya%20Pradesh!5e0!3m2!1sen!2sin!4v1603794290143!5m2!1sen!2sin"
                        frameborder="0" style="min-height: 400px; border:0;" allowfullscreen="" aria-hidden="false"
                        tabindex="0"></iframe>
                </div>
            </div>
        </div> -->
    </div>
</div>

<%@ include file="Footer.jsp" %>

</body>
</html>
