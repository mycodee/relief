<div  class="row-fluid">
	  	<div class="span8 offset2">
	  		
	  		<div class="row-fluid">
	  			<div class="span3">
	  				<!-- Provider manage-->
	  				<div class="button-box" align="center">
	  					<a href="<?php echo base_url()?>provider">
	  						<img src="<?php echo base_url()?>/images/id_card.png"/>	  					
		  					<p>إدارة معيل</p>	
	  					</a>
	  				</div>	  					  			
	  			</div>
	  			
	  			<!-- dashboard
	  			<div class="span3">	  				
	  				<div class="button-box" align="center">
	  					<a href="<?php echo base_url()?>family_member">	
							<img src="<?php echo base_url()?>/images/network.png"/>	  						  					
		  					<p>إدارة أفراد الأسرة</p>
	  					</a>
  					</div>	  					
	  			</div>
	  			-->
	  			<div class="span3">
	  				<!-- forms manage-->
	  				<div class="button-box" align="center">		  					
	  					<a href="<?php echo base_url()?>form">
		  					<img src="<?php echo base_url()?>/images/blank_page.png"/>	  					
		  					<p>إدارة الاستمارات</p>	
	  					</a>
	  				</div>
	  			</div>
	  			
	  			<!--
	  			<div class="span3">	  				
	  				<div class="button-box" align="center">		  					
	  					<a href="<?php echo base_url()?>aid">
		  					<img src="<?php echo base_url()?>/images/link.png"/>	  					
		  					<p>إدارة المعونات</p>			  					
	  					</a>
	  				</div>
	  			</div>
	  			-->
	  			
	  			<div class="span3">
	  				<!-- Search-->
	  				<div class="button-box" align="center">	
	  					<a href="<?php echo base_url()?>provider/search">	
		  					<img src="<?php echo base_url()?>/images/search.png"/>	  					
		  					<p>بحث عام</p>	
	  					</a>
	  				</div>	  					  			
	  			</div>  
	  			   				  			
	  		</div>	  			  			 	  
	  		
	  		
	  		<div class="row-fluid" style="margin-top:10px">	  			
	  			
	  			<?php 
	  				if($this->session->userdata['user']['role'] == "admin")
	  				{
  				?>
	  			<div class="span3">
	  				<!-- ABOUT-->
	  				<div class="button-box" align="center">	
	  					<a href="<?php echo base_url()?>association">	
		  					<img src="<?php echo base_url()?>/images/home.png"/>	  					
		  					<p>إدارة الجمعيات</p>			  					
	  					</a>
	  				</div>	  					  			
	  			</div>
	  			<?php
					}
	  			?>
	  			<div class="span3">
	  				<!-- setting-->
	  				<div class="button-box" align="center">
	  					<a href="<?php echo base_url()?>area">	
		  					<img src="<?php echo base_url()?>images/map_pin.png"/>	  					
		  					<p>إدارة المناطق</p>
	  					</a>
  					</div>	
	  			</div>
	  			
	  			
	  			
	  			
	  			<div class="span3">
	  				<!-- schedule-->
	  				<div class="button-box" align="center">
	  					<a href="<?php echo base_url()?>migrate">	
		  					<img src="<?php echo base_url()?>/images/cloud_upload.png"/>	  					
		  					<p>استيراد\تصدير</p>	
	  					</a>
	  				</div>
	  			</div>
	  			
	  			
	  			<div class="span3">
	  				<!-- users-->
	  				<div class="button-box" align="center">
	  					<a href="<?php echo base_url()?>user">	
		  					<img src="<?php echo base_url()?>images/users.png"/>	  					
		  					<p>المستخدمين</p>
	  					</a>
  					</div>	
  					
	  			</div>	  			
	  		</div>	
	  		
	  		  
	  		<div class="row-fluid" style="margin-top:10px">	  				  			
	  			<?php 
	  				if($this->session->userdata['user']['role'] == "admin")
	  				{
  				?>
	  			<div class="span3">
	  				<!-- fraud-->	  					  			
	  				<div class="button-box" align="center">	
	  					<a href="<?php echo base_url()?>fraud">	
		  					<img src="<?php echo base_url()?>/images/warning.png"/>	  					
		  					<p>حالات الغش</p>	
	  					</a>
	  				</div>	  					  			
	  			</div>
	  			<?php	
	  				}	  				
  				?>
	  			
	  			<div class="span3">
	  				<!-- ABOUT-->
	  				<div class="button-box" align="center">	
	  					<a href="<?php echo base_url()?>package">	
		  					<img src="<?php echo base_url()?>/images/shopping_cart.png"/>	  					
		  					<p>السلات</p>	
	  					</a>
	  				</div>	  					  			
	  			</div>
	  			
	  			<div class="span3">
	  				<!-- ABOUT-->
	  				<div class="button-box" align="center">	
	  					<a href="<?php echo base_url()?>subject">	
		  					<img src="<?php echo base_url()?>/images/tag.png"/>	  					
		  					<p>المواد</p>	
	  					</a>
	  				</div>	  					  			
	  			</div>
	  			  	
	  			<div class="span3">
	  				<!-- ABOUT-->
	  				<div class="button-box" align="center">	
	  					<a href="<?php echo base_url()?>report">	
		  					<img src="<?php echo base_url()?>/images/chart.png"/>	  					
		  					<p>إحصائيات</p>	
	  					</a>
	  				</div>	  					  			
	  			</div>  	
	  			  			
	  		</div>		  			  				  		
	  			    	
	  		  	
	  		
	  	</div>
	  			
	</div>
