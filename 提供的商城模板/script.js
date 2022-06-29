let searchBtn = document.querySelector("#search-btn");
let searchBar = document.querySelector(".search-bar-container");
let formBtn = document.querySelector("#login-btn");
let loginForm = document.querySelector(".login-form-container");
let formClose = document.querySelector("#form-close");
let menu = document.querySelector("#menu-bar");
let navbar = document.querySelector(".navbar");
let videoBtn = document.querySelectorAll(".vid-btn");

window.onscroll = () => {
  navbar.classList.remove("active");
};

videoBtn.forEach((btn) => {
  btn.addEventListener("click", () => {
    document.querySelector(".controls .active").classList.remove("active");
    btn.classList.add("active");
    let src = btn.getAttribute("data-src");
    document.querySelector("#video-slider").src = src;
  });
});

var swiper = new Swiper(".review-slider", {
  spaceBetween: 20,
  loop: true,
  autoplay: {
    delay: 2500,
    disableOnInteraction: false,
  },
  breakpoints: {
    640: {
      slidesPerView: 1,
    },
    768: {
      slidesPerView: 2,
    },
    1024: {
      slidesPerView: 3,
    },
  },
});

var swiper = new Swiper(".brand-slider", {
  spaceBetween: 20,
  loop: true,
  autoplay: {
    delay: 2500,
    disableOnInteraction: false,
  },
  breakpoints: {
    450: {
      slidesPerView: 2,
    },
    768: {
      slidesPerView: 3,
    },
    991: {
      slidesPerView: 4,
    },
    1200: {
      slidesPerView: 5,
    },
  },
});

function btget() {
  $.ajax({
    type: "post",
    url: "http://localhost:3430/Ajax.ashx",
    data: {
      //请求json
      Username: document.getElementById("username").value,
      Usercall: document.getElementById("usercall").value,
      Userid: document.getElementById("userid").value,
    },
    dataType: "json",
    timeout: 10000,
    //请求成功
    success: function (data) {
      // var obj = JSON.parse(data);
      // alert(obj);
    },
  });
}
function subget() {
  $.ajax({
    type: "post",
    url: "http://localhost:3430/Ajax.ashx",
    data: {
      //普通单间
      Nowdate1: document.getElementById("nowdate1").value,
      Getday1: document.getElementById("getday1").value,
      //豪华单间
      Nowdate2: document.getElementById("nowdate2").value,
      Getday2: document.getElementById("getday2").value,
      //普通双间
      Nowdate3: document.getElementById("nowdate3").value,
      Getday3: document.getElementById("getday3").value,
      //豪华双间
      Nowdate4: document.getElementById("nowdate4").value,
      Getday4: document.getElementById("getday4").value,
      //贵宾套房
      Nowdate5: document.getElementById("nowdate5").value,
      Getday5: document.getElementById("getday5").value,
      //总统套房
      Nowdate6: document.getElementById("nowdate6").value,
      Getday6: document.getElementById("getday6").value,
    },
    dataType: "json",
    timeout: 10000,
    //请求成功
    success: function (data) {
      var obj = JSON.parse(data);
      if (obj == 1200) {
        alert("预约成功！");
      }
    },
  });
}
//弹窗
//单人
document.getElementById("zhezhao").style.display = "none";
function tankuang() {
  document.getElementById("zhezhao1").style.display = "";
}
function hidder() {
  document.getElementById("zhezhao").style.display = "none";
}
//豪华单
document.getElementById("zhezhao1").style.display = "none";
function tankuang1() {
  document.getElementById("zhezhao1").style.display = "";
}
function hidder1() {
  document.getElementById("zhezhao1").style.display = "none";
}
//双人
document.getElementById("zhezhao2").style.display = "none";
function tankuang2() {
  document.getElementById("zhezhao2").style.display = "";
}
function hidder2() {
  document.getElementById("zhezhao2").style.display = "none";
}
//豪华双
document.getElementById("zhezhao3").style.display = "none";
function tankuang3() {
  document.getElementById("zhezhao3").style.display = "";
}
function hidder3() {
  document.getElementById("zhezhao3").style.display = "none";
}
//贵宾
document.getElementById("zhezhao4").style.display = "none";
function tankuang4() {
  document.getElementById("zhezhao4").style.display = "";
}
function hidder4() {
  document.getElementById("zhezhao4").style.display = "none";
}
//总统
document.getElementById("zhezhao5").style.display = "none";
function tankuang5() {
  document.getElementById("zhezhao5").style.display = "";
}
function hidder5() {
  document.getElementById("zhezhao5").style.display = "none";
}
