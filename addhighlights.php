<?php
include("header.php");

if(isset($_POST['submit'])) {
    if(isset($_GET['editid'])) {
        // Update statement starts here
        $sql = "UPDATE highlights SET description='$_POST[description]', status='$_POST[status]' WHERE highlightsid='$_GET[editid]'";
        $qsql = mysqli_query($con,$sql);

        if(mysqli_affected_rows($con) == 1) {
            echo "<script>alert('Highlights record updated successfully..');</script>";
            echo "<script>window.location='addhighlights.php?type=$_GET[type]&editid=$_GET[editid]';</script>";
        }
        // Update statement ends here
    } else {
        // Insert Highlights Record starts here
        $sql = "INSERT INTO highlights(description, status) VALUES('$_POST[description]', '$_POST[status]')";
        $qsql = mysqli_query($con,$sql);

        if(mysqli_affected_rows($con) == 1) {
            echo "<script>alert('Highlights record inserted successfully..');</script>";
            echo "<script>window.location='addhighlights.php?type=$_GET[type]';</script>";
        }
        // Insert Highlights Record Ends here
    }
}

// Selecting the record starts here
if(isset($_GET['editid'])) {
    $sqledit = "SELECT * FROM highlights WHERE highlightsid='$_GET[editid]'";
    $qsqledit = mysqli_query($con,$sqledit);
    $rsedit = mysqli_fetch_array($qsqledit);
}
// Select the record ends here
?>

<!-- Catg header banner section -->
<section id="aa-catg-head-banner">
    <div class="aa-catg-head-banner-area">
        <div class="container">
            <div class="aa-catg-head-banner-content">
                <h2>Highlights</h2>
            </div>
        </div>
    </div>
</section>
<!-- / Catg header banner section -->

<!-- Cart view section -->
<section id="checkout">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="checkout-area">
                    <form action="" method="post">
                        <div class="row">
                            <?php
                            include("sidebar.php");
                            ?>
                            <div class="col-md-2"></div>
                            <div class="col-md-8">
                                <div class="panel panel-info">
                                    <div class="panel-heading">HIGHLIGHTS</div>
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-md-12" style="padding-bottom: 10px;">
                                                <div class="aa-checkout-single-bill">
                                                    Description:
                                                    <textarea name="description" placeholder="Description" class="form-control"><?php echo $rsedit['description']; ?></textarea>
                                                </div>
                                            </div>

                                            <div class="col-md-12" style="padding-bottom: 10px;">
                                                <div class="aa-checkout-single-bill">
                                                    Status:
                                                    <select placeholder="Status" name="status" class="form-control">
                                                        <option value="0">Select Status</option>
                                                        <?php
                                                        $arr = array("Active","Inactive");
                                                        foreach($arr as $val) {
                                                            if($val == $rsedit['status']) {
                                                                echo "<option selected value='$val'>$val</option>";
                                                            } else {
                                                                echo "<option value='$val'>$val</option>";
                                                            }
                                                        }
                                                        ?>
                                                    </select>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="aa-checkout-single-bill col-md-12">
                                                        <hr>
                                                        <center><input type="submit" name="submit" value="Click here to Submit" class="aa-browse-btn"></center>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-2"></div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- / Cart view section -->

<?php
include("footer.php");
?>