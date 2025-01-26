<?php
include("header.php");
if(isset($_GET['delid']))
{
    $sql="DELETE FROM highlights WHERE highlightsid='$_GET[delid]'";
    $qsql = mysqli_query($con,$sql);
    if(mysqli_affected_rows($con) == 1)
    {
        echo "<script>alert('Highlights record deleted successfully...');</script>";
        echo "<script>window.location='viewhighlights.php?type=$_GET[type]';</script>";
    }
}
?>
 
<!-- Catg header banner section -->
<section id="aa-catg-head-banner">
    <div class="aa-catg-head-banner-area">
        <div class="container">
            <div class="aa-catg-head-banner-content">
                <h2>Checkout Page</h2>
            </div>
        </div>
    </div>
</section>
<!-- / catg header banner section -->

<!-- Cart view section -->
<section id="checkout">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="checkout-area">
                    <form action="" method="post">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="checkout-left">
                                    <div class="panel-group" id="accordion">
                                        <!-- Billing Details -->
                                        <div class="panel panel-default aa-checkout-billaddress">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a  data-parent="#accordion">
                                                        View <?php echo $_GET['type']; ?> Highlights<hr>
                                                    </a>
                                                </h4>
                                            </div>
                                            <div id="collapseThree">
                                                <div class="panel-body">
                                                    <table id="myTable"  class="table table-striped table-bordered">
                                                        <thead>
                                                            <tr>
                                                                <th>Description</th>
                                                                <th>Status</th>
                                                                <th>Action</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <?php
                                                            $sql= "SELECT * FROM highlights";
                                                            $qsql = mysqli_query($con,$sql);
                                                            while($rs = mysqli_fetch_array($qsql))
                                                            {
                                                                echo "<tr>
                                                                        <td>$rs[description]</td>
                                                                        <td>$rs[status]</td>
                                                                        <td><a href='addhighlights.php?editid=$rs[0]&type=$_GET[type]' class='btn  btn-info' >Edit</a> | <a href='viewhighlights.php?delid=$rs[0]&type=$_GET[type]' onclick='return confirmdelete()' class='btn btn-danger'>Delete</a></td>
                                                                    </tr>";
                                                            }
                                                            ?>
                                                        </tbody>
                                                    </table>      
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
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
<script>
$(document).ready( function () {
    $('#myTable').DataTable();
} );
</script>
<script>
function confirmdelete()
{
    if(confirm('Are you sure want to delete this record?'))
    {
        return true;
    }
    else
    {
        return false;
    }
}
</script>
