<?php
session_start();
ob_start();
include"config/conn.php";
include"config/function.php";

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>.:: BALI-TECH ::.</title>
<link href="style/style.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="images/icon/newicon1.png" />
<link href="style/orbit.css" rel="stylesheet" type="text/css">
<link href="style/slider-style.css" rel="stylesheet" type="text/css">
<link href="style/barang.css" rel="stylesheet" type="text/css" />
<link href="style/lightbox.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery-1.5.1.min.js"></script>
<script type="text/javascript" src="js/jquery.orbit-1.2.3.min.js"></script>	
<script>
	function awas(open)
	{
		window.alert('You Must Login First');
	}
</script>
		<script type="text/javascript">
			$(window).load(function() {
				$('#featured').orbit();
			});
		</script>
<!-- Script for Form login -->
	<script>
		$(document).ready(function(){
  			$("#tombol-login").click(function(){
    			$("#back").fadeToggle();
				$("#formLogin").fadeToggle();
  			});
  
  			$("#tombol-keluar").click(function(){
	  			$("#back").fadeOut();
	  			$("#formLogin").fadeOut();
  			});
  
  			$("#back").click(function(){
	  			$("#back").fadeOut();
	  			$("#formLogin").fadeOut();
  			});
		});
	</script>
<!-- END SCRIPT -->

</head>
<body>
<div class="wraper">
		  	<div class="rightnavi">
          		<ul><SCRIPT language=JavaScript src="js/Date.js"></SCRIPT> |
		  		<SCRIPT language=JavaScript>
				var d = new Date();
					var h = d.getHours();
						if (h < 11) { document.write('Good Morning, Guest...'); }
							else { if (h < 15) { document.write('Good Afternoon, Guest...'); }
							else { if (h < 19) { document.write('Good Evening, Guest...'); }
							else { if (h <= 23) { document.write('Good Night, Guest...'); }
							}
						}
					}
              </SCRIPT>    
             </ul>
	</div>
    	<a id="#" href="#">
    	<input style="width: 150px; height:30px;" class="member"/>
        </a>

</div>  
    		<div id="header">
         		<?php
			 		include"menu.php";
             	  ?>
			</div>
            
<div class="log">
                </div>
                    	
	<div id="crumb">
    	<div class="crumbb">
    		<ul class="left">
        		<li><p>Welcome :&nbsp;<?php echo "$_SESSION[name_user]"; ?></p></li>
      		</ul>
        	</ul>
        		<ul class="search"><form method="POST" action="index.php?page=search">
          			 <li><input name="keyword" type="text" class="bar" placeholder="Search" /></li>
          			 <li><input type="submit" class="go" value="" /></li></form>
     			</ul>
     </div></div>

<div class="wraper">
<div id="bg-shadow"></div>
		<div id="slide">
				<div id="featured"> 
					<div class="content" style="">
						<h1></h1>
                        <br /></br>
                        <br /></br>
						<h3>Enjoy your Shopping Here.</h3>
					</div>
							<img src="images/slider/wd1.jpg" width="900" height="400" />
                            <img src="images/slider/wd2.jpg" width="900" height="400" />
		  			</div>
	     </div>
<!--------------------------------------------CONTENT---------------------------------------------------->
<div id="bg-shadow"></div>
	<div id="content_sec">
    
        <?php
			$page=$_GET['page'];
			switch($page)
			{
			case"":
    	?>  

			<div class="col1">
						  <table width="100%" border="0" cellspacing="0" cellpadding="0">
              				<tr>
              					<td height="54"><span class="center_title_bar"> WELCOME TO BALI-TECH. </span></td>
              				</tr>
              					 <td><span class="center_content">
                                We serve good quality of our customer<br> 
								Our product is real, give guarantee, and cheaper price than other products.
               					</span></td>
                           </tr>
           				 </table>
        	  </div>
                       
<!--------------------------------------------CONTENT barang---------------------------------------------------->
        	<?php
				
				include"produk.php";
			?>
            
        
        	<?php
				break;
				case"about":
				include"about_us.php";
				break;
				
				case"cara-beli":
				include"cr_beli.php";
				break;
				
				case"contact":
				include"contact_us.php";
				break;
				
				case"produk":
				include"produk.php";
				break;
				
				case"register":
				include"user/register-user.php";
				break;
				
				case"detail":
				include"detail.php";
				break;
				
				case"keranjang":
				include"keranjang.php";
				break;
				
				case"finish":
				include"finish.php";
				break;
				
				case"order":
				include"insert_order.php";
				break;
				
				case"search":
				include"search-result.php";
				break;
				
		
	
				}
			?>
    
	</div>
<!--------------------------------------------CONTENT banner---------------------------------------------------->                
<div id="info">
			<div class="col2">
       	 			<div class="mycart">
            				<div class="small_heading">
            					<h5><p align="center"> Shopping Cart </p></h5>
               				</div>
                				<table width="81%" border="0" cellspacing="0" cellpadding="0">
                 					 <tr>
                 						  <td width="27%">
       										 <?php
												include"item.php";
       										 ?>
                                          </td>
                					</tr>
                				</table>
       	 			</div> 
                    
                    <div class="poll">
            			<div class="small_heading">
            				<h5> Category Product </h5>
                		</div>
                			<table width="100%" border="0" cellspacing="0" cellpadding="0">
                			  <tr>
                  				  <td><div align="center"><span class="border_box">
                  					    
                                        <div id="left-side-2">
             								<ul id="kotakticker2">
        										<?php
													$select_kategori=mysql_query("select * from tb_kategori order by id_kategori");
													while($data_kat=mysql_fetch_array($select_kategori))
													{
                								?>
                									<li><a href="index.php?page=produk&kategori=<?php echo"$data_kat[kategori]";?>">
													<?php echo"$data_kat[kategori]";?></a></li>
                								<?php
													}
                								?>
											</ul>     
       									</div> 

                                        </span></div>
                                  </td>
                 			  </tr>
                			</table>
        		     </div>
                        
                        <div class="poll">
            			<div class="small_heading">
            				<h5>Bank Payment </h5>
                		</div>
                			<table width="100%" border="0" cellspacing="0" cellpadding="0">
                			  <tr>
                  				  <td><div align="center"><span class="border_box">
                  					    <img src="images/icon/on9shopping.jpg" /> <br />
                                        No. Rek : 7680358201 a/n. A A Raka Darantika
                  				  </span></div>
                                  </td>
                 			  </tr>
                			</table>
        		  </div>
   
  				  <div class="poll">
            			<div class="small_heading">
            				<h5> Online Shopping </h5>
                		</div>
                			<table width="100%" border="0" cellspacing="0" cellpadding="0">
                			  <tr>
                  				  <td><div align="center"><span class="border_box">
                                      <img src="images/on9shopping.jpg" width="200" height="170" />
                                        </span></div>
                                  </td>
                 			  </tr>
                			</table>
        		     </div>
					 
<!--------------------------------------------end cal2---------------------------------------------------->
			</div>
<!--------------------------------------------end info---------------------------------------------------->
</div>
<!--------------------------------------------Content footer---------------------------------------------------->
<div class="poll-1">
         <div class="aboutus">
        		<h5>About Us</h5>
        		<p>We serve good quality of our customer. Our product is real, give guarantee, and cheaper price than other products.</p>
  	      </div>
            
         <div class="news">
        		<h5>News</h5>
        		<p>Many choices of Laptop, Mouse, PC, and other parts.</p>
  		  </div>
            

		<div class="contactus">
        	<h5> Contact Us </h5>
            <ul>
               <li class="tel"><span class="bold">Telp:</span> 0361486964 </li>
               <li class="mobile"><span class="bold">Mobile:</span> 089605372247</li>
               <li class="email"><span class="bold">Email:</span><a href="agungrakadr4@yahoo.com"> agungrakadr4@yahoo.com</a></li>
               <li class="bb"><span class="bold">Pin BBM:</span> 7DA0FA2C</li>
            </ul>
		</div>
</div>
<!---------------- end wrapper ----------------->
<!-- Starting LightBox-->
      	<div id="back" class="black-overlay">
        </div>
        <div id="formLogin" class="formLogin">
        <a href="#" id="tombol-keluar"><p align="right"><img src="images/cross.png" width="22" height="22" /> </p></a>
        <?php
			include"login.php";
        ?>
        </div>
<!-- End Of LightBox-->
</div>
<!---------------- Footer ----------------->
          <div class="copyright_network">
        		<p>Copyright ©2017.  Bali-Tech | All Right Reserved. </p>
            	<ul class="network"><li>
            		<script language="javascript">
						document.write("<a href='http://twitter.com/home/?status=" + document.URL + "' target='_blank'><img src='<?php echo "$f[folder]./images/icon/twitter_icon.gif" ?>' border='0'/></a> &nbsp; <a href='http://www.facebook.com/share.php?u=" + document.URL + "' target='_blank'><img src='<?php echo "$f[folder]./images/icon/facebook_icon.gif" ?>' border='0'/></a>");
					</script></li>
                <li><a href="rss.xml"><img src="images/icon/rss.gif" alt="" border="0" /></a></li>
            </ul>
        </div>
</body>
</html>