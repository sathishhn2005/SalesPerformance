<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProspectAddScreenAdd.aspx.cs" Inherits="SalesPerformanceUI.ProspectAddScreenAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">






    <!DOCTYPE html>
    <html>
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>TotalNet</title>
        <meta name="description" content="">
        <meta name="author" content="">
        <link href="/img/logo/logo.png" rel="icon">
        <title>MotorInsurance - Dashboard</title>
        <link href="/vendor/morris/morris.css" rel="stylesheet" type="text/css" />
        <link href="/vendor/fontawesome-free/css/all.css" rel="stylesheet" type="text/css" />
        <link href="/vendor/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
        <link href="/css/ruang-admin.css" rel="stylesheet" />
        <link href="/vendor/smart_wizard/css/smart_wizard_all.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/dt-1.10.23/datatables.min.css" />
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.6.5/css/buttons.bootstrap4.min.css" />

        <script src="/vendor/jquery/jquery.js"></script>


    </head>
    <body id="page-top">

        <div id="wrapper">
            <!-- Sidebar -->
            <ul class="navbar-nav sidebar sidebar-light accordion" id="accordionSidebar">
                <a class="sidebar-brand d-flex align-items-center justify-content-center" href="#">

                    <div class="sidebar-brand-text mx-2">Sales<span class="logo-sub">Net</span></div>
                </a>
                <hr class="sidebar-divider mb-3 mt-0" />
                <div class="sidebar-heading">
                    Dashboard
                </div>

                <li class="nav-item ">
                    <a class="nav-link" href="/Index">
                        <i class="fas fa-fw fa-star"></i>
                        <span>MIS Dashboard</span>
                    </a>
                </li>
                <li class="nav-item d-none">
                    <a class="nav-link" href="/Home/MotorDB">
                        <i class="fas fa-fw fa-car"></i>
                        <span>Motor Policies</span>
                    </a>
                </li>
                <li class="nav-item  d-none">
                    <a class="nav-link" href="/Home/IndividualDB">
                        <i class="fas fa-fw fa-user"></i>
                        <span>Individual life Policies</span>
                    </a>
                </li>

                <li class="nav-item  d-none">
                    <a class="nav-link" href="/Home/DomesticDB">
                        <i class="fas fa-fw fa-users"></i>Select ClassCode
                        <span>Domestic Helper Policy</span>
                    </a>
                </li>
                <hr class="sidebar-divider">
                <div class="sidebar-heading">
                </div>
                <li class="nav-item">
                    <a class="nav-link" href="/MasterDatabase">
                        <i class="fas fa-fw fa-car"></i>
                        <span>Transaction</span>
                    </a>
                </li>
                <li class="nav-item  d-none">
                    <a class="nav-link" href="/Home/CallBack">
                        <i class="fas fa-fw fa-phone"></i>
                        <span>Call Back</span>
                    </a>
                </li>
                <li class="nav-item  d-none">
                    <a class="nav-link" href="/BulkUpload/Index">
                        <i class="fas fa-fw fa-share"></i>
                        <span>Delegate</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/BulkUpload/BulkUpload">
                        <i class="fas fa-fw fa-mail-bulk"></i>
                        <span>Bulk Upload</span>
                    </a>
                </li>
                <li class="nav-item hide">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseBootstrap"
                        aria-expanded="true" aria-controls="collapseBootstrap">
                        <i class="far fa-fw fa-window-maximize"></i>

                    </a>
                    <div id="collapseBootstrap" class="collapse" aria-labelledby="headingBootstrap" data-parent="#accordionSidebar">
                        <div class="bg-white py-2 collapse-inner rounded">

                            <a class="collapse-item" href="#">Uploading Renewal policy</a>
                            <a class="collapse-item" href="#">Uploading of raw data</a>
                            <a class="collapse-item" href="#">All renewal policies</a>
                            <a class="collapse-item" href="#">Search Policies</a>
                        </div>
                    </div>
                </li>
                <hr class="sidebar-divider">
                <div class="version" id="version-MotorInsurance"></div>
            </ul>
            <!-- Sidebar -->
            <div id="content-wrapper" class="d-flex flex-column">
                <div id="content">
                    <!-- TopBar -->
                    <nav class="navbar navbar-expand navbar-light bg-navbar topbar static-top">
                        <button id="sidebarToggleTop" class="btn btn-link rounded-circle mr-3">
                            <i class="fa fa-bars"></i>
                        </button>
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item dropdown no-arrow">
                                <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown"
                                    aria-haspopup="true" aria-expanded="false">
                                    <i class="fas fa-search fa-fw"></i>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                    aria-labelledby="searchDropdown">
                                    <form class="navbar-search">
                                        <div class="input-group">
                                            <input type="text" class="form-control bg-light border-1 small"
                                                placeholder="What do you want to look for?" aria-label="Search" aria-describedby="basic-addon2"
                                                style="border-color: #3f51b5;">
                                            <div class="input-group-append">
                                                <button class="btn btn-primary" type="button">
                                                    <i class="fas fa-search fa-sm"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </li>
                            <li class="nav-item dropdown no-arrow mx-1 d-none">
                                <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown"
                                    aria-haspopup="true" aria-expanded="false">
                                    <i class="fas fa-bell fa-fw"></i>
                                    <span class="badge badge-danger badge-counter">3+</span>
                                </a>
                                <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                    aria-labelledby="alertsDropdown">
                                    <h6 class="dropdown-header">Alerts Center
                                    </h6>
                                    <a class="dropdown-item d-flex align-items-center" href="#">
                                        <div class="mr-3">
                                            <div class="icon-circle bg-primary">
                                                <i class="fas fa-file-alt text-white"></i>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="small text-gray-500">December 12, 2019</div>
                                            <span class="font-weight-bold">A new monthly report is ready to download!</span>
                                        </div>
                                    </a>
                                    <a class="dropdown-item d-flex align-items-center" href="#">
                                        <div class="mr-3">
                                            <div class="icon-circle bg-success">
                                                <i class="fas fa-donate text-white"></i>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="small text-gray-500">December 7, 2019</div>
                                            $290.29 has been deposited into your account!
                                        </div>
                                    </a>
                                    <a class="dropdown-item d-flex align-items-center" href="#">
                                        <div class="mr-3">
                                            <div class="icon-circle bg-warning">
                                                <i class="fas fa-exclamation-triangle text-white"></i>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="small text-gray-500">December 2, 2019</div>
                                            Spending Alert: We've noticed unusually high spending for your account.
                                        </div>
                                    </a>
                                    <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
                                </div>
                            </li>
                            <li class="nav-item dropdown no-arrow mx-1 d-none">
                                <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown"
                                    aria-haspopup="true" aria-expanded="false">
                                    <i class="fas fa-envelope fa-fw"></i>
                                    <span class="badge badge-warning badge-counter">2</span>
                                </a>
                                <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                    aria-labelledby="messagesDropdown">
                                    <h6 class="dropdown-header">Message Center
                                    </h6>
                                    <a class="dropdown-item d-flex align-items-center" href="#">
                                        <div class="dropdown-list-image mr-3">
                                            <img class="rounded-circle" src="/img/man.png" style="max-width: 60px" alt="">
                                            <div class="status-indicator bg-success"></div>
                                        </div>
                                        <div class="font-weight-bold">
                                            <div class="text-truncate">
                                                Hi there! I am wondering if you can help me with a problem I've been
                                            having.
                                            </div>
                                            <div class="small text-gray-500">Udin Cilok · 58m</div>
                                        </div>
                                    </a>
                                    <a class="dropdown-item d-flex align-items-center" href="#">
                                        <div class="dropdown-list-image mr-3">
                                            <img class="rounded-circle" src="/img/girl.png" style="max-width: 60px" alt="">
                                            <div class="status-indicator bg-default"></div>
                                        </div>
                                        <div>
                                            <div class="text-truncate">
                                                Am I a good boy? The reason I ask is because someone told me that people
                                            say this to all dogs, even if they aren't good...
                                            </div>
                                            <div class="small text-gray-500">Jaenab · 2w</div>
                                        </div>
                                    </a>
                                    <a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>
                                </div>
                            </li>
                            <li class="nav-item dropdown no-arrow mx-1 d-none">
                                <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown"
                                    aria-haspopup="true" aria-expanded="false">
                                    <i class="fas fa-tasks fa-fw"></i>
                                    <span class="badge badge-success badge-counter">3</span>
                                </a>
                                <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                    aria-labelledby="messagesDropdown">
                                    <h6 class="dropdown-header">Task
                                    </h6>
                                    <a class="dropdown-item align-items-center" href="#">
                                        <div class="mb-3">
                                            <div class="small text-gray-500">
                                                Design Button
                                            <div class="small float-right"><b>50%</b></div>
                                            </div>
                                            <div class="progress" style="height: 12px;">
                                                <div class="progress-bar bg-success" role="progressbar" style="width: 50%" aria-valuenow="50"
                                                    aria-valuemin="0" aria-valuemax="100">
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="dropdown-item align-items-center" href="#">
                                        <div class="mb-3">
                                            <div class="small text-gray-500">
                                                Make Beautiful Transitions
                                            <div class="small float-right"><b>30%</b></div>
                                            </div>
                                            <div class="progress" style="height: 12px;">
                                                <div class="progress-bar bg-warning" role="progressbar" style="width: 30%" aria-valuenow="30"
                                                    aria-valuemin="0" aria-valuemax="100">
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="dropdown-item align-items-center" href="#">
                                        <div class="mb-3">
                                            <div class="small text-gray-500">
                                                Create Pie Chart
                                            <div class="small float-right"><b>75%</b></div>
                                            </div>
                                            <div class="progress" style="height: 12px;">
                                                <div class="progress-bar bg-danger" role="progressbar" style="width: 75%" aria-valuenow="75"
                                                    aria-valuemin="0" aria-valuemax="100">
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                    <a class="dropdown-item text-center small text-gray-500" href="#">View All Taks</a>
                                </div>
                            </li>
                            <div class="topbar-divider d-none d-sm-block"></div>
                            <li class="nav-item dropdown no-arrow">
                                <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown"
                                    aria-haspopup="true" aria-expanded="false">

                                    <span class="ml-2 d-none d-lg-inline text-white font-16">Welcome <b></b></span>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">

                                    <a class="dropdown-item" href="/Home/Login">
                                        <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                        Logout
                                    </a>
                                </div>
                            </li>
                        </ul>
                    </nav>
                    <!-- Topbar -->
                    <div class="navbar navbar-inverse navbar-fixed-top hide">
                        <div class="container">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                                <a class="navbar-brand" href="/Home/Index">MotorApp</a>
                            </div>
                            <div class="navbar-collapse collapse">
                                <ul class="nav navbar-nav">
                                    <li><a href="/Home/Index">Home</a></li>
                                    <li><a href="/Home/Login">Login</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="container-fluid" id="container-wrapper">


                        <div id="wrapper">
                            <!-- Sidebar -->

                            <div id="content-wrapper" class="d-flex flex-column">
                                <div id="content">
                                    <!-- TopBar -->
                                    <!-- Topbar -->
                                    <!-- Container Fluid-->

                                    <div class="row">
                                        <div class="col-lg-12 mb-4">
                                            <div class="card">
                                                <div class="card-body">

                                                    <div id="step-1" class="tab-pane" role="tabpanel" aria-labelledby="step-1">
                                                        <%-- <div class="col-6">
                                                            <div class="form-group row">
                                                                <label class="col-sm-4 col-form-label text-right font-bold" for="DraftNo">Policy No </label>

                                                                <select name="PloiciesCat" class="form-control form-control-sm text-box single-line" id="PoliciesDropdown">

                                                                    <option value="NewPolicies">New Policies</option>
                                                                    <option value="RenewalPolicies">Renewal Policies</option>

                                                                </select>

                                                            </div>
                                                        
                                                            <div class="form-group row">
                                                                <label class="col-sm-4 col-form-label text-right font-bold" for="DraftNo">Policy No </label>

                                                                <select name="PloiciesCat" class="form-control form-control-sm text-box single-line" id="ClassCode">
                                                                    <option value="2401">2401</option>
                                                                    <option value="3301">3301</option>
                                                                    <option value="3402">3402</option>

                                                                </select>

                                                            </div>
                                                        </div>
                                                        --%>


                                                        <div class="form-group row">
                                                              <asp:Label ID="lblProdCode" CssClass="col-sm-4 col-form-label text-right font-bold" runat="server">Product Code</asp:Label>

                                                            <div class="col-md-5">
                                                                <asp:DropDownList ID="PoliciesName" CssClass="form-control form-control-sm text-box single-line" runat="server">
                                                                <asp:ListItem Enabled="true" Text="Term Life" Value= "Term Life"></asp:ListItem>
                                                                <asp:ListItem Text="Credit Life" Value="Credit Life"></asp:ListItem>
                                                                <asp:ListItem Text="Fire" Value="Fire"></asp:ListItem>
                                                                    <asp:ListItem Text="ICL" Value="ICL"></asp:ListItem>
                                                                 </asp:DropDownList>





                                                            </div>
                                                        </div>

                                                      <div class="form-group row">
                                                            <label class="col-sm-4 col-form-label text-right font-bold" for="DraftNo">Producer</label>

                                                            <div class="col-md-5">



                                                                <asp:DropDownList ID="DDProducer" CssClass="form-control form-control-sm text-box single-line" runat="server" OnSelectedIndexChanged="DDProducer_SelectedIndexChanged" AutoPostBack="true">
                                                                    <asp:ListItem Text="Select" Value="0"></asp:ListItem>
                                                                    
                                                                    <asp:ListItem Text="Agent" Value="Agent"></asp:ListItem>
                                                                    <asp:ListItem Text="Broker" Value="Broker"></asp:ListItem>
                                                                    <asp:ListItem Text="Branches" Value="Branches"></asp:ListItem>
                                                                    <asp:ListItem Text="Bank Assurance" Value="Bank Assurance"></asp:ListItem>
                                                                    <asp:ListItem Text="Direct Head Office" Value="Direct Head Office"></asp:ListItem>
                                                                    <asp:ListItem Text="Direct Corporate Office" Value="Direct Corporate Office"></asp:ListItem>
                                                                    <asp:ListItem Text="Direct Retail Office" Value="Direct Retail Office"></asp:ListItem>

                                                                </asp:DropDownList>



                                                            </div>
                                                        </div>
                                                        <div class="form-group row">
                                                            <label class="col-sm-4 col-form-label text-right font-bold" for="DraftNo">Producer Name</label>
                                                            <div class="col-md-5">

                                                                <asp:DropDownList ID="DDProducerName" CssClass="form-control form-control-sm text-box single-line" runat="server">
                                                                    

                                                                </asp:DropDownList>


                                                            </div>
                                                        </div>



                                                        <div class="form-group row">

                                                              <asp:Label ID="lblCustName" CssClass="col-sm-4 col-form-label text-right font-bold" runat="server">Customer Name</asp:Label>


                                                            <div class="col-md-5">
                                                                <asp:TextBox ID="txtCustName" runat="server" CssClass="form-control form-control-sm text-box single-line"></asp:TextBox>

                                                            </div>
                                                        </div>

                                                        <div class="form-group row">
                                                            <asp:Label ID="lblEstPremium" CssClass="col-sm-4 col-form-label text-right font-bold" runat="server">Estimated Premium</asp:Label>

                                                            <div class="col-md-5">
                                                                <asp:TextBox ID="txtEstPremium" runat="server" CssClass="form-control form-control-sm text-box single-line"></asp:TextBox>

                                                            </div>
                                                        </div>


                                                        <div class="form-group row">
                                                            <asp:Label ID="lblEstDateConv" CssClass="col-sm-4 col-form-label text-right font-bold" runat="server">Expected Date Of Conversion</asp:Label>

                                                            <div class="col-md-5">
                                                                <asp:TextBox ID="txtExpDateOfConv" runat="server" CssClass="form-control form-control-sm text-box single-line"></asp:TextBox>

                                                            </div>
                                                        </div>


                                                        <div class="form-group row">
                                                            <asp:Label ID="lblPolicyType" CssClass="col-sm-4 col-form-label text-right font-bold" runat="server">Policy Type</asp:Label>


                                                            <div class="col-md-5">
                                                                <asp:TextBox ID="txtPolicyType" runat="server" CssClass="form-control form-control-sm text-box single-line"></asp:TextBox>

                                                            </div>
                                                        </div>

                                                        <div class="form-group row">
                                                            <asp:Label ID="lblExpiryDate" CssClass="col-sm-4 col-form-label text-right font-bold" runat="server">Expiry Date</asp:Label>

                                                            <div class="col-md-5">
                                                                <asp:TextBox ID="txtExpDate" runat="server" CssClass="form-control form-control-sm text-box single-line"></asp:TextBox>

                                                            </div>
                                                        </div>
                                                        <div class="form-group row">
                                                            <asp:Label ID="lblExpRate" CssClass="col-sm-4 col-form-label text-right font-bold" runat="server">Expiry Rate</asp:Label>

                                                            <div class="col-md-5">
                                                                <asp:TextBox ID="txtExpRate" runat="server" CssClass="form-control form-control-sm text-box single-line"></asp:TextBox>

                                                            </div>
                                                        </div>

                                                            <div class="form-group row">
                                                            <asp:Label ID="lblStatus" CssClass="col-sm-4 col-form-label text-right font-bold" runat="server">Status</asp:Label>

                                                            <div class="col-md-5">
                                                                <asp:DropDownList ID="DDStatus" CssClass="form-control form-control-sm text-box single-line" runat="server">
                                                                <asp:ListItem Enabled="true" Text="Converted Prospect" Value= "Converted Prospect"></asp:ListItem>
                                                                <asp:ListItem Text="Lost Proscpect" Value="Lost Proscpect"></asp:ListItem>
                                                                                                       </asp:DropDownList>
                                                            </div>
                                                        </div>
                          

                                                        <div class="col-md-6">


                                                            <div class="form-group row">
                                                                <asp:Button ID="Button2" runat="server" CssClass="col-2 ,btn btn-primary btn-sm" Text="Add Prospect " OnClick="Button2_Click" />

                                                                <asp:Button ID="Button1" runat="server" CssClass="col-2 ,btn btn-primary btn-sm" Text="Cancel " OnClick="Button1_Click" />

                                                                 <asp:Button ID="Button3" runat="server" CssClass="col-2 ,btn btn-primary btn-sm" Text="Update " OnClick="Button3_Click" />





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
                </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>

        <script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="/vendor/jquery-easing/jquery.easing.min.js"></script>
        <script src="/js/ruang-admin.js"></script>

        <script src="/vendor/morris/morris.js"></script>
        <script src="/vendor/chart.js/Chart.js"></script>
        <script src="/vendor/chart.js/utils.js"></script>
        <script src="/vendor/morris/raphael.min.js"></script>
        <script src="/vendor/pekeUpload/SimpleAjaxUploader.js"></script>
        <script src="/vendor/smart_wizard/js/jquery.smartWizard.js"></script>
        <script src="/vendor/Bootstrap-Checkbox/bootstrap4-toggle.js"></script>
        <script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.23/datatables.min.js"></script>
        <script type="text/javascript" src="https://cdn.datatables.net/1.10.23/js/dataTables.bootstrap4.min.js"></script>
        <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.6.5/js/dataTables.buttons.min.js"></script>
        <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.6.5/js/buttons.bootstrap4.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
        <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.6.5/js/buttons.html5.min.js"></script>
        <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.6.5/js/buttons.print.min.js"></script>
    </body>
    </html>


</asp:Content>
