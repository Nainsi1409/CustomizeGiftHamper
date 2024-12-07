<!DOCTYPE html>
<%@page import="java.util.List"%>
<html>
<%List lst=(List) session.getAttribute("user");
  String nm="";
  if(lst==null || lst.isEmpty()){
	  response.sendRedirect("Login.jsp");
	  
   }
   else{
     nm=(String)lst.get(1);
   }
%>
<%@ include file="Header.jsp" %>
<style>
  .map-responsive iframe {
    width: 100%;
    height: 400px;
    border: 0;
  }

  @media (max-width: 768px) {
    .map-responsive iframe {
      height: 300px; /* Adjust for smaller screens */
    }
  }

  @media (min-width: 1200px) {
    .map-responsive iframe {
      height: 500px; /* Adjust for larger screens */
    }
  }
  body {
    margin: 0;
    padding: 0;
    font-family: 'Roboto', Arial, sans-serif;
    background: linear-gradient(to right, #74ebd5, #acb6e5);
    color: #333;
    animation: fadeIn 1.5s ease-in-out;
    
   
}
</style>


  <!-- contact section -->
<section class="contact_section layout_padding">
    <div class="container px-0">
      <div class="heading_container ">
        <h2 class="">
          Contact Us
        </h2>
      </div>
    </div>
    <div class="container container-bg">
      <div class="row">
        <div class="col-lg-7 col-md-6 px-0">
          <div class="map_container">
            <div class="map-responsive">
              <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3683284.031932616!2d75.8562467843054!3d22.71956811850582!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3962fcf38f5d400d%3A0xe4ba196e436dc2d2!2sIndore%2C%20Madhya%20Pradesh!5e0!3m2!1sen!2sin!4v1603794290143!5m2!1sen!2sin" allowfullscreen></iframe>
            </div>
          </div>
        </div>
        <div class="col-md-6 col-lg-5 px-0">
          <form action="#">
            <div>
              <input type="text" placeholder="Name" />
            </div>
            <div>
              <input type="email" placeholder="Email" />
            </div>
            <div>
              <input type="text" placeholder="Phone" />
            </div>
            <div>
              <input type="text" class="message-box" placeholder="Message" />
            </div>
            <div class="d-flex ">
              <button>
                SEND
              </button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </section>

  <!-- end contact section -->

  <!-- info section -->

  <section class="info_section  layout_padding2-top">
    <div class="social_container">
      <div class="social_box">
        <a href="">
          <i class="fa fa-facebook" aria-hidden="true"></i>
        </a>
        <a href="">
          <i class="fa fa-twitter" aria-hidden="true"></i>
        </a>
        <a href="">
          <i class="fa fa-instagram" aria-hidden="true"></i>
        </a>
        <a href="">
          <i class="fa fa-youtube" aria-hidden="true"></i>
        </a>
      </div>
    </div>
    <div class="info_container ">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-lg-3">
            <h6>
              ABOUT US
            </h6>
            <p>
              Allows users to create personalized hampers by selecting items of their choice for any occasion. It offers pre-curated options, build-your-own hampers, and same-day delivery to make gifting convenient and special.            </p>
          </div>
          <div class="col-md-6 col-lg-3">
            <div class="info_form ">
              <h5>
                Newsletter
              </h5>
              <form action="#">
                <input type="email" placeholder="Enter your email">
                <button>
                  Subscribe
                </button>
              </form>
            </div>
          </div>
          <div class="col-md-6 col-lg-3">
            <h6>
              NEED HELP
            </h6>
            <p>
              Helps users by offering a seamless and personalized gifting experience. It saves time, provides creative gift ideas, and ensures thoughtful presents that cater to the recipient's preferences, making every occasion memorable and special.            </p>
          </div>
          <div class="col-md-6 col-lg-3">
            <h6>
              CONTACT US
            </h6>
            <div class="info_link-box">
              <a href="">
                <i class="fa fa-map-marker" aria-hidden="true"></i>
                <span> davv,campus </span>
              </a>
              <a href="">
                <i class="fa fa-phone" aria-hidden="true"></i>
                <span>+91 6260101928</span>
                <span>+91 9098237877</span>
              </a>
              <a href="">
                <i class="fa fa-envelope" aria-hidden="true"></i>
                <span> nainsiPranshi@gmail.com</span>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <%@ include file="Footer.jsp" %>

</body>

</html>