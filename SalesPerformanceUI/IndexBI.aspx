<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="IndexBI.aspx.cs" Inherits="SalesPerformanceUI.IndexBI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    

    <div id="wrapper">
        <!-- Sidebar -->
        <ul class="navbar-nav sidebar sidebar-light accordion" id="accordionSidebar">
            <li class="sidebar-brand d-flex align-items-center justify-content-center">

                <div class="sidebar-brand-text mx-2">Total<span class="logo-sub">Net</span></div>
            </li>
            <li class="sidebar-divider mb-3 mt-0"></li>
            <li class="sidebar-heading">Dashboard
            </li>

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
            <li class="sidebar-divider">
            <li class="sidebar-heading"></li>
            <li class="sidebar-heading"></li>
            <li class="sidebar-heading">Screens
            </li>
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
            <li>
                <h6 class="sidebar-divider"></h6>
                <div class="version" id="version-MotorInsurance"></div>
            </li>
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
                                <%--<form class="navbar-search">--%>
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
                                <%--</form>--%>
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
                            <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown1" role="button" data-toggle="dropdown"
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
                        <li>
                            <div class="topbar-divider d-none d-sm-block"></div>
                        </li>
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
                    <div class="d-sm-flex align-items-center justify-content-between mb-2">
                        <h1 class="h3 mb-0 text-gray-800">BI Dashboard</h1>

                        <ol class="breadcrumb my-2">
                            <li class="breadcrumb-item">Home</li>
                            <li class="breadcrumb-item active">BI Dashboard</li>
                        </ol>
                    </div>


                    <div class="row mt-3">
                        <div class="col-xl-6 col-lg-6">
                            <div class="card mb-4">
                                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">Broker Renewed vs Available</h6>
                                    <div class="">
                                        <label class="font-weight-bold mr-2">Yearly</label>
                                        <input type="checkbox" id="broker" data-toggle="toggle" data-size="xs">
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="Mchart-bar ">
                                        <div id="BrokerRenewed" class="morris-charts" style="height: 250px"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6">
                            <div class="card mb-4">
                                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">Agents Renewed VS Available </h6>
                                    <div class="">
                                        <label class="font-weight-bold mr-2">Yearly</label>
                                        <input type="checkbox" id="agent" data-toggle="toggle" data-size="xs">
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="Mchart-bar ">
                                        <div id="AgentsRenewed" class="morris-charts" style="height: 250px"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6">
                            <div class="card mb-4">
                                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">Branch Renewed VS Available</h6>
                                    <div class="">
                                        <label class="font-weight-bold mr-2">Yearly</label>
                                        <input type="checkbox" id="direct" data-toggle="toggle" data-size="xs">
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="Mchart-bar ">
                                        <div id="BranchRenewed" class="morris-charts" style="height: 250px"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6">
                            <div class="card mb-4">
                                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">Bank Assurance VS Available </h6>
                                    <div class="">
                                        <label class="font-weight-bold mr-2">Yearly</label>
                                        <input type="checkbox" id="chkBankAssuranceVsAvailableYearly" data-toggle="toggle" data-size="xs">
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="Mchart-bar ">
                                        <div id="BankAssurance" class="morris-charts" style="height: 250px"></div>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="col-xl-6 col-lg-6">
                            <div class="card mb-4">
                                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">Direct Head Office VS Available </h6>
                                    <div class="">
                                        <label class="font-weight-bold mr-2">Yearly</label>
                                        <input type="checkbox" id="chkDirecHeadVsAvailableYearly" data-toggle="toggle" data-size="xs">
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="Mchart-bar ">
                                        <div id="DirectHeadOffice" class="morris-charts" style="height: 250px"></div>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="col-xl-6 col-lg-6">
                            <div class="card mb-4">
                                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">Direct Corporate Sales VS Available </h6>
                                    <div class="">
                                        <label class="font-weight-bold mr-2">Yearly</label>
                                        <input type="checkbox" id="chkDirecCorSalesVsAvailableYearly" data-toggle="toggle" data-size="xs">
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="Mchart-bar ">
                                        <div id="DirectCorporate" class="morris-charts" style="height: 250px"></div>
                                    </div>
                                </div>
                            </div>
                        </div>



                        <div class="col-xl-6 col-lg-6">
                            <div class="card mb-4">
                                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">Direct Retail Sales VS Available </h6>
                                    <div class="">
                                        <label class="font-weight-bold mr-2">Yearly</label>
                                        <input type="checkbox" id="chkDirecSalesVsAvailable" data-toggle="toggle" data-size="xs">
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="Mchart-bar ">
                                        <div id="DirectRetailSales" class="morris-charts" style="height: 250px"></div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-xl-12 col-lg-12">
                            <div class="card mb-4">
                                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">Individual Producer Chart</h6>
                                    <div class="flex-grow-1">
                                        <%--  <form class="form-inline  d-flex flex-row align-items-center justify-content-around">--%>
                                        <label for="cars" class="col-form-label">Choose Role</label>
                                        <select id="ddlRole" onchange="javascript:GetUsers(this.value);" class="form-control form-control-sm col-md-3">
                                            <option value="0">--Select--</option>
                                            <option value="Broker">Broker</option>
                                            <option value="Agent">Agent</option>
                                            <option value="DirectSales">Branches</option>
                                            <option value="Branches">Bank assurance</option>
                                            <option value="Branches">Direct Head Office</option>
                                            <option value="Branches">Direct Corporate Sales</option>
                                            <option value="Branches">Direct Retail Sales</option>
                                        </select>


                                        <label for="cars" class="col-form-label">Choose Producer</label>
                                        <select id="Users" name="Users" class="form-control form-control-sm">
                                            <option value="0">-Select-</option>
                                        </select>

                                        <button type="button" id="randomizeData" class="btn btn-primary btn-sm">Search</button>
                                        <%--</form>--%>
                                    </div>

                                </div>
                                <div class="card-body">
                                    <canvas id="SpecificProducer" height="100"></canvas>
                                </div>
                            </div>
                        </div>
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
    <script type="text/javascript">
        var BrokerMorris;
        var AgentMorris;
        var BranchMorris;
        var DirectMorris;
        var DirectHeadOfficeMorris;
        var DirectCorporateSalesMorris;
        var BankAssuranceMorris;
        var DirectRetailSalesMorris;
        var SPBarAData = [];
        var SPBarBData = [];
        var SPBarBMonthName = [];

        $('#branch').change(function () {
            GetYearWiseReport('Branches');
        });
        $("#broker").on('change', function () {
            if ($(this).is(':checked')) {
                $(this).attr('value', 'true');
                GetYearWiseReport('Broker');
            } else {
                $(this).attr('value', 'false');
                loadBroker();
            }

        });
        $("#agent").on('change', function () {
            if ($(this).is(':checked')) {
                $(this).attr('value', 'true');
                GetYearWiseReport('Agent');
            } else {
                $(this).attr('value', 'false');
                loadAgent();
            }

        });
        $("#direct").on('change', function () {
            if ($(this).is(':checked')) {
                $(this).attr('value', 'true');
                GetYearWiseReport('Direct');
            } else {
                $(this).attr('value', 'false');
                loadDirect();
            }

        });
        $("#branch").on('change', function () {
            if ($(this).is(':checked')) {
                $(this).attr('value', 'true');
                GetYearWiseReport('Branches');
            } else {
                $(this).attr('value', 'false');
                loadBranch();
            }

        });


        function GetYearWiseReport(BussType) {
            $.ajax({
                type: "GET",
                contentType: "application/json; charset=utf-8",
                url: "GetYearWiseReportMIDB?BussType='" + BussType + "'",
                data: { 'BusinessType': BussType },
                dataType: "json",
                success: function (Result) {
                    console.log(Result);
                    var res = JSON.parse(Result.lst);
                    console.log(res);
                    if (BussType == 'Broker')
                        BrokerMorris.setData(res.item);
                    else if (BussType == 'Agent')
                        AgentMorris.setData(res.item);
                    else if (BussType == 'Direct')
                        DirectMorris.setData(res.item);
                    else if (BussType == 'Branches')
                        BranchMorris.setData(res.item);

                },
                error: function (Result) {
                    // alert("Error");
                }
            });
        }
        setTimeout(function () {
            loadBIDashBoardMonthWise();
            //loadAgent();
            //loadDirect();
            //loadBranch();
        }, 100);
        function loadBIDashBoardMonthWise() {
            //$.ajax({
            //    type: "POST",
            //    url: "IndexBI.aspx/GetBIDasbBoard",
            //    data: "{}",
            //    contentType: "application/json; charset=utf-8",
            //    dataType: "json",
            //    success: fnsuccesscallback,
            //    error: fnerrorcallback
            //});
            $.ajax({
                type: "POST",
                //url: "IndexBI.aspx/GetBIDasbBoard",
                url: '<%= ResolveUrl("IndexBI.aspx/GetBIDasbBoard") %>',
                data: "{}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    //chartDataBroker = msg.d;
                    MonthWiseChart = JSON.parse(msg.d)["BrokerList"];
                    BrokerMorris.setData(MonthWiseChart);

                    MonthWiseChart = JSON.parse(msg.d)["AgentsList"];
                    AgentMorris.setData(MonthWiseChart);

                    MonthWiseChart = JSON.parse(msg.d)["BranchList"];
                    BranchMorris.setData(MonthWiseChart);

                    MonthWiseChart = JSON.parse(msg.d)["BankAssurance"];
                    BankAssuranceMorris.setData(MonthWiseChart);

                    MonthWiseChart = JSON.parse(msg.d)["DirectHeadOffice"];
                    DirectHeadOfficeMorris.setData(MonthWiseChart);

                    MonthWiseChart = JSON.parse(msg.d)["DirectCorporateSales"];
                    DirectCorporateSalesMorris.setData(MonthWiseChart);

                    MonthWiseChart = JSON.parse(msg.d)["DirectRetailSales"];
                    DirectRetailSalesMorris.setData(MonthWiseChart);
                  
                }
            });
        }
      
        function loadBroker() {
            $.ajax({
                type: "GET",
                contentType: "application/json; charset=utf-8",
                url: "GetBIChartBoard",
                data: "{}",
                dataType: "json",
                success: function (Result) {
                    chartDataBroker = Result.brokerList;
                    BrokerMorris.setData(chartDataBroker);
                },
                error: function (Result) {
                    // alert("Error");
                }
            });
        }
        function loadAgent() {
            $.ajax({
                type: "GET",
                contentType: "application/json; charset=utf-8",
                url: "GetBIChartBoard",
                data: "{}",
                dataType: "json",
                success: function (Result) {
                    chartDataAgent = Result.agentList;
                    AgentMorris.setData(chartDataAgent);
                },
                error: function (Result) {
                    // alert("Error");
                }
            });
        }
        function loadDirect() {
            $.ajax({
                type: "GET",
                contentType: "application/json; charset=utf-8",
                url: "GetBIChartBoard",
                data: "{}",
                dataType: "json",
                success: function (Result) {
                    chartDataDirect = Result.directList;
                    DirectMorris.setData(chartDataDirect);
                },
                error: function (Result) {
                    // alert("Error");
                }
            });
        }
        function loadBranch() {
            $.ajax({
                type: "GET",
                contentType: "application/json; charset=utf-8",
                url: "GetBIChartBoard",
                data: "{}",
                dataType: "json",
                success: function (Result) {
                    chartDataBranch = Result.branchList;
                    BranchMorris.setData(chartDataBranch);
                },
                error: function (Result) {
                    // alert("Error");
                }
            });
        }
        window.onload = function () {
            BrokerMorris = Morris.Bar({
                element: 'BrokerRenewed',
                xkey: 'y',
                ykeys: ['a', 'b'],
                labels: ['Policies Renewed', 'Available Policies'],
                gridLineColor: '#eef0f2',
                barSizeRatio: 0.4,
                xLabelAngle: 45,
                resize: true,
                hideHover: 'auto',
                barColors: ['#4dc9f6', '#f67019']
            });
            AgentMorris = Morris.Bar({
                element: 'AgentsRenewed',
                xkey: 'y',
                ykeys: ['a', 'b'],
                labels: ['Policies Renewed', 'Available Policies'],
                gridLineColor: '#eef0f2',
                barSizeRatio: 0.4,
                xLabelAngle: 45,
                resize: true,
                hideHover: 'auto',
                barColors: ['#4dc9f6', '#f67019']
            });
            BranchMorris = Morris.Bar({
                element: 'BranchRenewed',
                xkey: 'y',
                ykeys: ['a', 'b'],
                labels: ['Policies Renewed', 'Available Policies'],
                gridLineColor: '#eef0f2',
                barSizeRatio: 0.4,
                xLabelAngle: 45,
                resize: true,
                hideHover: 'auto',
                barColors: ['#4dc9f6', '#f67019']
            });
            BankAssuranceMorris = Morris.Bar({
                element: 'BankAssurance',
                xkey: 'y',
                ykeys: ['a', 'b'],
                labels: ['Policies Renewed', 'Available Policies'],
                gridLineColor: '#eef0f2',
                barSizeRatio: 0.4,
                xLabelAngle: 45,
                resize: true,
                hideHover: 'auto',
                barColors: ['#4dc9f6', '#f67019']
            });
            DirectHeadOfficeMorris = Morris.Bar({
                element: 'DirectHeadOffice',
                xkey: 'y',
                ykeys: ['a', 'b'],
                labels: ['Policies Renewed', 'Available Policies'],
                gridLineColor: '#eef0f2',
                barSizeRatio: 0.4,
                xLabelAngle: 45,
                resize: true,
                hideHover: 'auto',
                barColors: ['#4dc9f6', '#f67019']
            });
            DirectCorporateSalesMorris = Morris.Bar({
                element: 'DirectCorporate',
                xkey: 'y',
                ykeys: ['a', 'b'],
                labels: ['Policies Renewed', 'Available Policies'],
                gridLineColor: '#eef0f2',
                barSizeRatio: 0.4,
                xLabelAngle: 45,
                resize: true,
                hideHover: 'auto',
                barColors: ['#4dc9f6', '#f67019']
            });
            
            DirectMorris = Morris.Bar({
                element: 'DirectRetailSales',
                xkey: 'y',
                ykeys: ['a', 'b'],
                labels: ['Policies Renewed', 'Available Policies'],
                gridLineColor: '#eef0f2',
                barSizeRatio: 0.4,
                xLabelAngle: 45,
                resize: true,
                hideHover: 'auto',
                barColors: ['#4dc9f6', '#f67019']
            });
            $.ajax({
                type: "GET",
                contentType: "application/json; charset=utf-8",
                url: "GetBIChartBoardProducerPerformance",
                data: "{}",
                dataType: "json",
                success: function (Result) {
                    var Brokr = [];
                    var PPMonth = [];
                    var Agnt = [];
                    var Branc = [];
                    var DirSale = [];
                    jQuery.each(Result.Agent, function (key, value) {

                        Agnt.push(value.b);
                        //write some code here to build the table? I'm just guessing
                    });
                    jQuery.each(Result.Broker, function (key, value) {

                        Brokr.push(value.b);
                        //write some code here to build the table? I'm just guessing
                    });
                    jQuery.each(Result.Broker, function (key, value) {

                        PPMonth.push(value.y);
                        //write some code here to build the table? I'm just guessing
                    });
                    jQuery.each(Result.Direct, function (key, value) {

                        DirSale.push(value.b);
                        //write some code here to build the table? I'm just guessing
                    });
                    jQuery.each(Result.Branch, function (key, value) {

                        Branc.push(value.b);
                        //write some code here to build the table? I'm just guessing
                    });
                    var myLine = new Chart(document.getElementById('ProducerPerformance'), {
                        type: 'line',
                        data: {
                            labels: PPMonth,
                            datasets: [{
                                label: 'Broker',
                                backgroundColor: '#8549ba',
                                borderColor: '#8549ba',
                                //data: [
                                //    20, 40, 13, 12, 25, 10, 5, 32, 6, 38, 20, 25
                                //],
                                data: Brokr,
                                fill: false,
                            }, {
                                label: 'Agent',
                                fill: false,
                                backgroundColor: '#E65A26',
                                borderColor: '#E65A26',
                                //data: [
                                //    40, 24, 15, 18, 10, 6, 20, 37, 12, 27, 14, 3
                                //],

                                data: Agnt,
                            }, {
                                label: 'Direct Sale',
                                fill: false,
                                backgroundColor: '#537bc4',
                                borderColor: '#537bc4',
                                //data: [
                                //    24, 35, 20, 10, 16, 27, 39, 40, 27, 10, 9, 29
                                //],

                                data: DirSale,
                            }, {
                                label: 'Branch',
                                fill: false,
                                backgroundColor: '#acc236',
                                borderColor: '#acc236',
                                //data: [
                                //    3, 40, 24, 35, 16, 19, 29, 35, 10, 35, 6, 14
                                //],
                                data: Branc,
                            }]
                        },
                        options: {
                            responsive: true,
                            tooltips: {
                                mode: 'index',
                                intersect: false,
                            },
                            hover: {
                                mode: 'nearest',
                                intersect: true
                            },
                            scales: {
                                xAxes: [{
                                    display: true,
                                    scaleLabel: {
                                        display: true,
                                        labelString: 'Month'
                                    }
                                }],
                                yAxes: [{
                                    display: true,
                                    scaleLabel: {
                                        display: true,
                                        labelString: 'Value'
                                    }
                                }]
                            }
                        }
                    });
                },
                error: function (Result) {
                    // alert("Error");
                }
            });
            var ctx = document.getElementById("SpecificProducer").getContext("2d");
            window.spBarChart = new Chart(ctx, {
                "type": "bar",
                "data": {
                    "labels": [],
                    "datasets": [{
                        "label": 'Renewed',
                        "backgroundColor": '#E65A26',
                        "borderColor": '#E65A26',
                        "borderWidth": 1,
                        "data": [],
                    }, {
                        "label": 'Available',
                        "backgroundColor": '#537bc4',
                        "borderColor": '#537bc4',
                        "borderWidth": 1,
                        "data": [],
                    }]
                },
                "options": {
                    "scales": {
                        "yAxes": [{
                            "ticks": {
                                "beginAtZero": true
                            }
                        }]
                    }
                }
            });
            function initspMorris(SPBarAData, SPBarBData, SPBarBMonthName) {
                var newDataObject = {
                    "labels": SPBarBMonthName,
                    "datasets": [{
                        "label": 'Renewed',
                        "backgroundColor": '#E65A26',
                        "borderColor": '#E65A26',
                        "borderWidth": 1,
                        "data": SPBarAData,
                    }, {
                        "label": 'Available',
                        "backgroundColor": '#537bc4',
                        "borderColor": '#537bc4',
                        "borderWidth": 1,
                        "data": SPBarBData,
                    }]
                }
                spBarChart.data = newDataObject;
                window.spBarChart.update();
                // spBarChart.destroy();
            }
            document.getElementById('randomizeData').addEventListener('click', function () {
                var BussType = $("#ddlRole").val();
                var ProducerName = $("#Users option:selected").text();
                $.ajax({
                    type: "GET",
                    contentType: "application/json; charset=utf-8",
                    url: "GetSpecificProducerDBChart",
                    data: { 'ProducerName': ProducerName, 'BusinessType': BussType, },
                    dataType: "json",
                    success: function (Result) {


                        var res = Result.lst;
                        //console.log(res);
                        SPBarAData = [];
                        SPBarBData = [];
                        SPBarBMonthName = [];
                        jQuery.each(res, function (key, value) {

                            SPBarAData.push(value.a);
                        });
                        jQuery.each(res, function (key, value) {

                            SPBarBData.push(value.b);
                        });
                        jQuery.each(res, function (key, value) {

                            SPBarBMonthName.push(value.y);
                        });
                        initspMorris(SPBarAData, SPBarBData, SPBarBMonthName);
                        //console.log(res);
                        //spBarChart.data.datasets.forEach(function (res) {
                        //    dataset.res = dataset.data.map(function () {
                        //        return randomScalingFactor();
                        //    });

                        //});
                        //spBarChart.update();
                    },
                    error: function (Result) {
                        // alert("Error");
                    }
                });
                //spBarChart.data.datasets.forEach(function (dataset) {
                //    dataset.data = dataset.data.map(function () {
                //        return randomScalingFactor();
                //    });

                //});
                //spBarChart.update();
            });
        };
        function GetUsers(BT) {
            var procemessage = "<option value='0'> Please wait...</option>";
            $("#Users").html(procemessage).show();
            var url = "/Home/GetUserListBIDashBoard/";

            $.ajax({
                url: url,
                data: { BusinessType: BT },
                cache: false,
                type: "POST",
                success: function (data) {
                    var lst = data.list
                    var markup = "<option value='0'>Select Users</option>";
                    for (var x = 0; x < lst.length; x++) {
                        markup += "<option value=" + lst[x].UserName + ">" + lst[x].UserName + "</option>";
                    }
                    $("#Users").html(markup).show();


                },
                error: function (reponse) {
                    alert("error : " + reponse);
                }
            });

        }
        function GetBIDashBoardUserData() {
            var BussType = $('#BusinessType').val();
            var Users = $('#Users').val();
            $.ajax({
                url: url,
                data: { UserName: Users },
                cache: false,
                type: "POST",
                success: function (data) {
                    var lst = data.list
                    var markup = "<option value='0'>Select Users</option>";
                    for (var x = 0; x < lst.length; x++) {
                        markup += "<option value=" + lst[x].UserName + ">" + lst[x].UserName + "</option>";
                    }
                    $("#Users").html(markup).show();


                },
                error: function (reponse) {
                    alert("error : " + reponse);
                }
            });


        }
    </script>

</asp:Content>
