<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Team.aspx.cs" Inherits="HotelManage.Team" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>团队介绍</title>

    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            color: #737789;
            font-size: 18px;
            line-height: 36px;
            font-weight: 400;

        }

        .title {
            margin-top: -50px;
            margin-bottom: 90px;
        }

        .title h3 {
            font-size: 35px;
        }



        .team-one {
            padding-top: 120px;
            padding-bottom: 90px;
            position: relative;
        }

        [class*=bg-shape-] {
            position: absolute;
        }

        .shape {
            top: 35px;
            left: 0;
        }

        .team-one .container {
            position: relative;
        }

        .single {
            margin-bottom: 30px;
            border-radius: 5px;
            box-shadow: 0px 10px 60px 0px rgba(46, 61, 98, 0.1);
            text-align: center;
            position: relative;
            padding-bottom: 60px;
            padding-top: 57px;
            transform: scaleY(1);
            transform-origin: top;
            transition: transform 500ms ease;

        }

        .single:hover {
            transform: scaleY(1.20);
        }

        .inner {
            transform-origin: top;
            transition: transform 500ms ease;
            transform: scaleY(1);
        }

        .single:hover .inner {
            transform: scaleY(.8);
        }

        .image {
            width: 200px;
            height:200px;
            margin-left: auto;
            margin-right: auto;
            /*border-radius: 100%;*/
            overflow: hidden;
            /*border: 5px solid #fff;*/                                                          
            transition: all 500ms ease;

        }
                   

        .single:hover .image {
                                 
        }

        .single h3 {
            margin: 0;
            font-size: 25px;
            font-weight: bold;
            color: #252c4b;
            line-height: 1em;
            transition: all 500ms ease;
        }

        .single p {
            color: #737789;
            margin: 0;
            line-height: 1em;
            font-size: 14px;
            margin-top: 12px;
            margin-bottom: 44px;
            transition: all 500ms ease;
        }

        .single:hover p,
        .single:hover h3 {
            color: #fff;
        }

        .social {
            position: absolute;
            bottom: -70px;
            left: 50%;
            transform: translateX(-50%);
            display: flex;
            align-items: center;
            justify-content: center;
            z-index: 11;
            visibility: hidden;
            opacity: 0;
            transition: all 500ms ease;

        }

        .single:hover .social {
            opacity: 1;
            visibility: visible;
        }

        .social>a {
            width: 44px;
            height: 44px;
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            background-color: #fff;
            opacity: 0.3;
            transition: all 500ms ease;

        }

        .social>a i {
            color: #737789;
            transition: all 500ms ease;
            font-size: 16px;
            border: 2px solid white deepskyblue;
        }

        .social>a:hover {
            opacity: 1;

        }

        .social>a:hover i {
            color: #fd632f;
        }

        .social a+a {
            margin-left: 10px;
        }

        .circle::before {
            position: absolute;
            top: 0;
            right: 0;
            width: 153px;
            height: 117px;
            content: '';
            background-image: url(images/team-circle-1-1.png);
            transform: perspective(200px) scaleX(0) scaleY(0);
            transition: transform 500ms ease, opacity 500ms ease;
            opacity: 0;
            transform-origin: right top;
        }

        .circle::after {
            position: absolute;
            bottom: 0;
            left: 0;
            width: 140px;
            height: 156px;
            content: '';
            background-image: url(imags/team-circle-1-2.png);
            transform: perspective(150px) scaleX(0) scaleY(0);
            transition: transform 500ms ease, opacity 500ms ease;
            opacity: 0;
            transform-origin: left bottom;
        }

        .single:hover .circle::before,
        .single:hover .circle::after {
            opacity: 0.3;
            transform: perspective(200px) scaleX(1) scaleY(.8);
        }


        .single::before {
            content: '';
            border-radius: 5px;
            background-image: linear-gradient(90deg, hotpink 0%, #34495e 100%);
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            transform: scale(1, 0);
            transform-origin: bottom;
            transition: transform 500ms ease;

        }

        .single:hover::before {

            transform: scale(1, 1);
            transform-origin: top;
        }

        .inner {
            position: relative;
        }

        a:hover {
            text-decoration: none;
        }
    </style>

</head>

<body>
    <form id="form1" runat="server">
        <div>
    <section class="team-one" id="team">

        <img src="images/faq-bg-1-1.png" class="bg-shape-1" alt="">
        <div class="container">
            <div class="title text-center">
                <p>了解我们的队伍</p>
                <h3>我们需要更多力量 <br/> </h3>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-6 col-sm-12">
                    <div class="single">
                        <div class="circle"></div><!-- /.team-one__circle -->
                        <div class="inner">
                            <h3>CEO、前端工程师</h3>
                            <p>许应烨</p>
                            <div class="image">
                                <img src="images/LX.png" alt=""/>
                            </div><!-- /.team-one__image -->
                            <div class="social">
                                <a href="Xu.aspx"><i class="fa fa-facebook"></i></a>
                                <a href="Firstindex.aspx"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                            </div>
                        </div>
                    </div><!-- /.team-one__single -->
                </div><!-- /.col-lg-3 col-md-6 col-sm-12 -->
                <div class="col-lg-4 col-md-6 col-sm-12">
                    <div class="single">
                        <div class="circle"></div>
                        <div class="inner">
                            <h3>财政管理 设计师</h3>
                            <p>李万雄</p>
                            <div class="image">
                                <img src="images/WX.png" alt="">
                            </div>
                            <div class="social">
                                <a href="Li.aspx"><i class="fa fa-facebook"></i></a>
                                <a href="Firstindex.aspx"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-12">
                    <div class="single">
                        <div class="circle"></div>
                        <div class="inner">
                            <h3>技术总监</h3>
                            <p>陆加桥</p>
                            <div class="image">
                                <img src="images/PH.png" alt="">
                            </div><!-- /.team-one__image -->
                            <div class="social">
                                <a href="Lu.aspx"><i class="fa fa-facebook-square"></i></a>
                                <a href="Firstindex.aspx"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
        </div>
    </form>
</body>
</html>
