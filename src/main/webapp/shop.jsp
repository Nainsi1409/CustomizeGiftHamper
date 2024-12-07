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

<div id="notification" style="display: none; padding: 10px; background-color: #4CAF50; color: white; position: fixed; top: 10px; right: 10px; z-index: 1000; border-radius: 5px; font-size: 16px;">
    Item added to cart!
</div>

  <!-- shop section -->

  <section class="shop_section layout_padding">
    <div class="container">
      <div class="heading_container heading_center">
        <h2>
          Latest Products
        </h2>
      </div>
      <div class="row">
        <div class="col-sm-6 col-md-4 col-lg-3">
          <div class="box">
            <a href="">
              <div class="img-box">
                <img src="images/p1.png" alt="">
              </div>
              <div class="detail-box">
                <h6>
                  Gold Ring
                </h6>
                <h6>Price<span>&#8377;200</span></h6>
                <div class="add-to-cart">
                <button onclick="addToCart('Gold Ring', 200)">Add to Cart</button>
                </div>
              </div>
              <div class="new">
                <span>
                  New
                </span>
              </div>
            </a>
          </div>
        </div>
        <div class="col-sm-6 col-md-4 col-lg-3">
          <div class="box">
            <a href="">
              <div class="img-box">
                <img src="images/p2.png" alt="">
              </div>
              <div class="detail-box">
                <h6>
                  Watch
                </h6>
                <h6>Price<span>&#8377;300 </span></h6>
                <div class="add-to-cart">
                <button onclick="addToCart('Watch', 300)">Add to Cart</button>
                </div>
              </div>
              <div class="new">
                <span>
                  New
                </span>
              </div>
            </a>
          </div>
        </div>
        <div class="col-sm-6 col-md-4 col-lg-3">
          <div class="box">
            <a href="">
              <div class="img-box">
                <img src="images/p3.png" alt="">
              </div>
              <div class="detail-box">
                <h6>
                  Teddy Bear
                </h6>
                <h6>Price<span>&#8377;110</span></h6>
                <div class="add-to-cart">
                <button onclick="addToCart('Teddy Bear', 110)">Add to Cart</button>
                </div>
              </div>
              <div class="new">
                <span>
                  New
                </span>
              </div>
            </a>
          </div>
        </div>
        <div class="col-sm-6 col-md-4 col-lg-3">
          <div class="box">
            <a href="">
              <div class="img-box">
                <img src="images/p4.png" alt="">
              </div>
              <div class="detail-box">
                <h6>
                  Rose Bouquet
                </h6>
                <h6>Price<span>&#8377;145</span></h6>
                <div class="add-to-cart">
                <button onclick="addToCart('Rose Bouquet', 145)">Add to Cart</button>
                </div>
              </div>
              <div class="new">
                <span>
                  New
                </span>
              </div>
            </a>
          </div>
        </div>
        <div class="col-sm-6 col-md-4 col-lg-3">
          <div class="box">
            <a href="">
              <div class="img-box">
                <img src="images/p5.png" alt="">
              </div>
              <div class="detail-box">
                <h6>
                  Small Bear
                </h6>
                <h6>Price<span>&#8377;195</span></h6>
                <div class="add-to-cart">
                 <button onclick="addToCart('Small Bear', 195)">Add to Cart</button>
               </div>
              </div>
              <div class="new">
                <span>
                  New
                </span>
              </div>
            </a>
          </div>
        </div>
        <div class="col-sm-6 col-md-4 col-lg-3">
          <div class="box">
            <a href="">
              <div class="img-box">
                <img src="images/p6.png" alt="">
              </div>
              <div class="detail-box">
                <h6>Flower Bouquet</h6>
                <h6>Price<span>&#8377;270</span></h6>
                <div class="add-to-cart">
                  <button onclick="addToCart('Flower Bouquet', 270)">Add to Cart</button>
                 </div>
              </div>
              <div class="new">
                <span>
                  New
                </span>
              </div>
            </a>
          </div>
        </div>
        <div class="col-sm-6 col-md-4 col-lg-3">
          <div class="box">
            <a href="">
              <div class="img-box">
                <img src="images/p7.png" alt="">
              </div>
              <div class="detail-box">
                <h6>
                  Titan Watch
                </h6>
                <h6>Price<span>&#8377;400</span></h6>
                <div class="add-to-cart">
                   <button onclick="addToCart('Titan Watch', 400)">Add to Cart</button>
                </div>
              </div>
              <div class="new">
                <span>
                  New
                </span>
              </div>
            </a>
          </div>
        </div>
        <div class="col-sm-6 col-md-4 col-lg-3">
          <div class="box">
            <a href="">
              <div class="img-box">
                <img src="images/p8.png" alt="">
              </div>
              <div class="detail-box">
                <h6>Diamond Ring</h6>
                <h6>Price<span>&#8377;450 </span></h6>
                <div class="add-to-cart">
                 <button onclick="addToCart('Diamond Ring', 450)">Add to Cart</button>
                  </div>
              </div>
              <div class="new">
                <span>
                  New
                </span>
              </div>
            </a>
          </div>
        </div>
      </div>
      <div class="btn-box">
        <a href="">
          View All Products
        </a>
      </div>
    </div>
  </section>

  <!-- end shop section -->

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
            </p>
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
            </p>
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
    
    
     <script src="js/cart.js"></script>
   <%@ include file="Footer.jsp" %>
</body>

</html>