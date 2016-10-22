<?php $route=$self -> request -> get['route']; ?>
<section id="col-left" class="col-left-nano">
     <div id="col-left-inner" class="col-left-nano-content">
        <div id="user-left-box" class="clearfix hidden-sm hidden-xs">
           <img alt="" src="img/samples/scarlet-159.png"/>
           <div class="user-box">
              <span class="name">
              Welcome
            
              </span>
              <span class="status">
              <i class="fa fa-circle"></i> Online
              </span>
           </div>
        </div>
        <div class="collapse navbar-collapse navbar-ex1-collapse" id="sidebar-nav">
           <ul class="nav nav-pills nav-stacked">
                <li <?php echo $route==='account/dashboard' ? "class='active'" : '' ?>>
                    <a href="home.html"><i class="fa fa-dashboard"></i><span class="nav-label">Home</span> </a>
                </li>
                <li <?php echo $route==='account/pd' || $route==='account/pd/create' || $route==='account/pd/transfer' || $route==='account/pd/confirm' ? "class='active'" : '' ?>><a href="investment-detail.html"><i class="fa fa-table"></i><span class="nav-label">Investment</span> </a> </li>
                <li <?php echo $route==='account/refferal' ? "class='active'" : '' ?>><a href="refferal"><i class="fa fa-envelope"></i><span class="nav-label">Refferals</span> </a> </li>
                <li <?php echo $route==='account/personal' ? "class='active'" : '' ?>><a href="column-tree.html"><i class="fa fa-bar-chart-o"></i><span class="nav-label">Column Tree</span> </a> </li>
                <li <?php echo $route==='account/personaly' ? "class='active'" : '' ?>><a href="row-tree.html"><i class="fa fa-edit"></i> <span class="nav-label">Row Tree</span> </a> </li>
                <li class="has_sub <?php echo $route==='account/transaction_history' ? "active" : '' ?>">
                    <a class="dropdown-toggle"><i class="fa fa-desktop"></i>
                       <span class="sub-nav-icon"> <i class="stroke-arrow"></i>  Bonus / Profit History</span><i class="fa fa-chevron-circle-right drop-icon"></i>
                    </a>
                    <ul class="submenu" >
                        <li <?php echo $route==='account/setting' ? "class='active'" : '' ?>>
                            <a href="everyday-profit.html">
                                Daily Profit
                                </span>
                            </a>
                        </li>
                        <li <?php echo $route==='account/setting/wallet' ? "class='active'" : '' ?>> <a href="binary-profit.html"><span class="nav-label">Pairing Bonus</span> </a> </li>
                        <li <?php echo $route==='account/setting/wallet' ? "class='active'" : '' ?>> <a href="refferal-profit.html"><span class="nav-label">Refferal Profit</span> </a> </li>
                    </ul>
                </li>
                <li class="has_sub <?php echo $route==='account/setting' || $route==='account/setting/password_login' || $route==='account/setting/password_transaction' || $route==='account/setting/wallet' ? "active" : '' ?>""> <a  class="dropdown-toggle">
                        <i class="fa fa-file-text-o"></i><span class="sub-nav-icon"> Account</span><i class="fa fa-chevron-circle-right drop-icon"></i>
                    </a>
                    <ul class="submenu">
                        <li <?php echo $route==='account/setting' ? "class='active'" : '' ?>>
                            <a href="your-profile.html">
                                Your Profiles
                                </span>
                            </a>
                        </li>
                        <li <?php echo $route==='account/setting/password_login' ? "class='active'" : '' ?>> <a href="change-login-password.html"><span class="nav-label"> Change Password</span> </a> </li>
          
                        <li <?php echo $route==='account/setting/wallet' ? "class='active'" : '' ?>> <a href="your-wallet.html"><span class="nav-label"> <?php echo $lang['text_wallet']; ?></span> </a> </li>
                    </ul>
                </li>
               <li>
                <a href="<?php echo $self -> url -> link('account/logout', '', 'SSL'); ?>"><i class="fa fa-times" aria-hidden="true"></i><span class="nav-label"> <?php echo $lang['logout']; ?> </span> </a>
                </li>    
           </ul>
        </div>
     </div>
  </section>
</div>
    <!-- ========== Left Sidebar Start ========== -->
