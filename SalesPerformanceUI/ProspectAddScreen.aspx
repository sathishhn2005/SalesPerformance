<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProspectAddScreen.aspx.cs" Inherits="SalesPerformanceUI.ProspectAddScreen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

 




    <link href="/vendor/morris/morris.css" rel="stylesheet" type="text/css" />
    <link href="/vendor/fontawesome-free/css/all.css" rel="stylesheet" type="text/css" />
    <link href="/vendor/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="/css/ruang-admin.css" rel="stylesheet" />
    <link href="/vendor/smart_wizard/css/smart_wizard_all.css" rel="stylesheet" type="text/css" />
   
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.6.5/css/buttons.bootstrap4.min.css" />

    <script src="/vendor/jquery/jquery.js"></script>


    <div id="page-top">

        <div id="wrapper">
            <!-- Sidebar -->
            <ul class="navbar-nav sidebar sidebar-light accordion" id="accordionSidebar">
                <a class="sidebar-brand d-flex align-items-center justify-content-center" href="#">

                    <div class="sidebar-brand-text mx-2">Total<span class="logo-sub">Net</span></div>
                </a>
                <hr class="sidebar-divider mb-3 mt-0" />
                <div class="sidebar-heading">
                    Dashboard
                </div>

                <li class="nav-item ">
                    <a class="nav-link" href="/Home/Index">
                        <i class="fas fa-fw fa-star"></i>
                        <span>MIS Dashboard</span>
                    </a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link" href="indexBI">
                        <i class="fas fa-fw fa-star"></i>
                        <span>BI Dashboard</span>
                    </a>
                </li>
                    <hr class="sidebar-divider">
            <div class="sidebar-heading">

            </div>
             <div class="sidebar-heading">
                Screens
            </div>
                <li class="nav-item">
                <a class="nav-link" href="MasterDatabase.aspx">
                    <i class="fas fa-fw fa-car"></i>
                    <span>Transaction</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Target Fixing Main.aspx">
                    <i class="fas fa-fw fa-phone"></i>
                    <span>Traget Fixing</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="ProspectAddScreen.aspx">
                    <i class="fas fa-fw fa-user"></i>
                    <span>Prospect Add Screen</span>
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
                    </div>No Of Prospect Visited
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

                                    <span class="ml-2 d-none d-lg-inline text-white font-16">Welcome <b>admin</b></span>
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
                                    <li><a href="/">Login</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="container-fluid" id="container-wrapper">




                        <style type="text/css">
                            .ui-autocomplete {
                                max-height: 100px;
                                overflow-y: auto;
                                /* prevent horizontal scrollbar */
                                overflow-x: hidden;
                            }
                            /* IE 6 doesn't support max-height
    * we use height instead, but this forces the menu to always be this tall
    */
                            * html .ui-autocomplete {
                                height: 100px;
                            }

                            .fixed-height {
                                padding: 1px;
                                max-height: 200px;
                                overflow: auto;
                            }
                        </style>
                        <div class="d-sm-flex align-items-center justify-content-between mb-4">
                            <h1 class="h3 mb-0 text-gray-800">PROSPECT ADD SCREEN</h1>
                            <ol class="breadcrumb my-2">
                                <li class="breadcrumb-item">Home
                                </li>
                                <li class="breadcrumb-item">Masters</li>

                            </ol>
                        </div>
                        <div class="row">
                            <div class="col-lg-12 mb-4">
                                <div class="card mb-3">
                                    <div class="card-header py-2 d-flex flex-row align-items-center justify-content-between">
                                        <h6 class="m-0 font-weight-bold text-primary">Search</h6>
                                    </div>
                                   
                                        <div class="card-body">
                                            <div class="row">
                                                
                                                    <div class="col-2">

                                                        <asp:TextBox ID="txtproductName" runat="server" CssClass="form-control form-control-sm  mb-3" placeholder="ProductName"></asp:TextBox>
                            
                                                    </div>
                                                     <div class="col-2">
                                                         <asp:TextBox ID="txtCustName" runat="server" CssClass="form-control form-control-sm  mb-3" placeholder="CustomerName"></asp:TextBox>
                              
                                                     </div>

                                                    <div class="col-2">
                                                          <asp:TextBox ID="txtPolicyType" runat="server" CssClass="form-control form-control-sm  mb-3" placeholder="PolicyType"></asp:TextBox>
                               
                                                    </div>
                                                    <div class="col-2">


                                                        <input class="form-control form-control-sm" id="PolicyFromDate" name="PolicyFromDate" type="date" value="{0:yyyy-MM-dd}" />
                                                    </div>
                                                    <div class="col-2">


                                                        <input class="form-control form-control-sm" id="PolicyToDate" name="PolicyToDate" type="date" value="{0:yyyy-MM-dd}" />
                                                    </div>
                                                    <%--<div class="col-2">

                                <select class="form-control form-control-sm" id="Status" name="Status">
                                    <option value="">-- Select Status --</option>
                                    <option value="Lost">Lost</option>
                                    <option value="Renewed">Renewed</option>
                                    <option value="To Be Renewed">To Be Renewed</option>
                                    <option value="Under Process">Under Process</option>
                                </select>
                            </div>
                                                    --%>
                                                   
                                                   
                                                    <div class="col-2">


                                                    
                                                       <asp:Button ID="ButSearch" runat="server" CssClass="btn btn-primary btn-sm" Text="Search" OnClick="ButSearch_Click" />
                            
                                                       <asp:Button ID="ButClear" runat="server" CssClass="btn btn-secondary btn-sm waves-effect" Text="Clear" OnClick="ButClear_Click1"/>
                            
                                                    </div>

                                                     <asp:Button ID="ButAddProspect" runat="server" CssClass="btn btn-primary btn-sm" Text="Add Prospect Screen" OnClick="ButAddProspect_Click1"/>
                            
                                                
                                            </div>
                                        </div>
                                  
                                </div>

                                <div class="card-body">
                                    <div class="table-responsive">
                                        <asp:GridView runat="server" CssClass="table table-bordered" Width="100%" ID="ProspectGrid" 
                                            ShowHeaderWhenEmpty="true" AutoGenerateColumns="false" DataKeyNames="Id" 
                                            OnRowEditing="ProspectGrid_RowEditing">
                                            <Columns>
                                                <asp:BoundField DataField="Producer" HeaderText="Producer" />
                                                <asp:BoundField DataField="ProducerName" HeaderText="Producer Name" />
                                                <asp:BoundField DataField="ProductName" HeaderText="Product Name" />
                                                <asp:BoundField DataField="CustomerName" HeaderText="Customer Name" />
                                                <asp:BoundField DataField="EstdPremium" HeaderText="Estimated Premium" />
                                                <asp:BoundField DataField="ExpDateOfConv" HeaderText="Expected date of conversion" />
                                                <asp:BoundField DataField="PolicyType" HeaderText="Policy Type" />
                                                <asp:BoundField DataField="ExpiryDate" HeaderText="Expiry Date" />
                                                <asp:BoundField DataField="ExpiryRate" HeaderText="Expiry Rate" />
                                                 <asp:BoundField DataField="Status" HeaderText="Status" />
                                               
                                                <asp:TemplateField HeaderText="Actions" ItemStyle-Width="8%">
                                                    <ItemTemplate>
                                                        
                                                        <asp:LinkButton ID="lnkEdit" runat="server" CausesValidation="false" CommandArgument='<%#Eval("Id")%>' CommandName="Edit"><i class="align-middle fas fa-fw fa-pen"></i></asp:LinkButton>
                                                        <asp:LinkButton ID="lnkdelete" runat="server" CausesValidation="false" CommandArgument='<%#Eval("Id") %>' CommandName="Delete"><i class="align-middle fas fa-fw fa-trash "></i></asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                            </Columns>
                                        </asp:GridView>

                                        <%--    <asp:GridView ID="TransGrid" runat="server" CssClass="table table-bordered" Width="100%" DataKeyNames="CL_ClaimsNumber" AutoGenerateColumns="false" Visible="true" OnRowCommand="TransGrid_RowCommand" OnRowEditing="TransGrid_RowEditing" OnRowDeleting="TransGrid_RowDeleting" OnSelectedIndexChanged="TransGrid_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="CL_Month" HeaderText="Policy name" />
                            <asp:BoundField DataField="CL_Tpa" HeaderText="Policy No" />
                            <asp:BoundField DataField="CL_PolicyNumber" HeaderText="Gross Premium" />
                           
                            
                            <asp:TemplateField HeaderText="Actions" ItemStyle-Width="8%">
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkEdit" runat="server" CausesValidation="false" CommandArgument='<%#Eval("CL_ClaimsNumber")%>' CommandName="Edit"><i class="align-middle fas fa-fw fa-pen"></i></asp:LinkButton>
                                    <asp:LinkButton ID="lnkView" runat="server" CausesValidation="false" CommandArgument='<%#Eval("CL_ClaimsNumber") %>' CommandName="View"><i class="align-middle fas fa-fw fa-eye"></i></asp:LinkButton>
                                    <asp:LinkButton ID="lnkdelete" runat="server" CausesValidation="false" CommandArgument='<%#Eval("CL_ClaimsNumber") %>' CommandName="Delete"><i class="align-middle fas fa-fw fa-trash "></i></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                                        --%>
                                    </div>
                                </div>







                            </div>
                        </div>
                        <!-- sample modal content -->
                        <div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-xl">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title mt-0 text-center" id="myModalLabel">Premium Sheet</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <form id="formRenewal" class="form-horizontal">
                                            <div class="row">
                                                <div class="col-5 mx-auto">

                                                    <div class="form-group row mb-3">
                                                        <input type="hidden" name="InsuranceID" id="InsuranceID">
                                                        <label for="inputEmail3" class="col-3 col-form-label pt-0 font-14">Division Code</label>
                                                        <div class="col-9">
                                                            <input type="text" class="form-control form-control-sm" readonly name="DivisionCode" required id="txtDivisionCode">
                                                        </div>
                                                    </div>

                                                    <div class="form-group row mb-3">
                                                        <label for="inputEmail3" class="col-3 col-form-label pt-0 font-14">Product Code</label>
                                                        <div class="col-9">
                                                            <input type="text" class="form-control form-control-sm" readonly name="ProductCode" required id="txtProductCode">
                                                        </div>
                                                    </div>
                                                    <div class="form-group row mb-3">
                                                        <label for="inputEmail3" class="col-3 col-form-label pt-0 font-14">Product Name</label>
                                                        <div class="col-9">
                                                            <input type="text" class="form-control form-control-sm" readonly name="ProductName" required id="txtProductName">
                                                        </div>
                                                    </div>
                                                    <div class="form-group row mb-3">
                                                        <label for="inputEmail3" class="col-3 col-form-label pt-0 font-14">Business Type</label>
                                                        <div class="col-9">
                                                            <input type="text" class="form-control form-control-sm" readonly name="BusinessType" required id="txtBusinessType">
                                                        </div>
                                                    </div>
                                                    <div class="form-group row mb-3">
                                                        <label for="inputEmail3" class="col-3 col-form-label pt-0 font-14">Policy No</label>
                                                        <div class="col-9">
                                                            <input type="text" class="form-control form-control-sm" readonly name="PolicyNo" required id="txtPolicyNo">
                                                        </div>
                                                    </div>
                                                    <div class="form-group row mb-3">
                                                        <label for="inputEmail3" class="col-3 col-form-label pt-0 font-14">Assured Name</label>
                                                        <div class="col-9">
                                                            <input type="text" class="form-control form-control-sm" readonly name="AssuredName" required id="txtAssuredName">
                                                        </div>
                                                    </div>
                                                    <div class="form-group row mb-3">
                                                        <label for="inputEmail3" class="col-3 col-form-label pt-0 font-14">Assured Mobile</label>
                                                        <div class="col-9">
                                                            <input type="text" class="form-control form-control-sm" readonly name="AssuredMobile" required id="txtAssuredMobile">
                                                        </div>
                                                    </div>
                                                    <div class="form-group row mb-3">
                                                        <label for="inputEmail3" class="col-3 col-form-label pt-0 font-14">Customer Name</label>
                                                        <div class="col-9">
                                                            <input type="text" class="form-control form-control-sm" readonly name="CustomerName" required id="txtCustomerName">
                                                        </div>
                                                    </div>
                                                    <div class="form-group row mb-3">
                                                        <label for="inputEmail3" class="col-3 col-form-label pt-0 font-14">Source Code</label>
                                                        <div class="col-9">
                                                            <input type="text" class="form-control form-control-sm" readonly name="SourceCode" required id="txtSourceCode">
                                                        </div>
                                                    </div>
                                                    <div class="form-group row mb-3">
                                                        <label for="inputEmail3" class="col-3 col-form-label pt-0 font-14">Source Name</label>
                                                        <div class="col-9">
                                                            <input type="text" class="form-control form-control-sm" readonly name="SourceName" required id="txtSourceName">
                                                        </div>
                                                    </div>
                                                    <div class="form-group row mb-3">
                                                        <label for="inputEmail3" class="col-3 col-form-label pt-0 font-14">Customer Category</label>
                                                        <div class="col-9">
                                                            <input type="text" class="form-control form-control-sm" readonly name="CustomerCategory" required id="txtCustomerCategory">
                                                        </div>
                                                    </div>

                                                    <div class="form-group row mb-3">
                                                        <label for="inputEmail3" class="col-3 col-form-label pt-0 font-14">Sum Insured</label>
                                                        <div class="col-9">
                                                            <div class="input-group input-group-sm">
                                                                <div class="input-group-prepend">
                                                                    <span class="input-group-text" id="basic-addon1">OMR</span>
                                                                </div>
                                                                <input type="number" class="form-control form-control-sm" name="SumInsured" id="txtSumInsured">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row mb-3">
                                                        <label for="inputEmail3" class="col-3 col-form-label pt-0 font-14">Revised Sum Insured</label>
                                                        <div class="col-9">
                                                            <div class="input-group input-group-sm">
                                                                <div class="input-group-prepend">
                                                                    <span class="input-group-text" id="basic-addon1">OMR</span>
                                                                </div>
                                                                <input type="number" class="form-control form-control-sm" name="RevisedSumInsured" id="txtRevisedSumInsured">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row mb-3">
                                                        <label for="inputEmail3" class="col-3 col-form-label pt-0 font-14">Gross Premium</label>
                                                        <div class="col-9">
                                                            <div class="input-group input-group-sm">
                                                                <div class="input-group-prepend">
                                                                    <span class="input-group-text" id="basic-addon1">OMR</span>
                                                                </div>
                                                                <input type="number" class="form-control form-control-sm" name="GrossPremium" required id="txtGrossPremium">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row mb-3">
                                                        <label for="inputEmail3" class="col-3 col-form-label pt-0 font-14">Revised Gross Premium</label>
                                                        <div class="col-9">
                                                            <div class="input-group input-group-sm">
                                                                <div class="input-group-prepend">
                                                                    <span class="input-group-text" id="basic-addon1">OMR</span>
                                                                </div>
                                                                <input type="number" class="form-control form-control-sm" name="RevisedGrossPremium" required id="txtRevisedGrossPremium">
                                                            </div>
                                                        </div>
                                                    </div>


                                                    <div class="form-group row mb-3">
                                                        <label for="inputEmail3" class="col-3 col-form-label pt-0 font-14">Marketing Executive</label>
                                                        <div class="col-9">
                                                            <input type="text" class="form-control form-control-sm" readonly name="MarketingExecutive" required id="txtMarketingExecutive">
                                                        </div>
                                                    </div>

                                                    <div class="form-group row mb-3">
                                                        <label for="inputEmail3" class="col-3 col-form-label pt-0 font-14">Customer Code</label>
                                                        <div class="col-9">
                                                            <input type="text" class="form-control form-control-sm" readonly name="CustomerCode" required id="txtCustomerCode">
                                                        </div>
                                                    </div>

                                                    <div class="form-group row mb-3">
                                                        <label for="inputEmail3" class="col-3 col-form-label pt-0 font-14">Insurance Type</label>
                                                        <div class="col-9">
                                                            <input type="text" class="form-control form-control-sm" readonly name="InsuranceType" required id="txtInsuranceType">
                                                        </div>
                                                    </div>

                                                    <div class="form-group row mb-3">
                                                        <label for="inputEmail3" class="col-3 col-form-label pt-0 font-14">Vehicle Type</label>
                                                        <div class="col-9">
                                                            <input type="text" class="form-control form-control-sm" readonly name="VehicleType" required id="txtVehicleType">
                                                        </div>
                                                    </div>
                                                    <div class="form-group row mb-3">
                                                        <label for="inputEmail3" class="col-3 col-form-label pt-0 font-14">Vehicle Make</label>
                                                        <div class="col-9">

                                                            <input type="text" class="form-control form-control-sm" readonly name="VehicleMake" required id="txtVehicleMake">
                                                        </div>
                                                    </div>
                                                    <div class="form-group row mb-3">
                                                        <label for="inputEmail3" class="col-3 col-form-label pt-0 font-14">RegNo</label>
                                                        <div class="col-9">

                                                            <input type="text" class="form-control form-control-sm" readonly name="RegNo" required id="txtRegNo">
                                                        </div>
                                                    </div>
                                                    <div class="form-group row mb-3">
                                                        <label for="inputEmail3" class="col-3 col-form-label pt-0 font-14">EngineNo</label>
                                                        <div class="col-9">

                                                            <input type="text" class="form-control form-control-sm" readonly name="ChassisNo" required id="txtEngineNo">
                                                        </div>
                                                    </div>
                                                    <div class="form-group row mb-3">
                                                        <label for="inputEmail3" class="col-3 col-form-label pt-0 font-14">ChassisNo</label>
                                                        <div class="col-9">
                                                            <input type="text" class="form-control form-control-sm" readonly name="VehicleType" required id="txtChassisNo">
                                                        </div>
                                                    </div>
                                                    <div class="form-group row mb-3">
                                                        <label for="inputEmail3" class="col-3 col-form-label pt-0 font-14">CallBack Date</label>
                                                        <div class="col-9">
                                                            <input type="datetime-local" class="form-control form-control-sm" name="CallBackDate" id="txtCallBackDate">
                                                        </div>
                                                    </div>
                                                    <div class="form-group row mb-3">
                                                        <label for="inputEmail3" class="col-3 col-form-label pt-0 font-14">Status <span class="text-danger">*</span></label>
                                                        <div class="col-9">
                                                            <select class="form-control form-control-sm" id="txtStatus" name="Status" required="required">
                                                                <option disabled selected>-- Select an option -- </option>
                                                                <option>Renewed</option>
                                                                <option>To Be Renewed</option>
                                                                <option>Lost</option>
                                                                <option>Under Process</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="form-group row mb-3">
                                                        <label for="inputEmail3" class="col-3 col-form-label pt-0 font-14">Remarks <span class="text-danger">*</span></label>
                                                        <div class="col-9">

                                                            <textarea type="text" class="form-control form-control-sm" rows="3" name="Description" required id="txtRemarks"></textarea>
                                                        </div>
                                                    </div>

                                                    <div class="form-group row mb-3 col-md-offset-4">
                                                        <div class="justify-content-center">
                                                            <button type="button" data-dismiss="modal" class="btn btn-secondary btn-sm waves-effect">Close</button>
                                                            <button type="button" id="btnRenewal" class="btn btn-primary btn-sm waves-effect waves-light">Submit</button>
                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="col-6 mx-auto">

                                                    <div class="row">
                                                        <div class="col-12">
                                                            <div class="">
                                                                <div class="card">
                                                                    <div class="card-header">
                                                                        <div class="image text-center mt-2">
                                                                            <img src="https://cdn.document360.io/e6158f83-d9fe-47bc-ab7f-2339b3e6f8b6/Images/Documentation/zoiper-logo.png" class="rounded" width="155">
                                                                        </div>
                                                                    </div>
                                                                    <div class="card-body">
                                                                        <div class="d-flex flex-column align-items-center text-center">
                                                                            <div class="">
                                                                                <h5 id="h1AssuredName"></h5>
                                                                                <p id="h1PolicyNumber" class="text-secondary mb-1 font-16"></p>
                                                                                <p id="h1PolicyFromToDate" class="text-muted mb-1 font-16"></p>
                                                                                <p id="h1MobileNumber" class="text-muted font-16"></p>


                                                                            </div>
                                                                        </div>
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
                                <!-- /.modal-content -->
                            </div>
                            <!-- /.modal-dialog -->
                        </div>
                        <!-- /.modal -->
                        <div id="uploadBulk" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-md">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title mt-0" id="uploadBulkLabel">Upload Bulk Policies</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="row">
                                            <div class="col-10 mx-auto">
                                                <div class="text-right">
                                                    <a href="/MasterUploads/NewBulkUpload.xlsx" class="btn btn-dark btn-sm" download>
                                                        <i class="fas fa-download fa-sm"></i>Download Sample format
                                                    </a>
                                                </div>

                                                <div class="fileuploader fileuploader-theme-dragdrop">

                                                    <input type="hidden" id="uploadFilesInptHdn" name="fileuploader-list-files" value="[]">
                                                    <input type="file" id="uploadFilesInpt" name="files[]" multiple="multiple" style="position: absolute; z-index: -9999; height: 0px; width: 0px; padding: 0px; margin: 0px; line-height: 0; outline: 0px; border: 0px; opacity: 0;">
                                                    <div class="fileuploader-input">
                                                        <div class="fileuploader-input-inner">
                                                            <div class="fileuploader-icon-main"></div>
                                                            <h3 class="fileuploader-input-caption">
                                                                <span>Drag and drop files here</span>
                                                            </h3>
                                                            <p></p>
                                                            <button type="button" class="fileuploader-input-button">
                                                                <span>Browse files</span>
                                                            </button>
                                                        </div>
                                                    </div>
                                                    <div class="fileuploader-items">
                                                        <ul class="fileuploader-items-list">
                                                            <li class="fileuploader-item file-type-application file-ext-xlsx file-has-popup upload-successful">
                                                                <div id="fileContainer" class="columns" style="display: none;">
                                                                    <div class="column-thumbnail">
                                                                        <div class="fileuploader-item-image fileuploader-no-thumbnail">
                                                                            <div style="background-color: #591605" class="fileuploader-item-icon">
                                                                                <i>xlsx</i>
                                                                            </div>
                                                                        </div>
                                                                        <span class="fileuploader-action-popup"></span>
                                                                    </div>
                                                                    <div class="column-title">
                                                                        <div id="fileName">SampleFile.xlsx</div>
                                                                        <span id="fileSize">0 KB</span>
                                                                    </div>
                                                                    <div class="column-actions">
                                                                        <button type="button" id="clearFiles" class="btn btn-success btn-sm round" title="Delete">
                                                                            <i class="fas fa-check fa-sm"></i>
                                                                        </button>
                                                                    </div>
                                                                </div>
                                                                <div class="progress-bar2" style="display: none;">
                                                                    <div class="fileuploader-progressbar">
                                                                        <div class="bar" style="width: 100%;"></div>
                                                                    </div>
                                                                    <span>100%</span>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="mt-2">
                                                        <button id="btnUpload" type="submit" class="btn btn-success btn-block">
                                                            <i class="fas fa-upload fa-sm"></i>
                                                            <span>Upload</span>
                                                        </button>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <!-- /.modal-content -->
                            </div>
                            <!-- /.modal-dialog -->
                        </div>
                    


                    </div>
                </div>
                <!-- Footer -->
                <footer class="sticky-footer bg-white">
                    <div class="container my-auto">
                        <div class="copyright text-center my-auto">
                            <span>copyright &copy;
                            <script>document.write(new Date().getFullYear());</script>
                                - developed by
                            <b><a href="#" target="_blank">Totalligent Pvt Ltd</a></b>
                            </span>
                        </div>
                    </div>
                </footer>
                <!-- Footer -->
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
       


        <link href="/Scripts/Autocomplete/jquery-ui.css" rel="stylesheet" />
        <script src="/Scripts/Autocomplete/jquery-ui.js"></script>

        <script src="/Scripts/moment.min.js"></script>
    </div>
</asp:Content>
