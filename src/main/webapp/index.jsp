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

 <div id="notification" style="display: none; padding: 10px; background-color: #4CAF50; color: white; position: fixed; top: 10px; right: 10px; z-index: 1000; border-radius: 5px; font-size: 16px;">
    Item added to cart!
</div>

<%@include file="Header.jsp" %>
    <!-- slider section -->

    <section class="slider_section">
      <div class="slider_container">
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
          <div class="carousel-inner">
            <div class="carousel-item active">
              <div class="container-fluid">
                <div class="row">
                  <div class="col-md-7">
                    <div class="detail-box">
                      <h1>
                        Welcome To Our <br>
                        Gift Shop
                      </h1>
                      <p>
                        Plant the seeds of happiness with every customized gift.
                      </p>
                      <a href="">
                        Contact Us
                      </a>
                    </div>
                  </div>
                  <div class="col-md-5 ">
                    <div class="img-box">
                      <img src="images/Slider_img1.png" alt="" />
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="carousel-item ">
              <div class="container-fluid">
                <div class="row">
                  <div class="col-md-7">
                    <div class="detail-box">
                      <h1>
                       Special day made wholesome with our thoughtful gifts. <br>
                       
                      </h1>
                      
                      <a href="">
                        Contact Us
                      </a>
                    </div>
                  </div>
                  <div class="col-md-5 ">
                    <div class="img-box">
                      <img src="images/Slider_img1.png" alt="" />
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="carousel-item ">
              <div class="container-fluid">
                <div class="row">
                  <div class="col-md-7">
                    <div class="detail-box">
                      <h1>
                        Every branch tells a story, every gift spreads love <br>
                       
                      </h1>
                      
                      <a href="">
                        Contact Us
                      </a>
                    </div>
                  </div>
                  <div class="col-md-5 ">
                    <div class="img-box">
                      <img src="images/Slider_img1.png" alt="" />
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel_btn-box">
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
              <i class="fa fa-arrow-left" aria-hidden="true"></i>
              <span class="sr-only">Previous</span>
            </a>
            <img src="images/line.png" alt="" />
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
              <i class="fa fa-arrow-right" aria-hidden="true"></i>
              <span class="sr-only">Next</span>
            </a>
          </div>
        </div>
      </div>
    </section>

    <!-- end slider section -->
  </div>
  <!-- end hero area -->

  <!-- shop section -->

  <section class="shop_section layout_padding">
    <div class="container">
        <div class="heading_container heading_center">
            <h2>
                Latest Products
            </h2>
        </div>
        <div class="row">
            <!-- Product 1 -->
            <div class="col-sm-6 col-md-4 col-lg-3">
                <div class="box">
                    <a href="">
                        <div class="img-box">
                            <img src="images/p1.png" alt="">
                        </div>
                        <div class="detail-box">
                            <h6>Gold Ring</h6>
                            <h6>Price <span>&#8377;200</span></h6>
                        </div>
                        <div class="new">
                            <span>New</span>
                        </div>
                    </a>
                    <div class="add-to-cart">
                        <button onclick="addToCart('Gold Ring', 200)">Add to Cart</button>
                    </div>
                </div>
            </div>

            <!-- Product 2 -->
            <div class="col-sm-6 col-md-4 col-lg-3">
                <div class="box">
                    <a href="">
                        <div class="img-box">
                            <img src="images/p2.png" alt="">
                        </div>
                        <div class="detail-box">
                            <h6>Watch</h6>
                            <h6>Price <span>&#8377;300</span></h6>
                        </div>
                        <div class="new">
                            <span>New</span>
                        </div>
                    </a>
                    <div class="add-to-cart">
                        <button onclick="addToCart('Watch', 300)">Add to Cart</button>
                    </div>
                </div>
            </div>

            <!-- Product 3 -->
            <div class="col-sm-6 col-md-4 col-lg-3">
                <div class="box">
                    <a href="">
                        <div class="img-box">
                            <img src="images/p3.png" alt="">
                        </div>
                        <div class="detail-box">
                            <h6>Teddy Bear</h6>
                            <h6>Price <span>&#8377;110</span></h6>
                        </div>
                        <div class="new">
                            <span>New</span>
                        </div>
                    </a>
                    <div class="add-to-cart">
                        <button onclick="addToCart('Teddy Bear', 110)">Add to Cart</button>
                    </div>
                </div>
            </div>

            <!-- Product 4 -->
            <div class="col-sm-6 col-md-4 col-lg-3">
                <div class="box">
                    <a href="">
                        <div class="img-box">
                            <img src="images/p4.png" alt="">
                        </div>
                        <div class="detail-box">
                            <h6>Rose Bouquet</h6>
                            <h6>Price <span>&#8377;145</span></h6>
                        </div>
                        <div class="new">
                            <span>New</span>
                        </div>
                    </a>
                    <div class="add-to-cart">
                        <button onclick="addToCart('Rose Bouquet', 145)">Add to Cart</button>
                    </div>
                </div>
            </div>

            <!-- Product 5 -->
            <div class="col-sm-6 col-md-4 col-lg-3">
                <div class="box">
                    <a href="">
                        <div class="img-box">
                            <img src="images/p5.png" alt="">
                        </div>
                        <div class="detail-box">
                            <h6>Small Bear</h6>
                            <h6>Price <span>&#8377;95</span></h6>
                        </div>
                        <div class="new">
                            <span>New</span>
                        </div>
                    </a>
                    <div class="add-to-cart">
                        <button onclick="addToCart('Small Bear', 95)">Add to Cart</button>
                    </div>
                </div>
            </div>

            <!-- Product 6 -->
            <div class="col-sm-6 col-md-4 col-lg-3">
                <div class="box">
                    <a href="">
                        <div class="img-box">
                            <img src="images/p6.png" alt="">
                        </div>
                        <div class="detail-box">
                            <h6>Flower Bouquet</h6>
                            <h6>Price <span>&#8377;70</span></h6>
                        </div>
                        <div class="new">
                            <span>New</span>
                        </div>
                    </a>
                    <div class="add-to-cart">
                        <button onclick="addToCart('Flower Bouquet', 70)">Add to Cart</button>
                    </div>
                </div>
            </div>

            <!-- Product 7 -->
            <div class="col-sm-6 col-md-4 col-lg-3">
                <div class="box">
                    <a href="">
                        <div class="img-box">
                            <img src="images/p7.png" alt="">
                        </div>
                        <div class="detail-box">
                            <h6>Titan Watch</h6>
                            <h6>Price <span>&#8377;400</span></h6>
                        </div>
                        <div class="new">
                            <span>New</span>
                        </div>
                    </a>
                    <div class="add-to-cart">
                        <button onclick="addToCart('Titan Watch', 400)">Add to Cart</button>
                    </div>
                </div>
            </div>

            <!-- Product 8 -->
            <div class="col-sm-6 col-md-4 col-lg-3">
                <div class="box">
                    <a href="">
                        <div class="img-box">
                            <img src="images/p8.png" alt="">
                        </div>
                        <div class="detail-box">
                            <h6>Diamond Ring</h6>
                            <h6>Price <span>&#8377;450</span></h6>
                        </div>
                        <div class="new">
                            <span>New</span>
                        </div>
                    </a>
                    <div class="add-to-cart">
                        <button onclick="addToCart('Diamond Ring', 450)">Add to Cart</button>
                    </div>
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



  <!-- saving section -->

  <section class="saving_section ">
    <div class="box">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-6">
            <div class="img-box">
              <img src="images/saving_img1.png" alt="">
            </div>
          </div>
          <div class="col-lg-6">
            <div class="detail-box">
              <div class="heading_container">
                <h2>
                  Best Savings on <br>
                  new arrivals
                </h2>
              </div>
              <p>
                Celebrate new beginnings with unbeatable prices!
              </p>
              <div class="btn-box">
                <a href="shop.jsp" class="btn1">
                  Buy Now
                </a>
                <a href="shop.jsp" class="btn2">
                  See More
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end saving section -->

  <!-- why section -->

  <section class="why_section layout_padding">
    <div class="container">
      <div class="heading_container heading_center">
        <h2>
          Why Shop With Us
        </h2>
      </div>
      <div class="row">
        <div class="col-md-4">
          <div class="box ">
            <div class="img-box">
              <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 512 512" style="enable-background:new 0 0 512 512;" xml:space="preserve">
                <g>
                  <g>
                    <path d="M476.158,231.363l-13.259-53.035c3.625-0.77,6.345-3.986,6.345-7.839v-8.551c0-18.566-15.105-33.67-33.67-33.67h-60.392
                 V110.63c0-9.136-7.432-16.568-16.568-16.568H50.772c-9.136,0-16.568,7.432-16.568,16.568V256c0,4.427,3.589,8.017,8.017,8.017
                 c4.427,0,8.017-3.589,8.017-8.017V110.63c0-0.295,0.239-0.534,0.534-0.534h307.841c0.295,0,0.534,0.239,0.534,0.534v145.372
                 c0,4.427,3.589,8.017,8.017,8.017c4.427,0,8.017-3.589,8.017-8.017v-9.088h94.569c0.008,0,0.014,0.002,0.021,0.002
                 c0.008,0,0.015-0.001,0.022-0.001c11.637,0.008,21.518,7.646,24.912,18.171h-24.928c-4.427,0-8.017,3.589-8.017,8.017v17.102
                 c0,13.851,11.268,25.119,25.119,25.119h9.086v35.273h-20.962c-6.886-19.883-25.787-34.205-47.982-34.205
                 s-41.097,14.322-47.982,34.205h-3.86v-60.393c0-4.427-3.589-8.017-8.017-8.017c-4.427,0-8.017,3.589-8.017,8.017v60.391H192.817
                 c-6.886-19.883-25.787-34.205-47.982-34.205s-41.097,14.322-47.982,34.205H50.772c-0.295,0-0.534-0.239-0.534-0.534v-17.637
                 h34.739c4.427,0,8.017-3.589,8.017-8.017s-3.589-8.017-8.017-8.017H8.017c-4.427,0-8.017,3.589-8.017,8.017
                 s3.589,8.017,8.017,8.017h26.188v17.637c0,9.136,7.432,16.568,16.568,16.568h43.304c-0.002,0.178-0.014,0.355-0.014,0.534
                 c0,27.996,22.777,50.772,50.772,50.772s50.772-22.776,50.772-50.772c0-0.18-0.012-0.356-0.014-0.534h180.67
                 c-0.002,0.178-0.014,0.355-0.014,0.534c0,27.996,22.777,50.772,50.772,50.772c27.995,0,50.772-22.776,50.772-50.772
                 c0-0.18-0.012-0.356-0.014-0.534h26.203c4.427,0,8.017-3.589,8.017-8.017v-85.511C512,251.989,496.423,234.448,476.158,231.363z
                  M375.182,144.301h60.392c9.725,0,17.637,7.912,17.637,17.637v0.534h-78.029V144.301z M375.182,230.881v-52.376h71.235
                 l13.094,52.376H375.182z M144.835,401.904c-19.155,0-34.739-15.583-34.739-34.739s15.584-34.739,34.739-34.739
                 c19.155,0,34.739,15.583,34.739,34.739S163.99,401.904,144.835,401.904z M427.023,401.904c-19.155,0-34.739-15.583-34.739-34.739
                 s15.584-34.739,34.739-34.739c19.155,0,34.739,15.583,34.739,34.739S446.178,401.904,427.023,401.904z M495.967,299.29h-9.086
                 c-5.01,0-9.086-4.076-9.086-9.086v-9.086h18.171V299.29z" />
                  </g>
                </g>
                <g>
                  <g>
                    <path d="M144.835,350.597c-9.136,0-16.568,7.432-16.568,16.568c0,9.136,7.432,16.568,16.568,16.568
                 c9.136,0,16.568-7.432,16.568-16.568C161.403,358.029,153.971,350.597,144.835,350.597z" />
                  </g>
                </g>
                <g>
                  <g>
                    <path d="M427.023,350.597c-9.136,0-16.568,7.432-16.568,16.568c0,9.136,7.432,16.568,16.568,16.568
                 c9.136,0,16.568-7.432,16.568-16.568C443.591,358.029,436.159,350.597,427.023,350.597z" />
                  </g>
                </g>
                <g>
                  <g>
                    <path d="M332.96,316.393H213.244c-4.427,0-8.017,3.589-8.017,8.017s3.589,8.017,8.017,8.017H332.96
                 c4.427,0,8.017-3.589,8.017-8.017S337.388,316.393,332.96,316.393z" />
                  </g>
                </g>
                <g>
                  <g>
                    <path d="M127.733,282.188H25.119c-4.427,0-8.017,3.589-8.017,8.017s3.589,8.017,8.017,8.017h102.614
                 c4.427,0,8.017-3.589,8.017-8.017S132.16,282.188,127.733,282.188z" />
                  </g>
                </g>
                <g>
                  <g>
                    <path d="M278.771,173.37c-3.13-3.13-8.207-3.13-11.337,0.001l-71.292,71.291l-37.087-37.087c-3.131-3.131-8.207-3.131-11.337,0
                 c-3.131,3.131-3.131,8.206,0,11.337l42.756,42.756c1.565,1.566,3.617,2.348,5.668,2.348s4.104-0.782,5.668-2.348l76.96-76.96
                 C281.901,181.576,281.901,176.501,278.771,173.37z" />
                  </g>
                </g>
                <g>
                </g>
                <g>
                </g>
                <g>
                </g>
                <g>
                </g>
                <g>
                </g>
                <g>
                </g>
                <g>
                </g>
                <g>
                </g>
                <g>
                </g>
                <g>
                </g>
                <g>
                </g>
                <g>
                </g>
                <g>
                </g>
                <g>
                </g>
                <g>
                </g>
              </svg>
            </div>
            <div class="detail-box">
              <h5>
                Fast Delivery
              </h5>
              <p>
                Your gifts, delivered faster than your excitement!
              </p>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="box ">
            <div class="img-box">
              <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 490.667 490.667" style="enable-background:new 0 0 490.667 490.667;" xml:space="preserve">
                <g>
                  <g>
                    <path d="M138.667,192H96c-5.888,0-10.667,4.779-10.667,10.667V288c0,5.888,4.779,10.667,10.667,10.667s10.667-4.779,10.667-10.667
                 v-74.667h32c5.888,0,10.667-4.779,10.667-10.667S144.555,192,138.667,192z" />
                  </g>
                </g>
                <g>
                  <g>
                    <path d="M117.333,234.667H96c-5.888,0-10.667,4.779-10.667,10.667S90.112,256,96,256h21.333c5.888,0,10.667-4.779,10.667-10.667
                 S123.221,234.667,117.333,234.667z" />
                  </g>
                </g>
                <g>
                  <g>
                    <path d="M245.333,0C110.059,0,0,110.059,0,245.333s110.059,245.333,245.333,245.333s245.333-110.059,245.333-245.333
                 S380.608,0,245.333,0z M245.333,469.333c-123.52,0-224-100.48-224-224s100.48-224,224-224s224,100.48,224,224
                 S368.853,469.333,245.333,469.333z" />
                  </g>
                </g>
                <g>
                  <g>
                    <path d="M386.752,131.989C352.085,88.789,300.544,64,245.333,64s-106.752,24.789-141.419,67.989
                 c-3.691,4.587-2.965,11.307,1.643,14.997c4.587,3.691,11.307,2.965,14.976-1.643c30.613-38.144,76.096-60.011,124.8-60.011
                 s94.187,21.867,124.779,60.011c2.112,2.624,5.205,3.989,8.32,3.989c2.368,0,4.715-0.768,6.677-2.347
                 C389.717,143.296,390.443,136.576,386.752,131.989z" />
                  </g>
                </g>
                <g>
                  <g>
                    <path d="M376.405,354.923c-4.224-4.032-11.008-3.861-15.061,0.405c-30.613,32.235-71.808,50.005-116.011,50.005
                 s-85.397-17.771-115.989-50.005c-4.032-4.309-10.816-4.437-15.061-0.405c-4.309,4.053-4.459,10.816-0.405,15.083
                 c34.667,36.544,81.344,56.661,131.456,56.661s96.789-20.117,131.477-56.661C380.864,365.739,380.693,358.976,376.405,354.923z" />
                  </g>
                </g>
                <g>
                  <g>
                    <path d="M206.805,255.723c15.701-2.027,27.861-15.488,27.861-31.723c0-17.643-14.357-32-32-32h-21.333
                 c-5.888,0-10.667,4.779-10.667,10.667v42.581c0,0.043,0,0.107,0,0.149V288c0,5.888,4.779,10.667,10.667,10.667
                 S192,293.888,192,288v-16.917l24.448,24.469c2.091,2.069,4.821,3.115,7.552,3.115c2.731,0,5.461-1.045,7.531-3.136
                 c4.16-4.16,4.16-10.923,0-15.083L206.805,255.723z M192,234.667v-21.333h10.667c5.867,0,10.667,4.779,10.667,10.667
                 s-4.8,10.667-10.667,10.667H192z" />
                  </g>
                </g>
                <g>
                  <g>
                    <path d="M309.333,277.333h-32v-64h32c5.888,0,10.667-4.779,10.667-10.667S315.221,192,309.333,192h-42.667
                 c-5.888,0-10.667,4.779-10.667,10.667V288c0,5.888,4.779,10.667,10.667,10.667h42.667c5.888,0,10.667-4.779,10.667-10.667
                 S315.221,277.333,309.333,277.333z" />
                  </g>
                </g>
                <g>
                  <g>
                    <path d="M288,234.667h-21.333c-5.888,0-10.667,4.779-10.667,10.667S260.779,256,266.667,256H288
                 c5.888,0,10.667-4.779,10.667-10.667S293.888,234.667,288,234.667z" />
                  </g>
                </g>
                <g>
                  <g>
                    <path d="M394.667,277.333h-32v-64h32c5.888,0,10.667-4.779,10.667-10.667S400.555,192,394.667,192H352
                 c-5.888,0-10.667,4.779-10.667,10.667V288c0,5.888,4.779,10.667,10.667,10.667h42.667c5.888,0,10.667-4.779,10.667-10.667
                 S400.555,277.333,394.667,277.333z" />
                  </g>
                </g>
                <g>
                  <g>
                    <path d="M373.333,234.667H352c-5.888,0-10.667,4.779-10.667,10.667S346.112,256,352,256h21.333
                 c5.888,0,10.667-4.779,10.667-10.667S379.221,234.667,373.333,234.667z" />
                  </g>
                </g>
                <g>
                </g>
                <g>
                </g>
                <g>
                </g>
                <g>
                </g>
                <g>
                </g>
                <g>
                </g>
                <g>
                </g>
                <g>
                </g>
                <g>
                </g>
                <g>
                </g>
                <g>
                </g>
                <g>
                </g>
                <g>
                </g>
                <g>
                </g>
                <g>
                </g>
              </svg>
            </div>
            <div class="detail-box">
              <h5>
                Free Shiping
              </h5>
              <p>
                We deliver happiness, not hidden charges!
              </p>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="box ">
            <div class="img-box">
              <svg id="_30_Premium" height="512" viewBox="0 0 512 512" width="512" xmlns="http://www.w3.org/2000/svg" data-name="30_Premium">
                <g id="filled">
                  <path d="m252.92 300h3.08a124.245 124.245 0 1 0 -4.49-.09c.075.009.15.023.226.03.394.039.789.06 1.184.06zm-96.92-124a100 100 0 1 1 100 100 100.113 100.113 0 0 1 -100-100z" />
                  <path d="m447.445 387.635-80.4-80.4a171.682 171.682 0 0 0 60.955-131.235c0-94.841-77.159-172-172-172s-172 77.159-172 172c0 73.747 46.657 136.794 112 161.2v158.8c-.3 9.289 11.094 15.384 18.656 9.984l41.344-27.562 41.344 27.562c7.574 5.4 18.949-.7 18.656-9.984v-70.109l46.6 46.594c6.395 6.789 18.712 3.025 20.253-6.132l9.74-48.724 48.725-9.742c9.163-1.531 12.904-13.893 6.127-20.252zm-339.445-211.635c0-81.607 66.393-148 148-148s148 66.393 148 148-66.393 148-148 148-148-66.393-148-148zm154.656 278.016a12 12 0 0 0 -13.312 0l-29.344 19.562v-129.378a172.338 172.338 0 0 0 72 0v129.38zm117.381-58.353a12 12 0 0 0 -9.415 9.415l-6.913 34.58-47.709-47.709v-54.749a171.469 171.469 0 0 0 31.467-15.6l67.151 67.152z" />
                  <path d="m287.62 236.985c8.349 4.694 19.251-3.212 17.367-12.618l-5.841-35.145 25.384-25c7.049-6.5 2.89-19.3-6.634-20.415l-35.23-5.306-15.933-31.867c-4.009-8.713-17.457-8.711-21.466 0l-15.933 31.866-35.23 5.306c-9.526 1.119-13.681 13.911-6.634 20.415l25.384 25-5.841 35.145c-1.879 9.406 9 17.31 17.367 12.618l31.62-16.414zm-53-32.359 2.928-17.615a12 12 0 0 0 -3.417-10.516l-12.721-12.531 17.658-2.66a12 12 0 0 0 8.947-6.5l7.985-15.971 7.985 15.972a12 12 0 0 0 8.947 6.5l17.658 2.66-12.723 12.535a12 12 0 0 0 -3.417 10.516l2.928 17.615-15.849-8.231a12 12 0 0 0 -11.058 0z" />
                </g>
              </svg>
            </div>
            <div class="detail-box">
              <h5>
                Best Quality
              </h5>
              <p>
                When it comes to gifts, we settle for nothing but the finest.
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end why section -->


  <!-- gift section -->

  <section class="gift_section layout_padding-bottom">
    <div class="box ">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-5">
            <div class="img_container">
              <div class="img-box">
                <img src="images/gifts.png" alt="">
              </div>
            </div>
          </div>
          <div class="col-md-7">
            <div class="detail-box">
              <div class="heading_container">
                <h2>
                  Gifts for your <br>
                  loved ones
                </h2>
              </div>
              <p>
                Celebrate your love with a gift as unique as they are
              </p>
              <div class="btn-box">
                <a href="#" class="btn1">
                  Buy Now
                </a>
                <a href="#" class="btn2">
                  See More
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>


  <!-- end gift section -->


  <!-- contact section -->

  <section class="contact_section ">
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
              <iframe src="https://www.google.com/maps/embed/v1/place?key=AIzaSyA0s1a7phLN0iaD6-UE7m4qP-z21pH0eSc&q=Eiffel+Tower+Paris+France" width="600" height="300" frameborder="0" style="border:0; width: 100%; height:100%" allowfullscreen></iframe>
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

  <!-- client section -->
  <section class="client_section layout_padding">
    <div class="container">
      <div class="heading_container heading_center">
        <h2>
          Testimonial
        </h2>
      </div>
    </div>
    <div class="container px-0">
      <div id="customCarousel2" class="carousel  carousel-fade" data-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="box">
              <div class="client_info">
                <div class="client_name">
                  <h5>
                    Gurpreet kaur khanuja
                  </h5>
                  
                </div>
                <i class="fa fa-quote-left" aria-hidden="true"></i>
              </div>
              <p>
                "The perfect gift for my anniversary! The customization options made it so special. Delivery was super quick too!"  
              </p>
            </div>
          </div>
          <div class="carousel-item">
            <div class="box">
              <div class="client_info">
                <div class="client_name">
                  <h5>
                    Tejasvi Gangle
                  </h5>
                  
                </div>
                <i class="fa fa-quote-left" aria-hidden="true"></i>
              </div>
              <p>
                "Amazing quality and beautifully packed hampers. My mom loved it. Will shop again!"
              </p>
            </div>
          </div>
          <div class="carousel-item">
            <div class="box">
              <div class="client_info">
                <div class="client_name">
                  <h5>
                    Akshita Parmar
                  </h5>
                  
                </div>
                <i class="fa fa-quote-left" aria-hidden="true"></i>
              </div>
              <p>
                "Highly recommend! The team helped me create the perfect hamper for my friend's wedding. Great service!" 
              </p>
            </div>
          </div>
        </div>
        <div class="carousel_btn-box">
          <a class="carousel-control-prev" href="#customCarousel2" role="button" data-slide="prev">
            <i class="fa fa-angle-left" aria-hidden="true"></i>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#customCarousel2" role="button" data-slide="next">
            <i class="fa fa-angle-right" aria-hidden="true"></i>
            <span class="sr-only">Next</span>
          </a>
        </div>
      </div>
    </div>
  </section>
  <!-- end client section -->

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
              At GIFTOS, we specialize in creating personalized gift hampers for every occasion. From premium cakes and chocolates to beautiful flowers and sweets, we offer custom hampers filled with love and care. With fast delivery and exceptional quality, we make gifting truly special.

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
              Our team is here for any questions or assistance. Contact us, and we'll ensure your gifting experience is perfect!
            </p>
          </div>
          <div class="col-md-6 col-lg-3">
            <h6>
              CONTACT US
            </h6>
            <div class="info_link-box">
              <a href="">
                <i class="fa fa-map-marker" aria-hidden="true"></i>
                <span>davv campus </span>
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
<%@include file="Footer.jsp" %>
</body>

</html>