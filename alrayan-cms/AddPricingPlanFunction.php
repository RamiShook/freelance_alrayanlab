<?php
require_once('config.php');
require_once('AdminAuthCheck.php');

if(isset($_GET['AddDummyPricingPlan'])){
    $q=mysqli_query($connection,"INSERT INTO `package_item` (`package_id`, `package_en_name`, `package_ar_name`, `package_price`, `en_button_label`, `ar_button_label`, `button_link`, `display_order`, `is_active`) VALUES (NULL, '', '', '<span class=\"bt_bb_price_list_currency\">$</span><span class=\"bt_bb_price_list_amount\">10</span>', 'اختر الخطة', 'اختر الخطة', '#', '0', '0');");
}
header('./PricingPlansView.php');

?>