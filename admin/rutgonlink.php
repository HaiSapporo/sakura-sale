<?php require_once('header.php'); ?>



<section class="content-header">
	<div class="content-header-left">
		<h1>Create shortlink</h1>
	</div>
	<div class="content-header-right">
		<a href="country.php" class="btn btn-primary btn-sm">View All</a>
	</div>
</section>


<section class="content">

	<div class="row">
		<div class="col-md-12">

			<?php if ($error_message): ?>
				<div class="callout callout-danger">

					<p>
						<?php echo $error_message; ?>
					</p>
					<p>
						<?php echo $_POST['country_name']; ?>
					</p>
				</div>
			<?php endif; ?>

			<?php if ($success_message): ?>
				<div class="callout callout-success">

					<p>
						<?php echo $success_message; ?>
					</p>
				</div>
			<?php endif; ?>

			<form class="form-horizontal" action="" method="post">

				<div class="box box-info">
					<div class="box-body">
						<div id="group" class="form-group">
							<label for="" class="col-sm-2 control-label">Input links <span>*</span></label>
							<div class="col-sm-4">
								<input type="text" id="url" name="url" type="url" class="form-control"
									name="country_name">
							</div>
						</div>
						<div class="form-group">
						
						</div>

						<div class="form-group">
							<label for="" class="col-sm-2 control-label">Output link: <span>*</span></label>

							<div class="col-sm-4">
								<input id="longUrl" onclick="this.select();" class="form-control" type="url" />
							</div>
						</div>

						<div class="form-group">
						<label for="" class="col-sm-2 control-label"><span></span></label>
							<div class="col-sm-4">
								<a href="#" target="_blank" id="directLink0" title="Click here"></a>
							</div>
						</div>

						<div class="form-group">
							<label for="" class="col-sm-2 control-label">Kết quả<span></span></label>
							<div class="col-sm-4">
								<input id="shortUrl" onclick="this.select();" class="form-control" type="url" />
							</div>
						</div>

						<div class="form-group">
							<div class="col-sm-4">
								<a href="#" target="_blank" id="directLink1" title="Click here"></a>
							</div>
						</div>
					</div>
				</div>

			</form>


		</div>
	</div>

</section>
<script>
	window.onload = function () {

		var url = document.getElementById('url');
		url.addEventListener('input', function () {
			var search = url.value;
			var pattern = 'B[0-9|A-Z]{9}';
			var asin = search.match(pattern);
			var directLink0 = document.getElementById('directLink0');
			var directLink1 = document.getElementById('directLink1');

			// If the amazon ASIN is available
			if (asin) {
				var tag = "tag=sakurasale-22";
				var longUrl = "https://www.amazon.co.jp/dp/" + asin + "/?tag=" + tag;
				var endpoint = "bitly.php";
				var params = "asin=" + asin + "&tag=" + tag;

				// Instant parsed url result
				document.getElementById('longUrl').value = longUrl;

				directLink0.href = longUrl;
				directLink0.innerHTML = longUrl;

				var request = new XMLHttpRequest();
				request.open('POST', endpoint, true); // asynchronous POST request
				request.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

				request.onreadystatechange = function () {

					if (request.readyState == 4 && request.status == 200) {
						if (JSON.parse(request.response).error) {
							console.log(JSON.parse(request.response).error);
						} else {
							var data = JSON.parse(request.response).data;
							var shortUrl = data.url;

							document.getElementById('shortUrl').value = shortUrl;

							directLink1.href = shortUrl;
							directLink1.innerHTML = shortUrl;
						}
					}
				};

				request.send(params);

			} else {

				document.getElementById('longUrl').value = "";
				document.getElementById('shortUrl').value = "";
				directLink0.href = "";
				directLink0.innerHTML = "";
				directLink1.href = "";
				directLink1.innerHTML = "";
			}
		});
	}
</script>
<?php require_once('footer.php'); ?>