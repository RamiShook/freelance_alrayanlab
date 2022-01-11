<!doctype html>
<html lang="ar" dir="rtl">
   <head>
      <meta charset="utf-8">
      <?php
      include('headerScripts.php');
     ?>
      <title>الريان</title>
      <link rel="icon" type="image/png" href="images/favicon.png">
   </head>
   <body>
   <?php 
include('header.php');
?>
      <div class="page-title-area item-bg-1">
         <div class="d-table">
            <div class="d-table-cell">
               <div class="container">
                  <div class="page-title-content">
                     <h2>تواصل معنا</h2>
                     <ul>
                        <li><a href="home">الرئيسية</a></li>
                        <li>تواصل معنا</li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <section class="contact-info-area pt-100 pb-70">
         <?php
         getLang(4);
         ?>
      </section>
      <section class="contact-area pb-100">
         <div class="container">
            <div class="section-title">
               <span>تواصل معنا</span>
               <h2>ارسل لنا رسالة</h2>
            </div>
            <div class="contact-form">
               <form id="contactForm">
                  <div class="row">
                     <div class="col-lg-12 col-md-12">
                        <div class="form-group">
                           <input type="text" name="name" id="name" class="form-control" required data-error="الرجاء ادخال الأسم" placeholder="الأسم">
                           <div class="help-block with-errors"></div>
                        </div>
                     </div>
                   
                    
                     <div class="col-lg-12 col-md-12">
                        <div class="form-group">
                           <textarea name="message" class="form-control" id="message" cols="30" rows="6" required data-error="الرجاء كتابة رسالة" placeholder="الرسالة"></textarea>
                           <div class="help-block with-errors"></div>
                        </div>
                     </div>
                     <div class="col-lg-12 col-md-12">
                        <button type="submit" class="default-btn">
                        ارسل
                        <span></span>
                        </button>
                        <div id="msgSubmit" class="h3 text-center hidden"></div>
                        <div class="clearfix"></div>
                     </div>
                  </div>
               </form>
            </div>
         </div>
      </section>
      <div class="map-area pb-100">
         <div class="container">
         <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3332.2652218845487!2d44.3790926!3d33.3641412!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMzPCsDIxJzUwLjkiTiA0NMKwMjInNTIuNiJF!5e0!3m2!1sen!2slb!4v1628847941631!5m2!1sen!2slb" ></iframe>
         </div>
      </div>
      
      <?php
     include('footer.php');
     ?>
   
   </body>
</html>