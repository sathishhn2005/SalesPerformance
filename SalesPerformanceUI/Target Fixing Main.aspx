<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Target Fixing Main.aspx.cs" Inherits="SalesPerformanceUI.Target_Fixing_Main" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">






    <link href="/vendor/morris/morris.css" rel="stylesheet" type="text/css" />
    <link href="/vendor/fontawesome-free/css/all.css" rel="stylesheet" type="text/css" />
    <link href="/vendor/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="/css/ruang-admin.css" rel="stylesheet" />
    <link href="/vendor/smart_wizard/css/smart_wizard_all.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/dt-1.10.23/datatables.min.css" />
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.6.5/css/buttons.bootstrap4.min.css" />

   <%-- <script src="/vendor/jquery/jquery.js"></script>--%>


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
                    <a class="nav-link" href="/Index">
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
                            <h1 class="h3 mb-0 text-gray-800">TARGET FIXING SCREEN</h1>
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
                                    <%--<form id="MotorForm">--%>
                                        <div class="card-body">
                                            <div class="row">
                                                <%--<form action="/MasterDatabase" method="get">--%>
                                                    <div class="col-2">

                                                        <asp:TextBox ID="txtBusinesssType" runat="server" CssClass="form-control form-control-sm  mb-3" placeholder="BusinessType"></asp:TextBox>
                            
                                                    </div>
                                                     <div class="col-2">
                                                        <asp:TextBox ID="txtProducer" runat="server" CssClass="form-control form-control-sm  mb-3" placeholder="Producer"></asp:TextBox>
                            
                                                         </div>
                                                     <div class="col-2">
                                                        <asp:TextBox ID="txtProducerName" runat="server" CssClass="form-control form-control-sm  mb-3" placeholder="ProducerName"></asp:TextBox>
                            
                                                         </div>
                                                
                                                    <div class="col-2">
                                                        <asp:TextBox ID="txtPolicyFromDate" Type="Date" runat="server" CssClass="form-control form-control-sm  mb-3" placeholder="PolicyFromDate"></asp:TextBox>
                            

                                                               </div>
                                                    <div class="col-2">

                                                         <asp:TextBox ID="txtPolicyToDate" Type="Date" runat="server" CssClass="form-control form-control-sm  mb-3" placeholder="PolicyToDate"></asp:TextBox>
                            
                                                               </div>
                                               
                                                   
                                                   
                                                    <div class="col-2">


                                                         <asp:Button ID="btnSearch" runat="server" CssClass="btn btn-primary btn-sm" Text="Search" OnClick="btnSearch_Click" />
                                                        <asp:Button ID="btnClear" runat="server" CssClass="btn btn-primary btn-sm" Text="Clear" OnClick="btnClear_Click1"/>

                                                        </div>
                                               <%-- </form>--%>
                                            </div>
                                        </div>
                                    <%--</form>--%>
                                </div>

                                <div class="card-body">
                                    <div class="table-responsive">
                                        <asp:GridView runat="server" CssClass="table table-bordered" Width="100%" ID="TargetFixGrid" ShowHeaderWhenEmpty="true" AutoGenerateColumns="false" DataKeyNames="Id" OnRowEditing="TargetFixGrid_RowEditing">
                                            <Columns>
                                                <asp:BoundField DataField="BusinessType" HeaderText="Business Type" />
                                                <asp:BoundField DataField="Producer" HeaderText="Producer" />
                                                <asp:BoundField DataField="ProducerName" HeaderText="Producer Name" />
                                                <asp:BoundField DataField="ProductName" HeaderText="Product Name" />
                                                <asp:BoundField DataField="PolicyNumber" HeaderText="Policy Number" />
                                                <asp:BoundField DataField="PolicyStartDate" HeaderText="Policy Start Date" />
                                                <asp:BoundField DataField="PolicyEndDate" HeaderText="Policy End Date" />
                                                <asp:BoundField DataField="RenewalBase" HeaderText="Renewal Base" />
                                                 <asp:BoundField DataField="Status" HeaderText="Status" />
                                                <asp:TemplateField HeaderText="Actions" ItemStyle-Width="8%">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="lnkEdit" runat="server" CausesValidation="false" CommandArgument='<%#Eval("Id")%>' CommandName="Edit"><i class="align-middle fas fa-fw fa-pen"></i></asp:LinkButton>
                                                        <asp:LinkButton ID="lnkView" runat="server" CausesValidation="false" CommandArgument='<%#Eval("Id") %>' CommandName="View"><i class="align-middle fas fa-fw fa-eye"></i></asp:LinkButton>
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
                        <script>

                            $(document).ready(function () {
                                const SARenewalCanstant = 0;
                                function submitForm() {

                                }
                                $('#btnSubmit').on('click', function () {
                                    // Get the first form with the name
                                    // Usually the form name is not repeated
                                    // but duplicate names are possible in HTML
                                    // Therefore to work around the issue, enforce the correct index
                                    var frm = document.getElementsByName('MotorForm')[0];
                                    frm.submit(); // Submit the form
                                    frm.reset();  // Reset all form data
                                    return false; // Prevent page refresh
                                    alert('test');

                                });
                                $('#btnClear').on('click', function () {
                                    window.location.href = "/Home/MasterDatabase" //in your case, /employee/empl

                                });
                                $('#btnUpload').click(function () {

                                    // Checking whether FormData is available in browser
                                    if (window.FormData !== undefined) {

                                        var fileUpload = $("#fileUploadMotor").get(0);
                                        var files = fileUpload.files;

                                        // Create FormData object
                                        var fileData = new FormData();

                                        // Looping over all files and add it to FormData object
                                        for (var i = 0; i < files.length; i++) {
                                            fileData.append(files[i].name, files[i]);
                                        }

                                        // Adding one more key to FormData object
                                        fileData.append('txtMotorMaster', '1');

                                        $.ajax({
                                            url: '/Home/UploadFiles',
                                            type: "POST",
                                            contentType: false, // Not to set any content header
                                            processData: false, // Not to process data
                                            data: fileData,
                                            success: function (result) {
                                                //alert(result);
                                                //window.location.href = "MasterDatabase";
                                                if (result == 1) {
                                                    Swal.fire({
                                                        icon: 'error',
                                                        title: 'Oops...',
                                                        text: "File Doesn't belongs to Motor Policy",
                                                    });
                                                }
                                                if (result == -3) {
                                                    Swal.fire({
                                                        icon: 'error',
                                                        title: 'Oops...',
                                                        text: "File which you trying to upload is incorrect.!",
                                                    });
                                                }
                                                if (result == "success") {

                                                    Swal.fire({
                                                        icon: 'success',
                                                        title: 'Success!',
                                                        text: "File Uploaded Successfully!",

                                                    }).then(
                                                        function () { window.location.href = "MasterDatabase"; });
                                                }
                                                if (result == "same") {
                                                    Swal.fire({
                                                        icon: 'warning',
                                                        title: 'Warning!',
                                                        text: "All the Records already exists. Try uploading new data.",
                                                    }).then(
                                                        function () { window.location.href = "MasterDatabase"; });
                                                }
                                            },
                                            error: function (err) {
                                                //alert(err.statusText);
                                                Swal.fire({
                                                    icon: 'error',
                                                    title: 'Oops...',
                                                    text: err.statusText,
                                                })
                                            }
                                        });
                                    } else {
                                        Swal.fire({
                                            icon: 'warning',
                                            title: 'Oops...',
                                            text: "FormData is not supported.",
                                        })
                                    }
                                });
                                $('.fileuploader-input').click(function () {
                                    $("#fileUploadMotor").click();

                                });
                                $('#clearFiles').click(function () {
                                    $("#fileContainer").hide();
                                    $('#fileUploadMotor').val('');
                                    $("#btnUpload").attr("disabled", "disabled");
                                });
                                $('#clearFiles').hover(
                                    function () {
                                        $('#clearFiles').removeClass("btn-success").addClass("btn-danger");
                                        $('#clearFiles .fas').removeClass("fa-check").addClass("fa-trash");
                                    },
                                    function () {
                                        $('#clearFiles').removeClass("btn-danger").addClass("btn-success");
                                        $('#clearFiles .fas').removeClass("fa-trash").addClass("fa-check");
                                    });
                                $('#fileUploadMotor').change(function (e) {
                                    var fileName = e.target.files[0].name;
                                    var fileSize = e.target.files[0].size;
                                    $("#fileContainer").show();
                                    $("#fileName").html(fileName);
                                    fileSize = (fileSize / 1024).toFixed(2);
                                    $("#fileSize").html(fileSize + " KB");
                                    //if (document.getElementById("fileUploadMotor").files.length == 0) {
                                    $("#btnUpload").removeAttr("disabled", "disabled");
                                    //}
                                    //alert('The file "' + fileName + '" has been selected.');
                                });
                            });
                            function renewal(MotorId) {

                                // $('#myModal').modal('show');
                                Id = MotorId;

                                $.ajax({
                                    type: "GET",
                                    url: '/Home/EditModal/?InsId=' + MotorId, // The method name + paramater
                                    success: function (data) {

                                        $('#InsuranceID').val(data.InsuranceID);
                                        $('#txtDivisionCode').val(data.DivisionCode);
                                        $('#txtDivisionName').val(data.DivisionName);
                                        $('#txtProductCode').val(data.ProductCode);
                                        $('#txtProductName').val(data.ProductName);

                                        $('#txt
                                            ').val(data.BusinessType);

                                        $('#txtPolicyNo').val(data.PolicyNo);

                                        $('#txtAssuredName').val(data.AssuredName);


                                        $('#txtAssuredMobile').val(data.AssuredMobile);

                                        document.getElementById("h1MobileNumber").innerHTML = 'Tel:' + data.AssuredMobile;
                                        document.getElementById("h1PolicyNumber").innerHTML = 'Policy Number: ' + data.PolicyNo;
                                        document.getElementById("h1AssuredName").innerHTML = data.AssuredName;

                                        $('#txtCustomerName').val(data.CustomerName);
                                        $('#txtSourceCode').val(data.SourceCode);

                                        $('#txtSourceName').val(data.SourceName);

                                        $('#txtCustomerCategory').val(data.CustomerCategory);

                                        value = new Date(parseInt(data.PolicyFromDate.replace("/Date(", "").replace(")/", ""), 10));
                                        //Fromvalue = value.toDateString()
                                        Fromvalue = value.toISOString();

                                        var Str =

                                            ("00" + value.getDate()).slice(-2)
                                            + "-" + ("00" + (value.getMonth() + 1)).slice(-2)
                                            + "-" + value.getFullYear()

                                        $('#PolicyFromDate').val(Str);

                                        valuee = new Date(parseInt(data.PolicyToDate.replace("/Date(", "").replace(")/", ""), 10));
                                        //Tovalue = valuee.toDateString()
                                        var ToStr =
                                            ("00" + valuee.getDate()).slice(-2)
                                            + "-" + ("00" + (valuee.getMonth() + 1)).slice(-2)
                                            + "-" + valuee.getFullYear()
                                        $('#PolicyToDate').val(ToStr);
                                        document.getElementById("h1PolicyFromToDate").innerHTML = 'Policy Date: ' + Str + ' To ' + ToStr;

                                        $('#txtSumInsured').val(data.SumInsured);
                                        $('#txtGrossPremium').val(data.GrossPremium);
                                        $('#txtRevisedGrossPremium').val(data.RevisedGrossPremium);

                                        $('#txtRevisedSumInsured').val(data.RevisedSumInsured);

                                        $('#txtMarketingExecutive').val(data.MarketingExecutive);

                                        $('#txtRemarks').val(data.Remarks);
                                        $('#txtCustomerCode').val(data.CustomerCode);
                                        $('#txtCharges').val(data.Charges);
                                        $('#txtInsuranceType').val(data.InsType);
                                        // $('#txtCallBackDate').val(data.CallBackDate);
                                        $('#txtStatus').val(data.Status);
                                        $('#txtDescription').val(data.Description);
                                        $('#txtRenewalSumAssured').val(data.RenewalSumAssured);

                                        //Vechile Information
                                        $('#txtVehicleType').val(data.VehicleType);
                                        $('#txtVehicleMake').val(data.VehicleMake);
                                        $('#txtRegNo').val(data.RegNo);
                                        $('#txtEngineNo').val(data.EngineNo);
                                        $('#txtChassisNo').val(data.ChassisNo);

                                        SARenewalCanstant = data.RenewalSumAssured;

                                        var callBackValue = new Date(parseInt(data.CallBackDate.replace("/Date(", "").replace(")/", ""), 10));
                                        //Tovalue = valuee.toDateString()
                                        var ToStrCB =
                                            ("00" + callBackValue.getDate()).slice(-2)
                                            + "-" + ("00" + (callBackValue.getMonth() + 1)).slice(-2)
                                            + "-" + callBackValue.getFullYear()
                                        $('#txtCallBackDate').val(ToStrCB);
                                        setTimeout(function () {
                                            $('a[href^="zoiper:+968"]').each(function () {
                                                var oldNumber = $(this).attr("href"); // Get current url
                                                var newNumber = oldNumber.replace("zoiper:+968", "zoiper:0"); // Create new url
                                                $(this).attr("href", newNumber); // Set herf value
                                            });
                                        }, 3000);
                                        // $('#myModal').html(data); // This should be an empty div where you can inject your new html (the partial view)
                                    }

                                });
                            }


                            $(document).ready(function () {
                                $('#btnRenewal').on('click', function () {
                                    if ($('#txtRemarks').val() == "" || $('#txtRemarks').val() == "") {
                                        Swal.fire({
                                            icon: 'warning',
                                            title: '',
                                            text: "Please provide Remarks.",
                                        })
                                        return false;
                                    }
                                    var renewalData = $('#formRenewal').serialize();
                                    $.ajax({

                                        type: "POST",
                                        url: "/Home/UpdateMotorIns",
                                        dataType: "json",
                                        contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
                                        data: renewalData,
                                        success: function (res) {
                                            if (res > 0) {
                                                Swal.fire({
                                                    icon: 'success',
                                                    title: '',
                                                    text: "Data Submitted Successfully.",
                                                })
                                            }
                                            else if (res == -2) {
                                                Swal.fire({
                                                    icon: 'warning',
                                                    title: '',
                                                    text: "Please provide all mandatory fields.",
                                                })
                                                //alert('Please provide all mandatory fields')
                                                return false;
                                            }
                                            $('#formRenewal').reset();
                                        },
                                        error: function () {
                                            // $("#lblMessage").html('Error while Registring the Company!.');
                                            $('#formRenewal').reset();
                                        }
                                    })
                                });
                            });

                            var lstMoter = [];

                            $(document).ready(function () {
                                $('#btnSearch').on('click', function () {
                                    var formData = $('#MotorForm').serialize();
                                    $.ajax({

                                        type: "GET",
                                        url: "/Home/SearchMotor",
                                        dataType: "json",
                                        contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
                                        data: formData,
                                        success: function (res) {
                                            $("#tblMotor tr").filter(function () {
                                                $(this).toggle($(this).text().toLowerCase().indexOf(formData) > -1)
                                            });

                                        },
                                        error: function () {
                                            // $("#lblMessage").html('Error while Registring the Company!.');
                                        }
                                    })
                                });


                                $(".dataTables_paginate").on('click', function (event) {
                                    //event.stopPropagation();
                                    // event.stopImmediatePropagation();
                                    //(... rest of your JS code)

                                    if ($("#tblMotorRowall").prop("checked") == true) {
                                        $("#tblMotorRowall").prop("checked", false);
                                        // clicktblMotorCheckBoxsStatus('', '0', 'tbl', this, '');
                                    }

                                    //$($('.dataTables_paginate')[0].childNodes[0].childNodes).each(function (index, value) {


                                    //    //var ClassList = $('.dataTables_paginate')[0].childNodes[0].childNodes[index].classList;
                                    //    //for (i = 0; i  <= ClassList.length; i++) {
                                    //    //    if (ClassList[i] == 'active') {
                                    //    //        var PageId = $('.dataTables_paginate')[0].childNodes[0].childNodes[index].innerText;
                                    //    //    }

                                    //    //}
                                    //    //alert(PageId);
                                    //});


                                    //alert('Page button');
                                });


                            });

                            window.onload = function () {
                                //var btn = document.getElementById('uploadBtn'),
                                //    progressBar = document.getElementById('progressBar'),
                                //    progressOuter = document.getElementById('progressOuter'),
                                //    msgBox = document.getElementById('msgBox');
                                //var fileUpload = $("#fileUploadMotor").get(0);
                                //var files = fileUpload.files;
                                //var files = fileUpload.files;

                                //// Create FormData object
                                //var fileData = new FormData();
                                //$("#btnUpload").attr("disabled", "disabled");
                                //// Looping over all files and add it to FormData object
                                //for (var i = 0; i < files.length; i++) {
                                //    fileData.append(files[i].name, files[i]);
                                //}
                                var table = $('#tblMotor').DataTable({
                                    dom: 'Bfrtip',
                                    "lengthMenu": [[10, 25, 50, 100, 200, -1], [10, 25, 50, 100, 200, "All"]],
                                    "pageLength": 100,
                                    "language": {
                                        "processing": '<i class="fa fa-spinner fa-spin" style="font-size:24px;color:rgb(75, 183, 245);"></i>'
                                    },
                                    "drawCallback": function (settings) {
                                        $(".lds-ring-bg").addClass('d-none');
                                    },
                                    buttons: {
                                        buttons: [
                                            {
                                                extend: 'csv',
                                                className: 'btn-sm',
                                                exportOptions: {
                                                    columns: [1, 2, 3, 4, 5, 6]
                                                }
                                            },
                                            {
                                                extend: 'pdf',
                                                className: 'btn-sm',
                                                exportOptions: {
                                                    columns: [1, 2, 3, 4, 5, 6]
                                                }
                                            },
                                            {
                                                extend: 'pageLength',
                                                className: 'btn-sm',
                                            }
                                        ]
                                    }
                                });
                                // Adding one more key to FormData object
                                //fileData.append('txtMotorMaster', '1');
                                //var uploader = new ss.SimpleUpload({
                                //    button: btn,
                                //    url: '/Home/UploadFiles',
                                //    multipart: true,
                                //    data: fileData,
                                //    hoverClass: 'hover',
                                //    focusClass: 'focus',
                                //    responseType: 'json',
                                //    startXHR: function () {
                                //        progressOuter.style.display = 'block'; // make progress bar visible
                                //        this.setProgressBar(progressBar);
                                //    },
                                //    onSubmit: function () {
                                //        msgBox.innerHTML = ''; // empty the message box
                                //        btn.innerHTML = 'Uploading...'; // change button text to "Uploading..."
                                //    },
                                //    onComplete: function (filename, response) {

                                //        btn.innerHTML = 'Choose Another File';
                                //        progressOuter.style.display = 'none'; // hide progress bar when upload is completed

                                //        if (!response) {
                                //            msgBox.innerHTML = 'Unable to upload file';
                                //            return;
                                //        }

                                //        if (response.success === true) {
                                //            msgBox.innerHTML = '< strong > ' + escapeTags(filename) + '</strong > ' + ' successfully uploaded.';

                                //        } else {
                                //            if (response.msg) {
                                //                msgBox.innerHTML = escapeTags(response.msg);

                                //            } else {
                                //                msgBox.innerHTML = 'An error occurred and the upload failed.';
                                //            }
                                //        }
                                //    },
                                //    onError: function () {
                                //        progressOuter.style.display = 'none';
                                //        msgBox.innerHTML = 'Unable to upload file';
                                //    }
                                //});


                            };
                            function CalcRenewalSA() {

                                var perc = "";
                                var SAP = $('#SumAssuredPercentage').val();
                                if (SAP > 0) {
                                    // var RenewalSA = parseInt($('#txtRenewalSumAssured').val());
                                    var RenewalSA = SARenewalCanstant;
                                    if (isNaN(RenewalSA)) {
                                        alert('Please provide value in Number');
                                    } else {
                                        perc = ((RenewalSA / 100) * SAP).toFixed(2);
                                    }
                                    var total = RenewalSA + parseFloat(perc);
                                    $('#txtRenewalSumAssured').val(total);
                                }
                                else if (SAP < 0) {
                                    // var RenewalSA = parseInt($('#txtRenewalSumAssured').val());
                                    var RenewalSA = SARenewalCanstant;
                                    if (isNaN(RenewalSA)) {
                                        alert('Please provide value in Number');
                                    } else {
                                        //perc = ((RenewalSA / 100) * SAP).toFixed(2);
                                        perc = -(RenewalSA * SAP / 100);
                                    }
                                    console.log(perc);
                                    var total = RenewalSA - parseFloat(perc);
                                    $('#txtRenewalSumAssured').val(total);
                                }

                            }
                            function CalcRenewalAdmin() {
                                //  alert('tst');
                                //  $('#RenewalSumAssured')
                                var perc = 0;
                                var RSA = parseInt($('#txtRevisedSumInsured').val());
                                if (isNaN(RSA)) {
                                    alert('Please provide value in Number');
                                } else {
                                    perc = ((RSA / 100) * 15).toFixed(2);
                                }
                                var total = RSA - parseFloat(perc);
                                $('#txtRenewalSumAssured').val(total);
                            }



                            function clicktblMotorCheckBoxsStatus(pPolicyNo, pInsuranceID, Type, objThis, pStatus) {


                                if ($("#ddlGrdStatus  option:selected").val() != "0") {

                                    var valStatus = $("#ddlGrdStatus  option:selected").text();
                                    var equalStatusPolicyNo = '';

                                    if (Type == 'tbl') {

                                        $('#tblMotor tbody tr ').each(function () {


                                            valInsuranceID = $(this).find("td").eq(1).find("input[type=hidden]")[0].value;
                                            valPolicyNo = $.trim($(this).find("td:eq(1)").text());
                                            rowStatus = $.trim($(this).find("td:eq(6)").text());

                                            if ($("#ddlGrdStatus  option:selected").text() != rowStatus) {
                                                if ($("#tblMotorRowall").prop("checked") == true) {

                                                    if ($(this).find("td").eq(0).find("input[type=checkbox]").prop("checked") == false) {

                                                        checkAndRemoveExistsRow(valPolicyNo, valInsuranceID, 'Manual');

                                                        lstMoter.push({
                                                            InsuranceID: valInsuranceID,
                                                            PolicyNo: valPolicyNo,
                                                            Status: valStatus
                                                        });


                                                        $(this).find("td").eq(0).find("input[type=checkbox]").prop("checked", true);
                                                    }
                                                }
                                                else {
                                                    if ($(this).find("td").eq(0).find("input[type=checkbox]").prop("checked") == true) {
                                                        checkAndRemoveExistsRow(valPolicyNo, valInsuranceID, 'Manual');
                                                        $(this).find("td").eq(0).find("input[type=checkbox]").prop("checked", false);
                                                    }
                                                }
                                            }
                                            else {
                                                equalStatusPolicyNo += valPolicyNo + " , ";
                                            }

                                        });

                                        if ($(objThis).prop("checked") == true && equalStatusPolicyNo != "") {
                                            alert(equalStatusPolicyNo + "This Policy status and Upadated status are same, Please check.");
                                        }

                                    }
                                    else {

                                        if ($("#ddlGrdStatus  option:selected").text() != pStatus) {
                                            valInsuranceID = $.trim(pInsuranceID);
                                            valPolicyNo = $.trim(pPolicyNo);

                                            checkAndRemoveExistsRow(valPolicyNo, valInsuranceID, 'Manual');

                                            if ($(objThis).prop("checked") == true) {
                                                lstMoter.push({
                                                    InsuranceID: valInsuranceID,
                                                    PolicyNo: valPolicyNo,
                                                    Status: valStatus
                                                });
                                            }
                                        } else {
                                            $(objThis).prop("checked", false);
                                            alert("Please check selected row status and Upadated status value are same");
                                            return;
                                        }

                                    }
                                }
                                else {
                                    $(objThis).prop("checked", false);
                                    $("#ddlGrdStatus").focus();
                                    alert("Please select Update status");
                                    return;
                                }
                            }

                            function checkAndRemoveExistsRow(pPolicyNo, pInsuranceID, UFType) {

                                index = lstMoter.findIndex(x => x.InsuranceID == pInsuranceID && x.PolicyNo == pPolicyNo);

                                if (UFType == 'Manual') {

                                    if (index > -1) {
                                        //delete lstMoter[index]
                                        lstMoter.splice(index, 1);
                                    };
                                }
                                else {
                                    return index;
                                }


                            }

                            function bulkUpdateStatus(UType) {

                                if (lstMoter.length > 0) {
                                    $.post('/Home/BulkUpdateStatus', { lstMoter: lstMoter, UploadType: UType },
                                        function (returnedData) {
                                            alert(returnedData);
                                        });

                                    //$.ajax({
                                    //    type: "POST",
                                    //    url: "/Home/BulkUpdateStatus",
                                    //    contentType: "application/json; charset=utf-8",
                                    //    dataType: "json",
                                    //    //data: JSON.stringify(lstMoter),
                                    //    success: function (response) {
                                    //        alert("updated successfully");
                                    //    },
                                    //    failure: function (response) {
                                    //        alert(response.responseText);
                                    //    },
                                    //    error: function (response) {
                                    //        alert(response.responseText);
                                    //    }
                                    //});

                                    $("#btnMotorSearch").click();
                                }
                                else {
                                    if (UType == "Manual") {
                                        alert("Please select at least any one row");
                                        return;
                                    }
                                }

                            }
                            function onchangeDDlBulkStatus() {
                                if (lstMoter.length > 0) {
                                    if (confirm("Are sure you what change the staus")) {
                                        lstMoter = [];
                                        $("#btnMotorSearch").click();
                                        //tblMotorRow
                                        //find("input[type=checkbox]").prop("checked", false);

                                    }
                                }

                                if ($("#tblMotorRowall").prop("checked") == true) {
                                    $("#tblMotorRowall").prop("checked", false);
                                }


                            }

                            function csvFileUpload() {
                                lstMoter = [];
                                var rowCount = 0;
                                var regex = /^([a-zA-Z0-9\s_\\.\-:])+(.csv|.txt)$/;
                                if (regex.test($("#fileUploadMotorPolicies").val().toLowerCase())) {
                                    if (typeof (FileReader) != "undefined") {
                                        var reader = new FileReader();
                                        reader.onload = function (e) {

                                            var rows = e.target.result.split('\r\n');

                                            if (rows.length > 1005) {
                                                alert("Upload file maximum limit 1000, Please check");
                                                return false;
                                            }


                                            for (var i = 0; i < rows.length; i++) {

                                                var cells = rows[i].split(",");

                                                if (cells.length == 6 && i > 0) {

                                                    res = $.trim(cells[0].replace('""', '"'));

                                                    index = checkAndRemoveExistsRow($.trim(cells[0].replace('""', '"')), 0, 'CsvFile');

                                                    if (index > -1) {
                                                        $('#fileUploadMotorPolicies').val("");
                                                        alert("Policy No :" + $.trim(cells[0].replace('""', '"')) + " already exists, Please check");

                                                        return;
                                                    }
                                                    lstMoter.push({
                                                        InsuranceID: 0,
                                                        PolicyNo: $.trim(cells[0].replace('""', '"')),
                                                        DivisionName: $.trim(cells[1].replace('""', '"')),
                                                        InsuranceType: $.trim(cells[2].replace('""', '"')),
                                                        Status: $.trim(cells[5].replace('""', '"'))
                                                    });

                                                }
                                                rowCount += 1;

                                            }

                                            if (rowCount == rows.length) {
                                                bulkUpdateStatus("CSVFileUpload");
                                            }

                                        }
                                        reader.readAsText($("#fileUploadMotorPolicies")[0].files[0]);
                                    } else {
                                        $('#fileUploadMotorPolicies').val("");
                                        alert("This browser does not support HTML5.");
                                    }
                                } else {
                                    $('#fileUploadMotorPolicies').val("");

                                    alert("Please upload a valid CSV file.");

                                }


                            }

                            function resetCall() {
                                $("#btnMotorSearch").click();
                            }
                            function HideManuvalUpdateControl() {

                                if ($("#btnManualUpdate") != null) {
                                    //$("#uploadMotorPolicies").removeClass("hide");
                                    //$("#btnManualUpdate").addClass("hide");
                                    $("#btnManualUpdate").attr("disabled");
                                    //$("#tdUpdatecheckbox").addClass("hide");
                                    //$("#ddlGrdStatus").addClass("hide");
                                }

                            }

                            //$(document).ready(function(){
                            //    //$('a[href^="zoiper:+968"]').each(function(){
                            //    //    var oldNumber = $(this).attr("href"); // Get current url
                            //    //    var newNumber = oldNumber.replace("zoiper:+968", "zoiper:0"); // Create new url
                            //    //    $(this).attr("href", newNumber); // Set herf value
                            //    //});
                            //});

                            $(document).ready(function () {
                                $("#txtUserName").autocomplete({
                                    maxShowItems: 10,
                                    source: function (request, response) {
                                        $.ajax({
                                            url: "/Home/SearchUser",
                                            type: "POST",
                                            dataType: "json",
                                            data: { Prefix: request.term },
                                            success: function (data) {
                                                response($.map(data, function (item) {
                                                    return { label: item.UserName, value: item.UserName };
                                                }))

                                            }
                                        })
                                    },
                                    messages: {
                                        noResults: "", results: ""
                                    }
                                });

                            })
                            $(document).ready(function () {
                                $("#txtDivisionNam").autocomplete({
                                    maxShowItems: 10,
                                    source: function (request, response) {
                                        $.ajax({
                                            url: "/Home/BranchWiseSearch",
                                            type: "POST",
                                            dataType: "json",
                                            data: { Prefix: request.term },
                                            success: function (data) {
                                                response($.map(data, function (item) {
                                                    return { label: item.DivisionCode, value: item.DivisionCode };
                                                }))

                                            }
                                        })
                                    },
                                    messages: {
                                        noResults: "", results: ""
                                    }
                                });

                            })

                            function onchangPolicyNo() {

                                $("#PolicyFromDate").val('');
                                $("#PolicyToDate").val('');
                                $("#txtUserName").val('');
                                $("#Status option:contains(Select Status)").attr('selected', 'selected');

                            }
                        </script>


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
        <script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.23/datatables.min.js"></script>
        <script type="text/javascript" src="https://cdn.datatables.net/1.10.23/js/dataTables.bootstrap4.min.js"></script>
        <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.6.5/js/dataTables.buttons.min.js"></script>
        <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.6.5/js/buttons.bootstrap4.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
        <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.6.5/js/buttons.html5.min.js"></script>
        <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.6.5/js/buttons.print.min.js"></script>


        <link href="/Scripts/Autocomplete/jquery-ui.css" rel="stylesheet" />
        <script src="/Scripts/Autocomplete/jquery-ui.js"></script>

        <script src="/Scripts/moment.min.js"></script>
    </div>
</asp:Content>
