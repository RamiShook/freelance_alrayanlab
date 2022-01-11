<!doctype html>
<html lang="ar" dir="rtl">
   <head>
      <meta charset="utf-8">
      <?php
      include('headerScripts.php');
     ?>
      <title>Iskandaroni Lab</title>
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
                     <h2>الخدمات</h2>
                     <ul>
                        <li><a href="home">الرئيسية</a></li>
                        <li>الخدمات</li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <section class="services-area bg-ffffff pt-100 pb-70">
         <div class="container">
            <div class="section-title">
               <span>الخدمات</span>
               <h2>خدماتنا</h2>
            </div>
            <div class="row">
               
         <?php
            $q=mysqli_query($connection,"SELECT * FROM services");

            while($service = mysqli_fetch_assoc($q)){
               echo '
               <div class="col-lg-4 col-md-6">
               <div class="single-services-item">
                  <div class="icon">
                     <i class="'.$service['icon'].'"></i>
                  </div>
                  <h3>
                     <a href="#">'.$service['ar_name'].'</a>
                  </h3>
                  <p>'.$service['ar_description'].'</p>
              
               </div>
            </div>
               ';
            }
            
         ?>
            </div>
         </div>
      </section>
      <section class="how-it-works-area ptb-100">
      <div class="container">
            <div class="row align-items-center">
               <div class="col-lg-12">
                  <div class="how-it-works-content">
                     <span>

نمنح تجربة مختبر جديدة</span>
                     <h3>نتائجنا دقيقة لتحسين رعاية المرضى</h3>
    <p>من اولوياتنا واهدافنا المنشودة دائما رفع كفاءة الوعي الصحي في المجتمع العراقي وتثبيت فكرة وثقافة الوقاية خير من العلاج لذا تم تصميم باقات للفحوصات الطبية خاصة وبأسعار تتناسب مع ميزانية المرضى في العراق بالاعتماد على أحدث الاجهزة والمعدات الطبية وكوادر طبية متخصصة للحصول على نتائج دقيقة ومتقدمة.
للمزيد من المعلومات عم جميع الفحوصات الطبية التي يوفرها مختبر الريان يرجى التواصل معنا 
</p>
                     
                     
                     
                  </div>
               </div>
               
            </div>
         </div>
         <div class="container">
            <div class="row align-items-center">
               <div class="col-lg-5">
                  <div class="how-it-works-content">
                     <span>How It Works</span>
                     <h3>Receive Your Test 3 Easy Way Steps</h3>
                     <strong>Your full-service lab for clinical trials. Our mission is to ensure the generation of accurate and precise findings</strong>
                     <div class="how-it-works-text">
                        <div class="number">
                           <span>1</span>
                        </div>
                        <h4>Get Started</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt dolore. magna aliqua.</p>
                     </div>
                     <div class="how-it-works-text">
                        <div class="number">
                           <span>2</span>
                        </div>
                        <h4>Prepare your test</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt dolore. magna aliqua.</p>
                     </div>
                     <div class="how-it-works-text">
                        <div class="number">
                           <span>3</span>
                        </div>
                        <h4>Get Test Result</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt dolore. magna aliqua.</p>
                     </div>
                  </div>
               </div>
               <div class="col-lg-7">
                  <div class="how-it-works-image">
                     <img src="images/how-it-works.png" alt="image">
                  </div>
               </div>
            </div>
         </div>
      </section>


      <?php
     include('footer.php');
     ?>
   </body>
</html>