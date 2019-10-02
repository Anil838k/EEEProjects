<%@ Page Title="" Language="C#" MasterPageFile="~/Header_Footer_Master.master" AutoEventWireup="true" CodeFile="HOME.aspx.cs" Inherits="HOME" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <%-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">  
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>  
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>  
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap4.min.css" />  
    <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>  
    <script src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap4.min.js"></script>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script>
        $('.carousel.carousel-slider').carousel({
            fullWidth: true
        });
    </script>
    <style>
        .carousel-inner img {
            width: 100%;
            height: 350px;
        }
    </style>
    <section class="content">
        <div class=" container-fluid ">
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <br />
                    <marquee><h4 class=" text-capitalize text-center">Bootstrap Carousel Image Slider with database in asp.net</h4></marquee>
                    <br />
                    </div>
                </div>
            </div>
                    <div id="myCarousel" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner" role="listbox">
                            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                <ItemTemplate>
                                    <div class="carousel-item <%#GetActiveClass(Container.ItemIndex) %>">
                                        <div class="hovereffect">
                                            <img style='height: 375px; width: 100%' alt="<%#Eval("Image_Url")%>" src="<%#Eval("Image_Url")%>" />
                                            <div class="overlay">
                                                <div class="rotate">
                                                    <p class="group1">
                                                        <a href="#">
                                                            <i class="fa fa-twitter"></i>
                                                        </a>
                                                        <a href="#">
                                                            <i class="fa fa-facebook"></i>
                                                        </a>
                                                    </p>
                                                    <hr>
                                                    <hr>
                                                    <p class="group2">
                                                        <a href="#">
                                                            <i class="fa fa-instagram"></i>
                                                        </a>
                                                        <a href="#">
                                                            <i class="fa fa-dribbble"></i>
                                                        </a>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:EEE_Proj_AnilConnectionString %>' SelectCommand="get_Home_Image_Slider" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                        </div>
                        <a class="carousel-control-prev" href="#myCarousel" data-slide="prev" role="button">
                            <span class="carousel-control-prev-icon"></span>
                        </a>
                        <a class="carousel-control-next" href="#myCarousel" data-slide="next" role="button">
                            <span class="carousel-control-next-icon"></span>
                        </a>
                    </div>
            <div class="container-fluid" style="height:400px;">

            </div>
    </section>
</asp:Content>

