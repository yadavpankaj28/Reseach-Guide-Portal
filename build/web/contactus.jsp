<%@include file="Headerj.jsp"  %>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap-theme.min.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<div class="content">
		<div class="container">
			<div class="contact">
			<div class="col-md-7 contact-para">
			<p class="class-para">The information necessary to shape your project by sharing our opinions with us can learn or get a price quote.The information necessary to shape.</p>	
			<h5>CONTACT FORM</h5>
			<form>
				<div class="grid-contact">
					<div class="col-md-6 contact-grid">
						<p class="your-para">NAME SURNAME</p>
						<li class="list-grid">
							<input type="text" value="" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">
							<span class="icon"> </span>
							<div class="clearfix"> </div>
						</li>
						</div>
					<div class="col-md-6 contact-grid">
					<p class="your-para">E-MAIL ADDRESS</p>
						<li class="list-grid">
							<input type="text" value="" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">
							<span class="icon icon-name"> </span>
							<div class="clearfix"> </div>
						</li>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="grid-contact">
					<div class="col-md-6 contact-grid">
						<p class="your-para">TELEPHONE</p>
						<li class="list-grid">
							<input type="text" value="" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">
							<span class="icon icon-phone"> </span>
							<div class="clearfix"> </div>
						</li>
						</div>
					<div class="col-md-6 contact-grid">
					<p class="your-para">WHICH DEPARTMENT</p>
					<li class="list-grid">
							<p>Marketing - Sales Department</p>
							<img class="sale-arrow" src="images/arrow.png" alt=""/>
							<div class="clearfix"> </div>
					</li>
					</div>
					<div class="clearfix"> </div>
				</div>
				<p class="your-para msg-para">MESSAGE</p>
								<textarea cols="77" rows="6" value=" " onfocus="this.value='';" onblur="if (this.value == '') {this.value = '';}"></textarea>
								<div class="send">
								<input type="submit" value="SENT MESSAGE" >
								</div>
			</form>
			</div>	
			<div class="col-md-5 contact-map">
			<h5>GOOGLE-MAP</h5>
			<div class="map">

<iframe width="400" height="400" id="gmap_canvas" src="https://maps.google.com/maps?q=thapar institute of engineering and technology address on google map&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" ></iframe>
			</div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	
</body>
</html>
<%@include file="Footerj.jsp" %>