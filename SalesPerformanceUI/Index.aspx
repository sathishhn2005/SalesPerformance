<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="SalesPerformanceUI.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div id="wrapper">
        <!-- Sidebar -->
        <ul class="navbar-nav sidebar sidebar-light accordion" id="accordionSidebar">
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

            <li class="nav-item">
                <a class="nav-link" href="MasterDatabase.aspx">
                    <i class="fas fa-fw fa-car"></i>
                    <span>Transaction</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Target Fixing.aspx">
                    <i class="fas fa-fw fa-phone"></i>
                    <span>Traget Fixing</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="ProspectAddScreenAdd.aspx">
                    <i class="fas fa-fw fa-user"></i>
                    <span>Prospect Add Screen</span>
                </a>
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

                            </div>
                        </li>


                    </ul>
                </nav>
                <!-- Topbar -->

                <div class="container-fluid" id="container-wrapper">

                    <h6 class="m-0 font-weight-bold text-primary" style="font-size: 24px">MIS Dashboard</h6>
                    <ol class="breadcrumb my-2">
                        <li class="breadcrumb-item">Home</li>
                        <li class="breadcrumb-item active">MIS Dashboard</li>
                    </ol>
                    <div class="row">
                        <div class="col-md-4">
                            <asp:Label runat="server"><b>Producer</b></asp:Label>
                            <asp:DropDownList ID="ddlProducer" CssClass="form-control form-control-sm" AutoPostBack="true" OnSelectedIndexChanged="ddlProducer_SelectedIndexChanged" runat="server">
                                <asp:ListItem Text="Select" Value="0"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-4">
                            <asp:Label runat="server"><b>Choose Producer Name</b></asp:Label>
                            <asp:DropDownList ID="ddlProducerType" OnTextChanged="ProducerType_TextChanged" AutoPostBack="true" CssClass="form-control form-control-sm" runat="server">
                                <asp:ListItem Text="Select" Value="0"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                  

                    <div class="row mb-3 my-4">

                        <div class="col-md-6 mb-4">
                            <div class="card h-100">
                                <div class="card-body">
                                    <div class="row ">
                                        <div class="col-md-7">

                                            <div>
                                                <h4 class="content-color-primary font-weight-bold my-0 mb-4">Prospects Report</h4>
                                                <div class="d-flex justify-content-between">
                                                    <div class=" mb-0  content-color-primary w-100">
                                                        <div class="d-flex justify-content-between">
                                                            <label class="font-16">Total Available Prospects</label>
                                                            <label id="TotalAvailableProspects" runat="server" class="text-primary font-weight-bold font-16 ">
                                                            </label>
                                                        </div>
                                                        <div class="d-flex justify-content-between">
                                                            <label class="font-16">Converted Prospects</label>
                                                            <label id="TotalConvertedProspects" runat="server" class="text-success font-weight-bold font-16"></label>
                                                        </div>
                                                        <div class="d-flex justify-content-between">
                                                            <label class="font-16">Lost Prospects</label>
                                                            <label class="text-warning font-weight-bold font-16">21</label>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <div id="monthly-policy" class="morris-charts" style="height: 200px; width: 100%"></div>
                                        </div>
                                    </div>
                                    <div class="mt-2 mb-0 text-muted d-none">
                                        <span class="text-success mr-2 font-16"><i class="fa fa-arrow-up"></i>3.00 %</span>
                                        <span class="font-16">Progress since last month</span>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <div class="col-md-6 mb-4">
                            <div class="card h-100">
                                <div class="card-body">
                                    <div class="row ">
                                        <div class="col-md-7">
                                            <div class="d-flex justify-content-between mb-4">
                                                <div>
                                                    <h4 class="content-color-primary font-weight-bold my-0">Policies Report</h4>
                                                </div>
                                                <div>
                                                    <select class="form-control form-control-sm" id="lstYears" name="lstYears" onchange="javascript:GetSpecificYearWR(this.value);">
                                                        <option value="Monthly">Monthly</option>
                                                        <option value="Yearly">Yearly</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="d-flex justify-content-between">

                                                <div class=" mb-0  content-color-primary w-100">
                                                    <div class="d-flex justify-content-between">
                                                        <label class="font-16">Total Available Policies</label>
                                                        <label id="lblTNPYear" class="text-primary font-weight-bold font-16 ">9789</label>
                                                    </div>
                                                    <div class="d-flex justify-content-between">
                                                        <label class="font-16">Approved Policies</label>
                                                        <label id="lblTNPRenewedYear" class="text-success font-weight-bold font-16">2017</label>
                                                    </div>
                                                    <div class="d-flex justify-content-between">
                                                        <label class="font-16">Lost Policies</label>
                                                        <label id="lblTNPUnderProcessYear" class="text-warning font-weight-bold font-16">0</label>
                                                    </div>

                                                </div>

                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <div id="yearly-policy" class="morris-charts" style="height: 200px; width: 100%"></div>
                                        </div>
                                    </div>
                                    <div class="mt-2 mb-0 text-muted d-none ">
                                        <span id="lblPercentageRenewedYear" class="text-success mr-2 font-16"><i class="fa fa-arrow-up"></i>20.00  %</span>
                                        <span class="font-16">Progress since last year</span>
                                    </div>
                                </div>

                            </div>
                        </div>


                        <div class="col-md-6 mb-4">
                            <div class="card h-100">
                                <div class="card-body">
                                    <div class="row ">
                                        <div class="col-md-7">
                                            <div class="d-flex justify-content-between mb-4">
                                                <div>
                                                    <h4 class="content-color-primary font-weight-bold my-0 ">Strikerate Report</h4>
                                                </div>
                                                <div>
                                                    <select class="form-control form-control-sm" id="lstYearss" name="lstYears" onchange="javascript:GetSpecificYearWR(this.value);">
                                                        <option value="Monthly">Premium</option>
                                                        <option value="Yearly">Counts</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="d-flex justify-content-between">

                                                <div class=" mb-0  content-color-primary w-100">
                                                    <div class="d-flex justify-content-between">
                                                        <label class="font-16">Total Available</label>
                                                        <label id="lblTNP" class="text-primary font-weight-bold font-16 ">9789</label>
                                                    </div>
                                                    <div class="d-flex justify-content-between">
                                                        <label class="font-16">Approved</label>
                                                        <label id="lblTNPRenewed" class="text-success font-weight-bold font-16">2017</label>
                                                    </div>
                                                    <div class="d-flex justify-content-between">
                                                        <label class="font-16">Lost</label>
                                                        <label id="lblTNPUnderProcess" class="text-warning font-weight-bold font-16">0</label>
                                                    </div>

                                                </div>

                                            </div>
                                        </div>



                                        <div class="col-md-5 pt-5">
                                            <canvas id="MonthlyPremiumChart" height="250"></canvas>
                                        </div>

                                        <div class="mt-2 mb-0 text-muted d-none">
                                            <span class="text-success mr-2 font-16"><i class="fa fa-arrow-up"></i>0.00  %</span>
                                            <span class="font-16">Progress since last month</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6 mb-4">
                            <div class="card h-100">
                                <div class="card-body">
                                    <div class="row ">
                                        <div class="col-md-7">
                                            <div class="d-flex justify-content-between mb-4">
                                                <div>
                                                    <h4 class="content-color-primary font-weight-bold my-0 ">Premium Report</h4>
                                                </div>
                                                <div>
                                                    <select class="form-control form-control-sm" id="lstYear" name="lstYears" onchange="javascript:GetSpecificYearWR(this.value);">
                                                        <option value="Monthly">Monthly</option>
                                                        <option value="Yearly">Yearly</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="d-flex justify-content-between">

                                                <div class=" mb-0  content-color-primary w-100">
                                                    <div class="d-flex justify-content-between">
                                                        <label class="font-16">Total Available Premium</label>
                                                        <label id="lblTNPY" class="text-primary font-weight-bold font-16 ">9789</label>
                                                    </div>
                                                    <div class="d-flex justify-content-between">
                                                        <label class="font-16">Approved Premium</label>
                                                        <label id="lblTNPRenewedY" class="text-success font-weight-bold font-16">2017</label>
                                                    </div>
                                                    <div class="d-flex justify-content-between">
                                                        <label class="font-16">Lost Premium</label>
                                                        <label id="lblTNPUnderProcessY" class="text-warning font-weight-bold font-16">0</label>
                                                    </div>

                                                </div>

                                            </div>
                                        </div>
                                        <div class="col-md-5 pt-5">
                                            <canvas id="YearlyPremiumChart" height="250"></canvas>
                                        </div>
                                    </div>
                                    <div class="mt-2 mb-0 text-muted d-none">
                                        <span id="lblPercentPremiumRenewedYear" class="text-success mr-2 font-16"><i class="fa fa-arrow-up"></i>1.00  %</span>
                                        <span class="font-16">Progress since last year</span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Example chart -->


                        <!-- EXAMPLE CHART ENDS-->


                        <!-- Earnings (Monthly) Card Example -->
                        <!-- Area Chart -->
                        <div class="col-xl-12 col-lg-12">
                            <div class="card mb-4">
                                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h4 class="m-0 font-weight-bold text-primary">Monthly Report</h4>

                                </div>
                                <div class="card-body">
                                    <ul class="list-inline widget-chart m-t-20 m-b-15 text-center">
                                        <li class="list-inline-item">
                                            <h5 class="content-color-primary font-weight-bold">0</h5>
                                            <p class="content-color-primary">
                                                TOTAL Available
                                            </p>
                                        </li>
                                        <li class="list-inline-item">
                                            <h5 class="content-color-primary font-weight-bold">2017</h5>
                                            <p class="content-color-primary">TOTAL POLICIES RENEWED</p>
                                        </li>
                                        <li class="list-inline-item">
                                            <h5 class="content-color-primary font-weight-bold">2367</h5>
                                            <p class="content-color-primary">TOTAL POLICIES LOST</p>
                                        </li>
                                    </ul>
                                    <div class="chart-area">
                                        <div id="morris-bar-example" class="morris-charts" style="height: 300px"></div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <!--Row-->


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
        function GetSpecificYearWR(Year) {

            if (Year == "") {
                var dt = new Date();
                Year = dt.getFullYear();
            }
            var url = "/Home/GetSpecificYearWiseReport/";

            $.ajax({
                url: url,
                data: { Years: Year },
                cache: false,
                type: "GET",
                success: function (data) {
                    document.getElementById('lblTNPYear').innerHTML = data.list.TNPYear;
                    document.getElementById('lblTNPRenewedYear').innerHTML = data.list.TNPRenewedYear;
                    document.getElementById('lblTNPUnderProcessYear').innerHTML = data.list.TNPUnderProcessYear;
                    document.getElementById('lblTNPLostYear').innerHTML = data.list.TNPLostYear;
                    document.getElementById('lblPercentageRenewedYear').innerHTML = data.list.PercentageRenewedYear;
                    document.getElementById('lblTNPYearPremium').innerHTML = data.list.TNPYearPremium;
                    document.getElementById('lblTNPRenewedYearPremium').innerHTML = data.list.TNPRenewedYearPremium;
                    document.getElementById('lblTNPUPYearPremium').innerHTML = data.list.TNPUPYearPremium;
                    document.getElementById('lblTNPLostYearPremium').innerHTML = data.list.TNPLostYearPremium;
                    document.getElementById('lblPercentPremiumRenewedYear').innerHTML = data.list.PercentPremiumRenewedYear;


                },
                error: function (reponse) {
                    alert("error : " + reponse);
                }
            });

        }
        $(document).ready(function () {
            $("#Role").on("change", function () {
                var RoleId = $('#Role').val();
                $("#ddlProducer option").remove();
                $.ajax({
                    type: "GET", url: "GetProducerInfo?RoleId=" + RoleId + "", dataType: "json", contentType: "application/json", success: function (res) {
                        $.each(res.list, function (data, value) {

                            $("#ddlProducer").append($("<option></option>").val(value.UserName).html(value.ProducerName));
                        })
                    }

                });
            });
        });
    </script>


    <script>
        var chartData = [];
        !function ($) {
            "use strict";

            var Dashboard = function () {
            };
            //creates Donut chart
            Dashboard.prototype.createDonutChart = function (element, data, colors) {
                Morris.Donut({
                    element: element,
                    data: data,
                    resize: true,
                    colors: colors
                });
            },
                Dashboard.prototype.init = function () {

                    $.ajax({
                        type: "GET",
                        contentType: "application/json; charset=utf-8",
                        url: "GetRevenueByYear",
                        data: "{}",
                        dataType: "json",
                        success: function (Result) {
                            chartData = Result.list;
                            Morris.Bar({
                                element: 'morris-bar-example',
                                data: chartData,
                                xkey: 'y',
                                ykeys: ['a', 'b', 'c'],
                                labels: ['Lost Policies', 'Policy Renewed', 'Pending Policies'],
                                gridLineColor: '#eef0f2',
                                barSizeRatio: 0.4,
                                xLabelAngle: 45,
                                resize: true,
                                hideHover: 'auto',
                                barColors: ['#30419b', '#02c58d', '#ffa426']
                            });
                        },
                        error: function (Result) {
                            // alert("Error");
                        }
                    });
                },
                //init
                $.Dashboard = new Dashboard, $.Dashboard.Constructor = Dashboard
        }(window.jQuery);

        //initializing
        window.onload = function () {
            window.MPmyBar = new Chart(document.getElementById('MonthlyPremiumChart'), {
                type: 'bar',
                data: {
                    labels: ['Renewal', 'Renewed', 'Under Process', 'Lost'],
                    datasets: [{
                        backgroundColor: ['#6777EF', '#66bb6a', '#ffa426', '#fc544b'],
                        data: [
                            9205436,
                            10202,
                            0,
                            2280,
                            //100548,
                            //150780,
                            //50125
                        ]
                    }]

                },
                options: {
                    tooltips: {
                        mode: 'index',
                        intersect: false
                    },
                    legend: {
                        display: false,
                    },
                    responsive: true,
                    scales: {
                        xAxes: [{
                            stacked: true,
                        }],
                        yAxes: [{
                            stacked: true,
                            ticks: {
                                callback: function (label, index, labels) {
                                    return label / 1000 + 'k';
                                }
                            }
                        }]
                    }
                }
            });
            window.YPmyBar = new Chart(document.getElementById('YearlyPremiumChart'), {
                type: 'bar',
                data: {
                    labels: ['Renewal', 'Renewed', 'Under Process', 'Lost'],
                    datasets: [{
                        backgroundColor: ['#6777EF', '#66bb6a', '#ffa426', '#fc544b'],
                        data: [
                            9610793,
                            137657,
                            0,
                            182100
                        ]
                    }]

                },
                options: {
                    tooltips: {
                        mode: 'index',
                        intersect: false
                    },
                    legend: {
                        display: false,
                    },
                    responsive: true,
                    scales: {
                        xAxes: [{
                            stacked: true,
                        }],
                        yAxes: [{
                            stacked: true,
                            ticks: {
                                callback: function (label, index, labels) {
                                    return label / 1000 + 'k';
                                }
                            }
                        }]
                    }
                }
            });
            var $monthlypolicy = [
                { label: "Total Available ", value: 4775 },
                { label: "Renewed", value: 164 },
                { label: "Under Process ", value: 0 },
                { label: "Lost ", value: 40 }
            ];
            var $yearlypolicy = [
                { label: "Total Available ", value: 9789 },
                { label: "Renewed", value: 2017 },
                { label: "Under Process ", value: 0 },
                { label: "Lost ", value: 2367 }
            ];
            setTimeout(function () {

                "use strict";
                $.Dashboard.init();
                //$.Dashboard.createDonutChart('morris-donut-example', $donutData, ['#fcbe2d', '#30419b', '#02c58d']);
                $.Dashboard.createDonutChart('monthly-policy', $monthlypolicy, ['#6777EF', '#66bb6a', '#ffa426', '#fc544b']);

                $.Dashboard.createDonutChart('yearly-policy', $yearlypolicy, ['#6777EF', '#66bb6a', '#ffa426', '#fc544b']);
            }, 100);
        }
    </script>
</asp:Content>
