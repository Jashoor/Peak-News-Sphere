<?php
include("header.php");
	$sqlarticle= "SELECT newscontent.*,newscategory.category FROM newscontent LEFT JOIN newscategory ON newscontent.newscategoryid=newscategory.newscategoryid WHERE newscontent.status='Active' ";	
	if($_GET['newstype'] != "")
	{
		$sqlarticle = $sqlarticle . " AND newscontent.newstype='$_GET[newstype]'";
	}	
	if($_GET['newscategoryid'] != "")
	{
		$sqlarticle = $sqlarticle . " AND newscontent.newscategoryid='$_GET[newscategoryid]'";
	}
	$qsqlarticle = mysqli_query($con,$sqlarticle);
	$rsarticle = mysqli_fetch_array($qsqlarticle);
?>

    <!--  catg header banner section -->
    <section id="aa-catg-head-banner">
   <img src="img/fashion/fashion-header-bg-8.jpg" alt="fashion img" style="width:100%;">
   <div class="aa-catg-head-banner-area">
     <div class="container">
      <div class="aa-catg-head-banner-content">
        <h2><?php echo $_GET['newstype']; ?></h2>
        <ol class="breadcrumb">
          <li><a href="#"><?php echo $rsarticle['category']; ?></a></li>
        </ol>
      </div>
     </div>
   </div>
  </section>
  <!--  / catg header banner section -->

  <!--  Blog Archive -->
  <section id="aa-blog-archive">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="aa-blog-archive-area">
            <div class="row">
              <div class="col-md-9">
                <div class="aa-blog-content">
                  <div class="row">
	<?php
	$sql= "SELECT newscontent.*,newscategory.category FROM newscontent LEFT JOIN newscategory ON newscontent.newscategoryid=newscategory.newscategoryid WHERE newscontent.status='Active' ";	
	if($_GET['newstype'] != "")
	{
		$sql = $sql . " AND newscontent.newstype='$_GET[newstype]'";
	}	
	if($_GET['newscategoryid'] != "")
	{
		$sql = $sql . " AND newscontent.newscategoryid='$_GET[newscategoryid]'";
	}
	if($_GET['txtsearch'] != "")
	{
		$sql = $sql . " AND newscontent.title LIKE '%$_GET[txtsearch]%' OR newscontent.newsdescription LIKE '%$_GET[txtsearch]%'";
	}
  $sql = $sql . " ORDER BY newscontent.newsid DESC";
	$qsql = mysqli_query($con,$sql);
	while($rs = mysqli_fetch_array($qsql))
	{
		if($rs['images'] != "")
		{
			if(file_exists("imgarticle/".$rs['images']))
			{
				$img = "imgarticle/".$rs['images'];
			}
		}
		else
		{
				$img = "img/testimonial-bg-1.jpg";
		}
	?>
                    <div class="col-md-4 col-sm-4">
                      <article class="aa-blog-content-single">    	
                        <figure class="aa-blog-img">
                          <a href="newsdetailed.php?newsid=<?php echo $rs['newsid']; ?>&newstype=<?php   echo  $_GET['newstype']; ?>&newscategoryid=<?php echo $_GET['newscategoryid']; ?>"><img src="<?php echo $img; ?>" style="heighT: 200px;width: 100%;" ></a>
                        </figure>
						                    
                        <h4><a href="newsdetailed.php?newsid=<?php echo $rs['newsid']; ?>&newstype=<?php echo  $_GET['newstype']; ?>&newscategoryid=<?php echo $_GET['newscategoryid']; ?>"><?php echo $rs['title']; ?></a></h4>
                        <p><?php echo substr($rs["newsdescription"], 0, 100); ?></p>
                        <div class="aa-article-bottom">
                          <div class="aa-post-author">
                            Category -<a href="#"><?php echo $rs['category']; ?></a> 
                          </div>
                          <div class="aa-post-date">
                          <a href="newsdetailed.php?newsid=<?php echo $rs['newsid']; ?>&newstype=<?php   echo  $_GET['newstype']; ?>&newscategoryid=<?php echo $_GET['newscategoryid']; ?>">Read more>></a>
                          </div>
                        </div>
                      </article>
                    </div>
	<?php
	}
	?>	
				
                  </div>
                </div>
                <!--  Blog Pagination -->

              </div>
              <div class="col-md-3"><?php
					include("sidebarads.php");
					?></div>
            </div>
           
          </div>
        </div>
      </div>
    </div>
  </section>
  <!--  / Blog Archive -->



  <?php
  include("footer.php");
  ?>
  