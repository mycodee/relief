<div  class="row-fluid">	  	
	  	<div class="span8 main-content offset2">
			<h1>تعديل بيانات مستخدم</h1>  
			
			<form method="post" action="<?php echo base_url();?>user/saveData/edit/<?php echo $user['id']; ?>" >
				<br />
				
				<table>
					<tr>
						<td colspan="2" style="font-size: 16px;">
							<b>المعلومات الشخصية</b>
						</td>
					</tr>
					<tr>
						<td>
							<label for="first_name">
							الاسم:
							</label>
						</td>
						
						<td>
							<input type="text" name="first_name" required="required" value="<?php echo $user['first_name']; ?>"/>
						</td>
						
						<td>
							<label for="last_name">
							الكنية:
							</label>
						</td>
						
						<td>
							<input type="text" name="last_name" required="required" value="<?php echo $user['last_name']; ?>"/>
						</td>
					</tr>
					
					<tr>
						<td>
							<label for="national_id">
							الرقم الوطني:
							</label>
						</td>
						
						<td colspan="3">
							<input type="text" name="national_id" required="required" style="width: 97%"  value="<?php echo $user['national_id']; ?>"/>
						</td>
					</tr>
					
					<tr>
						<td>
							<label for="phone">
							رقم الهاتف:
							</label>
						</td>
						
						<td>
							<input type="text" name="phone" required="required" value="<?php echo $user['phone']; ?>"/>
						</td>
						
						<td>
							<label for="mobile">
							رقم الجوال:
							</label>
						</td>
						
						<td>
							<input type="text" name="mobile" required="required" value="<?php echo $user['mobile']; ?>"/>
						</td>
					</tr>
					
					<tr>
						<td>
							<label for="address">
							العنوان:
							</label>
						</td>
						
						<td colspan="3">
							<textarea name="address" required="required" style="width: 97%"><?php echo $user['address']; ?></textarea>
						</td>
					</tr>
					
					<tr>
						<td colspan="2" style="font-size: 16px;">
							<b>معلومات تسجيل الدخول</b>
						</td>
					</tr>
					
					<tr>
						<td>
							<label for="username">
								اسم المستخدم:
							</label>
						</td>
						
						<td colspan="3">
							<input type="text" name="username" required="required" style="width: 97%" <?php echo $user['username']; ?>/>
						</td>
					</tr>
					
					<tr>
						<td>
							<label for="password">
								كلمة المرور:
							</label>
						</td>
						
						<td colspan="3">
							<input type="text" name="password" style="width: 97%"/>
						</td>
					</tr>
					
					<tr>
						<td >
							<label for="re_password">
								إعادة كلمة المرور:
							</label>
						</td>
						
						<td colspan="3">
							<input type="text" name="re_password" style="width: 97%"/>
						</td>
					</tr>
					
					<tr>
						<td>
							<input type="submit" name="save" class="btn btn-info" value="احفظ"/>
							<input type="button" class="btn btn-default" value="إلغاء" name="cencel_settings" onclick="window.location='<?php echo base_url()?>dashboard'" />
						</td>
					</tr>
				</table>
			</form>
	  	</div>
	  
	</div>
