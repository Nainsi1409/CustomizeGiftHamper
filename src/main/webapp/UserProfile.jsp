<!DOCTYPE html>
<%@page import ="java.util.List" %>
<html lang="en">
<% HttpSession hs2=request.getSession(false);
   List lst1=null;
   if(hs2 != null){
	   lst1=(List)hs2.getAttribute("user");
   }else{
	   response.sendRedirect("Login.jsp");
   }

%>
<%@include file="Header.jsp" %>
<form action="UpdateProfileServ" method="post">
        <!-- Contact Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <h1 class="text-center mb-5 wow fadeInUp" data-wow-delay="0.1s">New User</h1>
                <div class="row g-4">
                    <div class="col-12">
                        <div class="row gy-4">
                            <div class="col-md-4 wow fadeIn" data-wow-delay="0.1s">
                                
                            </div>
                            <div class="col-md-4 wow fadeIn" data-wow-delay="0.3s">
                                
                            </div>
                            <div class="col-md-4 wow fadeIn" data-wow-delay="0.5s">
                                
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <iframe class="position-relative rounded w-100 h-100"
                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3683284.031932616!2d75.8562467843054!3d22.71956811850582!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3962fcf38f5d400d%3A0xe4ba196e436dc2d2!2sIndore%2C%20Madhya%20Pradesh!5e0!3m2!1sen!2sin!4v1603794290143!5m2!1sen!2sin"
                            frameborder="0" style="min-height: 400px; border:0;" allowfullscreen="" aria-hidden="false"
                            tabindex="0"></iframe>
                    </div>
                    <div class="col-md-6">
                        <div class="wow fadeInUp" data-wow-delay="0.5s">
                            
                                <div class="row g-3">
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" name="name" value="<%=lst1.get(2) %>">
                                            <label for="name">Your Name</label>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                            <input type="email" class="form-control" name="email" value="<%=lst1.get(3) %>">
                                            <label for="email">Your Email</label>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" name="mobile" value="<%=lst1.get(4) %>">
                                            <label for="mobile">Mobile</label>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" name="city" value="<%=lst1.get(5) %>">
                                            <label for="city">City</label>
                                        </div>
                                    </div>
                                    
                                    
                                    <div class="col-12">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" name="unm" value="<%=lst1.get(6) %>">
                                            <label for="unm">User Name</label>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" name="psw" placeholder="Password">
                                            <label for="psw">Password</label>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <button class="btn btn-primary w-100 py-3" type="update">Update</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Contact End -->


        <%@include file="Footer.jsp" %>
</body>

</html>