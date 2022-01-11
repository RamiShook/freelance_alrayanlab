<div class="footer-area pt-100 pb-70">
         <div class="container">
            <div class="row">
               <div class="col-lg-3 col-sm-6">
                  <div class="single-footer-widget">
                     <div class="logo">
                        <a href="home">
                        <img src="images/logo.png" alt="image">
                        </a>
                     </div>
                     <ul class="social">
                        <li>
                           <a href="#" class="facebook" target="_blank">
                           <i class="lab la-facebook-f"></i>
                           </a>
                        </li>

                        <li>
                           <a href="#" class="instagram" target="_blank">
                           <i class="lab la-instagram"></i>
                           </a>
                        </li>

                     </ul>
                  </div>
               </div>
               <div class="col-lg-3 col-sm-6">
                  <div class="single-footer-widget pl-5">
                     <h3>خدماتنا</h3>
                     <ul class="quick-links">
                        <?php 
                        $q=mysqli_query($connection,"SELECT * FROM services
                                                      LIMIT 2");
                        while($service = mysqli_fetch_array($q)){
                           echo '
                           <li>
                           <i class="las la-angle-double-left"></i>
                           <a href="services">'.$service[2].'</a>
                        </li>
                           ';
                        }
                        ?>
                        
                        <li>
                           <i class="las la-angle-double-left"></i>
                           <a href="services" dir="ltr">... المزيد</a>
                        </li>
                       
                     </ul>
                  </div>
               </div>
               <div class="col-lg-3 col-sm-6">
                  <div class="single-footer-widget pl-5">
                     <h3>روابط سريعة</h3>
                     <ul class="quick-links">
                        <li>
                           <i class="las la-angle-double-left"></i>
                           <a href="about">نبذة عن المختبر</a>
                        </li>
                        <li>
                           <i class="las la-angle-double-left"></i>
                           <a href="services">الخدمات</a>
                        </li>
                        <li>
                           <i class="las la-angle-double-left"></i>
                           <a href="contact">تواصل معنا</a>
                        </li>
                     </ul>
                  </div>
               </div>
               <div class="col-lg-3 col-sm-6">
                  <div class="single-footer-widget">
                     <h3>معلومات</h3>
                     <ul class="footer-contact-info">
                        <li>
                           <i class="las la-phone"></i>
                           <span>الهاتف</span>
                           <a href="tel:9647729692559" dir="ltr">+964 772 969 2559</a>
                        </li>
                        <i class="las la-map-marker-alt"></i>
                        <span>العنوان</span>
                        <a href="#">Iraq, Baghdad</a>
                        </li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <div class="copyright-area">
         <div class="container">
            <p>
               Copyright © 2021 Iskandaroni
            </p>
         </div>
      </div>
      <div class="go-top">
         <i class="las la-long-arrow-alt-up"></i>
      </div>

      <script data-cfasync="false" src="images/email-decode.min.js"></script><script src="images/jquery.min.js"></script>
      <script src="images/popper.min.js"></script>
      <script src="images/bootstrap.min.js"></script>
      <script src="images/jquery.meanmenu.js"></script>
      <script src="images/owl.carousel.min.js"></script>
      <script src="images/odometer.min.js"></script>
      <script src="images/jquery.appear.js"></script>
      <script src="images/datepicker.min.js"></script>
      <script src="images/jquery.magnific-popup.min.js"></script>
      <script src="images/jquery.nice-select.min.js"></script>
      <script src="images/jquery.ajaxchimp.min.js"></script>
      <script src="images/form-validator.min.js"></script>
      <script src="images/contact-form-script.js"></script>
      <script src="images/wow.min.js"></script>
      <script src="images/main.js"></script>