<?php
include('header.php');
?>
<form action="koneksi/koneksi.php" method="POST">
		<div class="container">
			<div class="col-md-4 col-md-offset-4 form-login" style="border:1px solid #bbb;border-radius:10px;padding:20px;">
				
				<form class="form-horizontal">
				  <div class="form-group">
						<div class="col-sm-12">
							<input type="text" class="form-control" placeholder="Username" name="username"></p>
						</div>
				  </div>
				  <div class="form-group">
						<div class="col-md-12">
							<input type="password" class="form-control" id="inputPassword" placeholder="Password" name="password">
						</div>
						<div class="form-group">
						<center><button class="btn btn-primary " >Login</button></center>
				  </div>
				</form>
			</div>
		</div>
</div>
	</div>
		</div>
			</form>
	<script src="asset/js/jquery.min.js"></script>
    <script src="asset/js/bootstrap.min.js"></script>
<?php
include('footer.php');
?>