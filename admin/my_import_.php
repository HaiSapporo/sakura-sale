<?php require_once 'header.php'; ?>
<?php include("admin/inc/functions.php"); ?>
<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

if (isset($_POST['form1'])) {
	$valid = 1;

	if (empty($_POST['tcat_id'])) {
		$valid = 0;
		$error_message .= "You must have to select a top level category<br>";
	}
	if ($_FILES["p_featured_photo"]["error"] == 4) {
		$error_message .= "Please select csv file to upload.";
	} else {
		$file_path = pathinfo($_FILES['p_featured_photo']['name']);
		$file_ext = $file_path['extension'];
		$file_tmp = $_FILES['p_featured_photo']['tmp_name'];
		$file_size = $_FILES['p_featured_photo']['size'];
		// CSV file extension validation
		if ($file_ext != "csv") {
			$valid = 0;
			$error_message .= 'Bạn phải upload đúng định dạng file CSV.<br>';
		}
		// 1MB file size validation
		if ($file_size > 1048576) {
			$valid = 0;
			$error_message .= "Sorry, maximum 1 MB file size is allowed.";
		}
		if (empty($error_message)) {
			// Number of rows in CSV validation (3 rows are allowed for now)
			$file_rows = file($file_tmp);
			if (count($file_rows) > 1000) {
				$error_message .= "Sorry, you can upload maximum 3 rows of data in one go.";
			}
		}

	}
	if ($valid == 1) {
		if ((empty($_POST['ecat_id']) && !empty($_POST['mcat_id']))) {
			$insert_category = $_POST['mcat_id'];
		}
		else if (!empty($_POST['ecat_id'])) {
			$insert_category =$_POST['ecat_id'];
		}
		else {
			$insert_category =$_POST['tcat_id'];
		}

		//Saving data into the main table tbl_product
		$file = fopen($file_tmp, "r");
		$first = false;
		$today = date("Y-m-d H:i:s");
		// 2001-03-10 17:16:18 (the MySQL DATETIME format)
		while (!feof($file)) {
			$row_of_file = fgetcsv($file);
			if (!$first) {
				$first = true;
				continue;
			}
			// check update/ insert
			$statement_select = $pdo->prepare("SELECT * FROM tbl_product WHERE asin=?");
			$statement_select->execute(array($row_of_file['3'])); //asin is key
			$rowCheck = $statement_select->rowCount();
			
			$tag_amazon = "/?tag=sakurasale-22";	
			$row_of_file['12'] .= $tag_amazon;

			if($rowCheck) { // if data exist update the data
		
				$statement = $pdo->prepare(
					"UPDATE tbl_product SET 
					page=?
					, position=?
					, global_position=?
					, discounted=?
					, current_price=?
					, currency=?
					, before_price=?
					, savings_amount=?
					, savings_percent=?
					, total_reviews=?
					, rating=?
					, url=?
					, score=?
					, sponsored=?
					, amazonChoice=?
					, bestSeller=?
					, amazonPrime=?
					, title=?
					, thumbnail=?
					, import_date=?
					, p_id=?
					, p_name=?
					, p_old_price=?
					, p_current_price=?
					, p_qty=?
					, p_featured_photo=?
					, p_description=?
					, p_short_description=?
					, p_feature=?
					, p_condition=?
					, p_return_policy=?
					, p_total_view=?
					, p_is_featured=?
					, p_is_active=?
					, ecat_id=? 
					,search_keyword =?
					WHERE asin=?"); 
				$statement->execute(
					array(
						$row_of_file['0'],
						$row_of_file['1'],
						$row_of_file['2'],
						$row_of_file['4'],
						$row_of_file['5'],
						$row_of_file['6'],
						$row_of_file['7'],
						$row_of_file['8'],
						$row_of_file['9'],
						$row_of_file['10'],
						$row_of_file['11'],
						$row_of_file['12'], 
						$row_of_file['13'],
						$row_of_file['14'],
						$row_of_file['15'],
						$row_of_file['16'],
						$row_of_file['17'],
						$row_of_file['18'],
						$row_of_file['19'],
						$today,
						$row_of_file['3'], //id 
						$row_of_file['18'], //name
						$row_of_file['7'], // old price
						$row_of_file['5'],
						// current price
						100,
						1,
						$row_of_file['18'],
						$row_of_file['18'],
						1,
						1,
						'xxx',
						20000,
						1,
						1,
						$insert_category,
						$_POST['search_keyword'],
						$row_of_file[3]
					));
			} else {
				$statement = $pdo->prepare(
					"INSERT INTO tbl_product(
					 page
					, position
					, global_position
					, asin
					, discounted
					, current_price
					, currency
					, before_price
					, savings_amount
					, savings_percent
					, total_reviews
					, rating
					, url
					, score
					, sponsored
					, `amazonChoice`
					, `bestSeller`
					, `amazonPrime`
					, title
					, thumbnail
					, import_date
					, p_id
					, p_name
					, p_old_price
					, p_current_price
					, p_qty
					, p_featured_photo
					, p_description
					, p_short_description
					, p_feature
					, p_condition
					, p_return_policy
					, p_total_view
					, p_is_featured
					, p_is_active
					, ecat_id
					, search_keyword
						) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"
				);
				$statement->execute(
					array(
						$row_of_file['0'],
						$row_of_file['1'],
						$row_of_file['2'],
						$row_of_file['3'],
						$row_of_file['4'],
						$row_of_file['5'],
						$row_of_file['6'],
						$row_of_file['7'],
						$row_of_file['8'],
						$row_of_file['9'],
						$row_of_file['10'],
						$row_of_file['11'],
						$row_of_file['12'],
						$row_of_file['13'],
						$row_of_file['14'],
						$row_of_file['15'],
						$row_of_file['16'],
						$row_of_file['17'],
						$row_of_file['18'],
						$row_of_file['19'],
						$today,
						$row_of_file['3'], //id 
						$row_of_file['18'], //name
						$row_of_file['7'], // old price
						$row_of_file['5'],
						// current price
						100,
						1,
						$row_of_file['18'],
						$row_of_file['18'],
						1,
						1,
						'xxx',
						20000,
						1,
						1,
						$insert_category,
						$_POST['search_keyword']
					)
				);
				
			}
			$success_message = "Product is INSERT successfully into " .$_POST['tcat_id']. "";
		}
	}
}
?>
<?php 
	
if (isset($_POST['form3'])) {
	$statement_delete = $pdo->prepare("DELETE  FROM tbl_product"); 
	$statement_delete->execute();
	$success_message = "Delete all data of past";
 
}
?>

<?php 
	
if (isset($_POST['form2'])) {
	$statement_delete = $pdo->prepare("DELETE  FROM tbl_product WHERE savings_percent <=5"); // 5% delete
	$statement_delete->execute();
	
        $success_message = "Delete all data les than 5%";
 
}
?>

<section class="content-header">
	<div class="content-header-left">
		<h1>Add Product</h1>
	</div>
	<div class="content-header-right">
		<a href="product.php" class="btn btn-primary btn-sm">View All</a>
		
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
				</div>
			<?php endif; ?>

			<?php if ($success_message): ?>
				<div class="callout callout-success">

					<p>
						<?php echo $success_message; ?>
					</p>
				</div>
			<?php endif; ?>

			<form class="form-horizontal" action="" method="post" enctype="multipart/form-data">

				<div class="box box-info">
					<div class="box-body">
						<div class="form-group">
							<label for="" class="col-sm-3 control-label">Top Level Category Name <span>*</span></label>
							<div class="col-sm-4">
								<select name="tcat_id" class="form-control select2 top-cat">
									<option value="">Select Top Level Category</option>
									<?php
									$statement = $pdo->prepare("SELECT * FROM tbl_top_category ORDER BY tcat_name ASC");
									$statement->execute();
									$result = $statement->fetchAll(PDO::FETCH_ASSOC);
									foreach ($result as $row) {
										?>
										<option value="<?php echo $row['tcat_id']; ?>"><?php echo $row['tcat_name']; ?>
										</option>
										<?php
									}
									?>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-3 control-label">Mid Level Category Name <span></span></label>
							<div class="col-sm-4">
								<select name="mcat_id" class="form-control select2 mid-cat">
									<option value="">Select Mid Level Category</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-3 control-label">End Level Category Name <span></span></label>
							<div class="col-sm-4">
								<select name="ecat_id" class="form-control select2 end-cat">
									<option value="">Select End Level Category</option>
								</select>
							</div>
						</div>

						<div class="form-group">
							<label for="" class="col-sm-3 control-label">Choose file upload <span>*</span></label>
							<div class="col-sm-4" style="padding-top:4px;">
								<input type="file" name="p_featured_photo">

							</div>
						</div>

				
						<div class="form-group">
							<label for="" class="col-sm-3 control-label"></label>
							<div class="col-sm-6">
								<button type="submit" class="btn btn-success pull-left" name="form1">Submit</button> 
								<button type="submit" class="btn btn-success pull-left" name="form2">Delete record</button>
                                                                <button type="submit" class="btn btn-success pull-left" name="form3">Delete past record</button>
							</div>
						</div>
					</div>
				</div>

			</form>


		</div>
	</div>

</section>

<?php require_once 'footer.php'; ?>