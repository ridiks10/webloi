<?php echo $header; ?>
<?php echo $column_left; ?>
<div id="content">
    <div class="page-header">
        <div class="container-fluid">
            <h1>
                <?php echo $heading_title; ?>
            </h1>
            <ul class="breadcrumb">
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                <li>
                    <a href="
                        
                        <?php echo $breadcrumb['href']; ?>">
                        <?php echo $breadcrumb['text']; ?>
                    </a>
                </li>
                <?php } ?>
            </ul>
        </div>
    </div>
    <div class="container-fluid">
        <?php if ($error_install) { ?>
        <div class="alert alert-danger">
            <i class="fa fa-exclamation-circle"></i>
            <?php echo $error_install; ?>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
        <?php } ?>
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-6">
                <?php echo $customer; ?>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="tile">
                    <div class="tile-heading">Tổng số thành viên cuối tháng</div>
                    <div class="tile-body">
                        <i class="fa fa-user"></i>
                        <h2 class="pull-right">
                            <?php echo $totalNewLast; ?>
                        </h2>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="tile">
                    <div class="tile-heading">Số thành viên tháng hiện tại</div>
                    <div class="tile-body">
                        <i class="fa fa-user"></i>
                        <h2 class="pull-right">
                            <?php echo $totalNew; ?>
                        </h2>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="tile">
                    <div class="tile-heading">Số thành viên không hoạt động</div>
                    <div class="tile-body">
                        <i class="fa fa-user"></i>
                        <h2 class="pull-right">
                            <?php echo $totalCusOff; ?>
                        </h2>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="tile">
                    <div class="tile-heading">Số người truy cập hôm qua</div>
                    <div class="tile-body">
                        <i class="fa fa-eye"></i>
                        <h2 class="pull-right">
                            <?php echo $onlineYesterday; ?>
                        </h2>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="tile">
                    <div class="tile-heading">Tổng số người truy cập</div>
                    <div class="tile-body">
                        <i class="fa fa-eye"></i>
                        <h2 class="pull-right">
                            <?php echo $onlineToday; ?>
                        </h2>
                    </div>
                </div>
            </div>
            
             <!-- <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="tile">
                    <div class="tile-heading">customer provide donation finish</div>
                    <div class="tile-body">
                        <i class="fa fa-eye"></i>
                        <h2 class="pull-right">
                            <?php echo $totalFinish; ?>
                        </h2>
                    </div>
                </div>
            </div> -->
            <!-- <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="tile">
                    <div class="tile-heading">Total PD finish today</div>
                    <div class="tile-body">
                        <i class="fa fa-eye"></i>
                        <h2 class="pull-right">
                            <?php echo $total_PD_Current_Finish; ?>
                        </h2>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="tile">
                    <div class="tile-heading">Total PD march today</div>
                    <div class="tile-body">
                        <i class="fa fa-eye"></i>
                        <h2 class="pull-right">
                            <?php echo $total_PD_Current_March; ?>
                        </h2>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="tile">
                    <div class="tile-heading">Total GD finish today</div>
                    <div class="tile-body">
                        <i class="fa fa-eye"></i>
                        <h2 class="pull-right">
                            <?php echo $total_GD_Current_Finish; ?>
                        </h2>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="tile">
                    <div class="tile-heading">Total GD march today</div>
                    <div class="tile-body">
                        <i class="fa fa-eye"></i>
                        <h2 class="pull-right">
                            <?php echo $total_GD_Current_March; ?>
                        </h2>
                    </div>
                </div>
            </div> -->
        </div>
    </div>
</div>
<?php echo $footer; ?>