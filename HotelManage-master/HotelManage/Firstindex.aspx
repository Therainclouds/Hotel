<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Firstindex.aspx.cs" Inherits="HotelManage.Firstindex" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>敦煌酒店管理系统</title>
  <link
    href="https://fonts.googleapis.com/css2?family=Ubuntu:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500;1,700&display=swap"
    rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.min.css">
  <link rel="stylesheet" href="css/style_head.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js"></script>
  <script src="js/scripts_head.js"></script>
</head>

<body>
  <!-- Navbar -->
  <nav class="navbar">
    <div class="inner-width">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/酒店LOGO.png" />
      <button class="menu-toggler">
        <span></span>
        <span></span>
        <span></span>
      </button>
      <div class="navbar-menu">
        <a href="#home">首页</a>
        <a href="#about">关于我们</a>
        <a href="#services">服务项目</a>
        <a href="#education">历史成就</a>
        <a href="#works">工作明细</a>
        <a href="#contact">联系我们</a>
      </div>
    </div>
  </nav>

  <!-- Home -->
  <section id="home">
    <div class="inner-width">
      <div class="content">
        <h1></h1>
        <div class="sm">
          <a href="#" class="fab fa-facebook-f"></a>
          <a href="#" class="fab fa-twitter"></a>
          <a href="#" class="fab fa-instagram"></a>
          <a href="#" class="fab fa-linkedin-in"></a>
          <a href="#" class="fab fa-youtube"></a>
        </div>
        <div class="buttons">
          <a href="OPLogin.aspx">开始&nbsp使用</a>
        </div>
      </div>
    </div>
  </section>

  <!-- Home -->
  <section id="about">
    <div class="inner-width">
      <h1 class="section-title">关于我们</h1>
      <div class="about-content">
        <img src="images/pic.png" alt="" class="about-pic">
        <div class="about-text">
          <h2>你好！尊敬的用户</h2>
          <h3>
            <span>开发初衷</span>
            <span>语言结构</span>
            <span>使用者</span>
          </h3>
          <p>
            我们是一群心怀梦想的大学生，
            在这个大数据东风刮起的年代，
            我们认为我们的管理系统也应该拥有全新进化
            ，所以为了方便全国行业的管理优化和管理体验
            ，我们制作了敦煌管理系统，
            们的系统使用简单明了，数据分析详细
            ，能够提供最简单最优质的管理服务！
          </p>
        </div>
      </div>

      <div class="skills">
        <div class="skill">
          <div class="skill-info">
            <span>HTML</span>
            <span>90%</span>
          </div>
          <div class="skill-bar html"></div>
        </div>

        <div class="skill">
          <div class="skill-info">
            <span>CSS</span>
            <span>80%</span>
          </div>
          <div class="skill-bar css"></div>
        </div>

        <div class="skill">
          <div class="skill-info">
            <span>Javascript</span>
            <span>70%</span>
          </div>
          <div class="skill-bar js"></div>
        </div>

        <div class="skill">
          <div class="skill-info">
            <span>ASP.NET</span>
            <span>60%</span>
          </div>
          <div class="skill-bar php"></div>
        </div>

        <div class="skill">
          <div class="skill-info">
            <span>SQLServer</span>
            <span>90%</span>
          </div>
          <div class="skill-bar mysql"></div>
        </div>

        <div class="skill">
          <div class="skill-info">
            <span>C#</span>
            <span>80%</span>
          </div>
          <div class="skill-bar cs"></div>
        </div>
      </div>
    </div>
  </section>

  <!-- Services -->
  <section id="services" class="dark">
    <div class="inner-width">
      <h1 class="section-title">服务项目</h1>
      <div class="services">
        <div class="service">
          <i class="icon fas fa-paint-brush"></i>
          <h4>专属的设计</h4>
          <p>我们支持用户通过联系我们来制定自己喜欢的管理系统设计</p>
        </div>

        <div class="service">
          <i class="icon fas fa-pager"></i>
          <h4>管理页面的创建</h4>
          <p>我们将提供免费的系统界面上传，方便各大酒店拥有独立的管理系统页面</p>
        </div>

        <div class="service">
          <i class="icon fas fa-database"></i>
          <h4>独立的服务器</h4>
          <p>我们将为每个用户提供长达3个月的免费服务器</p>
        </div>

        <div class="service">
          <i class="icon fab fa-android"></i>
          <h4>支持移动端浏览</h4>
          <p>方便用户的管理体验</p>
        </div>

        <div class="service">
          <i class="icon fas fa-credit-card"></i>
          <h4>支持用户制定UI界面</h4>
          <p>我们支持用户通过联系我们或自主提供UI界面的设计</p>
        </div>

        <div class="service">
          <i class="icon fas fa-keyboard"></i>
          <h4>良好的交互体验</h4>
          <p>提供最为优质的交互体验</p>
        </div>
      </div>
    </div>
  </section>

  <!-- Education -->
  <section id="education">
    <div class="inner-width">
      <h1 class="section-title"> 成就 & 经验</h1>
      <div class="time-line">

        <div class="block">
          <h4>2021 - 2022</h4>
          <h3>打磨历程</h3>
          <p>在这段时间里，我们通过课本学习了更多深入的知识，
            通过老师和网络打磨了自己的技术和知识面，最终立项，
            完成了这一系统
          </p>
        </div>

        <div class="block">
          <h4>2020 - 2021</h4>
          <h3>学习历程</h3>
          <p>通过这一年的学习掌握搭建我们未来项目的基础，扩展自己的深度，了解自身不足。
            在这个过程中遇到的困难和挫折，都成为了我们完成项目的垫脚石。
          </p>
        </div>

      </div>
    </div>
  </section>

  <!-- Works -->
  <section id="works" class="dark">
    <div class="inner-width">
      <h1 class="section-title">工作明细</h1>
      <div class="works">
        <a href="images/ZTTF.jpg" class="work">
          <img src="images/ZTTF.jpg" alt="">
          <div class="info">
            <h3>酒店商城页面</h3>
            <div class="cat">高端优雅，尽享顶级</div>
          </div>
        </a>

        <a href="images/FWQ.jpg" class="work">
          <img src="images/FWQ.jpg" alt="">
          <div class="info">
            <h3>服务器购买</h3>
            <div class="cat">极致优化, 极致享受</div>
          </div>
        </a>

        <a href="images/GTJM.jpg" class="work">
          <img src="images/GTJM.jpg" alt="">
          <div class="info">
            <h3>工作加盟</h3>
            <div class="cat">共同探索未来的可能性</div>
          </div>
        </a>

        <a href="images/JQQD.jpg" class="work">
          <img src="images/JQQD.jpg" alt="">
          <div class="info">
            <h3>敬请期待</h3>
            <div class="cat">敬请期待</div>
          </div>
        </a>

        <a href="images/JQQD.jpg" class="work">
          <img src="images/JQQD.jpg" alt="">
          <div class="info">
            <h3>敬请期待</h3>
            <div class="cat">敬请期待</div>
          </div>
        </a>

        <a href="images/JQQD.jpg" class="work">
          <img src="images/JQQD.jpg" alt="">
          <div class="info">
            <h3>敬请期待</h3>
            <div class="cat">敬请期待</div>
          </div>
        </a>
      </div>
    </div>
  </section>

  <!-- Contact -->
  <section id="contact">
    <div class="inner-width">
      <h1 class="section-title">联系我们</h1>
      <div class="contact-info">
        <div class="item">
          <i class="fas fa-mobile-alt"></i>
          +86 15331657816
        </div>

        <div class="item">
          <i class="fas fa-envelope"></i>
          2451418532@qq.com
        </div>

        <div class="item">
          <i class="fas fa-map-marker-alt"></i>
            <a href="Map.aspx" style="text-decoration:none;color:white;">云南农业职业技术学院互联网技术学院</a>
        </div>
      </div>

      <form action="#" class="contact-form">
        <input type="text" class="nameZone" placeholder="Your Full Name">
        <input type="email" class="emailZone" placeholder="Your Email">
        <input type="text" class="subjectZone" placeholder="Subject">
        <textarea class="messageZone" placeholder="Message"></textarea>
        <input type="submit" value="Send Message" class="btn">
      </form>
    </div>
  </section>

  <!-- Footer -->
  <footer>
    <div class="inner-width">
      <div class="copyright">
        &copy; 2022 | 敦煌管理系统 <a href="Team.aspx">了解我们</a>
      </div>
      <div class="sm">
        <a href="#" class="fab fa-facebook-f"></a>
        <a href="#" class="fab fa-twitter"></a>
        <a href="#" class="fab fa-instagram"></a>
        <a href="#" class="fab fa-linkedin-in"></a>
        <a href="#" class="fab fa-youtube"></a>
      </div>
    </div>
  </footer>

  <!-- Go Top BTN -->
  <button class="goTop fas fa-arrow-up"></button>

</body>
<
</html>
