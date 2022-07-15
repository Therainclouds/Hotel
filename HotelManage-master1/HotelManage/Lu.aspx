<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lu.aspx.cs" Inherits="HotelManage.Lu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>个人资料</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="https://code.5g-o.com/wp-content/uploads/2021/06/style-3.css">

</head>
<body>
    <form id="form1" runat="server">
        <div>
            
    <!-- header section starts  -->

    <header>

        <div id="menu-bars" class="fas fa-bars"></div>

        <nav class="navbar">
            <a href="#home">顶部</a>
            <a href="#about">关于我</a>
            <a href="#contact">联系我</a>
        </nav>

    </header>

    <!-- header section ends -->

    <!-- home section starts  -->

    <section class="home" id="home">

        <div id="particles-js"></div>

        <div class="content">
            <img class="tilt" src="https://code.5g-o.com/wp-content/uploads/2021/06/home-pic.png" alt="">
            <h3> 陆 <span>加桥</span> </h3>
            <p> 一个 菜鸟程序员 </p>
            <a href="#about" class="btn">关于我</a>
        </div>

    </section>

    <!-- home section ends -->

    <!-- about section starts  -->

    <section class="about" id="about">

        <h1 class="heading"> 关于<span>我</span> </h1>

        <div class="row">

            <div class="image">
                <img class="tilt" src="https://code.5g-o.com/wp-content/uploads/2021/06/about-pic.jpg" alt="">
            </div>

            <div class="content">
                <h3> 我叫 <span> 陆加桥 </span> </h3>
                <p class="info">是一个菜鸟前端工程师</p>
                <div class="box-container">
                    <div class="box">
                        <p> <span> 年龄： </span> 19 </p>
                        <p> <span> 性别： </span> 男 </p>
                        <p> <span> 工作经验 : </span> 无 </p>
                        <p> <span> 学习年份 : </span> 2年 </p>
                    </div>
                    <div class="box">
                        <p> <span> 语言技能 : </span> 中文 </p>
                        <p> <span> 电话 : </span> +86 153-316-57816 </p>
                        <p> <span> 邮箱 : </span>2451451853@qq.com </p>
                        <p> <span> 地址 : </span> 云南农业职业技术学院 </p>
                    </div>
                </div>
                <a href="Team.aspx" class="btn">返回</a>
            </div>

        </div>

    </section>



    <!-- contact section ends -->

    <!-- footer section  -->

    <div class="footer"> created by <span> mr. web designer </span> | all rights reserved! </div>














    <!-- javascript part  -->

    <!-- typed.js link  -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/typed.js/2.0.12/typed.min.js"></script>

    <!-- particles.js links  -->
    <script src="https://code.5g-o.com/wp-content/uploads/2021/06/particles.min_.js"></script>
    <script src="https://code.5g-o.com/wp-content/uploads/2021/06/app.js"></script>

    <!-- vanilla-tilt.js link  -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/vanilla-tilt/1.7.0/vanilla-tilt.min.js"></script>

    <script>

        let menu = document.querySelector('#menu-bars');
        let header = document.querySelector('header');

        menu.onclick = () => {
            menu.classList.toggle('fa-times');
            header.classList.toggle('active');
        }

        window.onscroll = () => {
            menu.classList.remove('fa-times');
            header.classList.remove('active');
        };

        var typed = new Typed('.typing-text', {
            strings: ['front end developer', 'web designer', 'graphic designer', 'web developer'],
            loop: true,
            typeSpeed: 150
        });

        VanillaTilt.init(document.querySelectorAll('.tilt'), {
            max: 25
        });

    </script>

        </div>
    </form>
</body>

</html>
