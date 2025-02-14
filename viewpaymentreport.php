<?php
include("header.php");

if(isset($_GET['delid'])) {
    $sql="DELETE FROM payment WHERE paymentid='$_GET[delid]'";
    $qsql = mysqli_query($con,$sql);
    if(mysqli_affected_rows($con) == 1) {
        echo "<script>alert('Payment record deleted successfully...');</script>";
        echo "<script>window.location='viewpayment.php';</script>";
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
                    <div class="row">
                        <div class="col-md-12">
                            <div class="checkout-left">
                                <div class="panel-group" id="accordion">

                                    <!-- Billing Details -->
                                    <div class="panel panel-default aa-checkout-billaddress">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a data-parent="#accordion" >
                                                    View Payment
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapseThree">
                                            <div class="panel-body">
                                                <table id="myTable" class="table table-striped table-bordered">
                                                    <thead>
                                                        <tr>
                                                            <th>Advertiser</th>
                                                            <th>Payment Date</th>
                                                            <th>Particulars</th>
                                                            <th>Paid Amount</th>
                                                            <th>Action</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <?php
                                                        $sql= "SELECT payment.*,advertiser.* FROM payment LEFT JOIN advertiser ON payment.advertiserid=advertiser.advertiserid WHERE payment.status!='' ";
                                                        if(isset($_GET['paidfor'])) {
                                                            $sql .= " AND payment.paymenttype='$_GET[paidfor]'";
                                                        }
                                                        $totcollection = 0;
                                                        $qsql = mysqli_query($con,$sql);
                                                        echo mysqli_error($con);
                                                        while($rs = mysqli_fetch_array($qsql)) {
                                                            $totcollection += $gtotal;
                                                            $cgst = ($rs['cgst'] * $rs['paidamt'])/100;
                                                            $sgst = ($rs['sgst'] * $rs['paidamt'])/100;
                                                            $gtotal = $rs['paidamt'] + ($cgst + $sgst);
                                                            echo "<tr>
                                                                    <td>$rs[advertisername]</td>
                                                                    <td>$rs[paymentdate]</td>
                                                                    <td>$rs[paymenttype]</td>
                                                                    <td>Total  - ₹$rs[paidamt]<br>CGST - ₹$cgst<br>SGST - ₹$sgst <br><b>Grand Total - ₹$gtotal</b></td>
                                                                    <td><a href='viewpayment.php?delid=$rs[paymentid]' onclick='return confirmdelete()' class='btn btn-danger'>Delete</a></td>
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
$(document).ready(function () {
    $('#myTable').DataTable();
});

function confirmdelete() {
    return confirm('Are you sure want to delete this record?');
}
</script>
