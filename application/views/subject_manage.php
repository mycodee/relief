<script>	
	$(document).ready(function() {		
	    gridRender('subject');
	}); 
</script>


<div class="container">
	
	<div class="hero-unit">
		
		<!-- breacrumb -->
  		<ul class="breadcrumb">
		  <li><a href="<?php echo base_url();?>dashboard">الرئيسية</a> <span class="divider">/</span></li>			  		  
		  <li class="active">إدارة المواد</li>
		</ul>
		
		<h3 class="title">إدارة المواد</h3>	 
		
		<div class="grid">
			<table id="subject" action="<?php echo base_url();?>subject/ajaxGetSubjects" dir="rtl">				
				<tr>																
					<th col="code" type="text">رمز المادة</th>
					<th col="subject" type="text">اسم المادة</th>
					<th col="category" type="text">فئة المادة</th>
					<th col="total_amount" type="text">الكمية الكلية</th>
					<th col="unit" type="text">الواحدة</th>
				</tr>										
			</table>	
		</div>
		
	</div> <!-- end hero unit -->	
	
	
</div> <!-- end container -->

