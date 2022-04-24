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
//数据验证
// function isEmpty() {
//   var name = document.forms["inserte_own"]["name"].value;
//   var call = document.forms["inserte_own"]["call"].value;
//   var id = document.forms["inserte_own"]["id"].value;
//   if (name == null || name == "") {
//     alert("请填写姓名");
//     return false;
//   } else if (call == null || call == "") {
//     alert("请填写联系方式");
//     return false;
//   } else if (call.length < 11) {
//     alert("手机号无效");
//   } else if (id == null || id == "") {
//     alert("请填写身份证");
//     return false;
//   } else if (id.length < 18) {
//     alert("身份证号无效");
//   }
// }
var username = "";
function btget() {
  $.ajax({
    type: "post",
    url: "http://localhost:3430/AddUserAjax.ashx",
    data: {
      //请求json
      Username: document.getElementById("username").value,
      Usercall: document.getElementById("usercall").value,
      Userid: document.getElementById("userid").value,
      usersex: document.getElementById("man").value,
    },
    dataType: "json",
    timeout: 10000,
    //请求成功
    success: function (data) {
      var obj = JSON.parse(data);
      if (obj == 200) {
        alert("添加成功")
      }
    },
  });
  username = document.getElementById("username").value
}
//预定按钮
// function subget() {
//   $.ajax({
//     type: "post",
//     url: "http://localhost:3430/Ajax.ashx",
//     data: {
//       UserName:username,
//       //普通单间
//       RoomType:1,
//       Nowdate1: document.getElementById("nowdate1").value,
//       Getday1: document.getElementById("getday1").value,
//       //豪华单间

//       Nowdate2: document.getElementById("nowdate2").value,
//       Getday2: document.getElementById("getday2").value,
//       //普通双间

//       Nowdate3: document.getElementById("nowdate3").value,
//       Getday3: document.getElementById("getday3").value,
//       //豪华双间

//       Nowdate4: document.getElementById("nowdate4").value,
//       Getday4: document.getElementById("getday4").value,
//       //贵宾套房

//       Nowdate5: document.getElementById("nowdate5").value,
//       Getday5: document.getElementById("getday5").value,
//       //总统套房

//       Nowdate6: document.getElementById("nowdate6").value,
//       Getday6: document.getElementById("getday6").value,
//     },
//     dataType: "json",
//     timeout: 10000,
//     //请求成功
//     success: function (data) {
//       var obj = JSON.parse(data);
//       if (obj == 1200) {
//         alert("预约成功！");
//       }
//     },
//   });

// }


function subget(type) {
  switch (type) {
    case 1:
      $.ajax({
        type: "post",
        url: "http://localhost:3430/Ajax.ashx",
        data: {
          UserName: username,
          //普通单间
          RoomType: type,
          Nowdate1: document.getElementById("nowdate" + type).value,
          Getday1: document.getElementById("getday" + type).value,

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
      break;
    case 2:
      $.ajax({
        type: "post",
        url: "http://localhost:3430/Ajax.ashx",
        data: {
          UserName: username,
          //普通单间
          RoomType: type,
          Nowdate2: document.getElementById("nowdate" + type).value,
          Getday2: document.getElementById("getday" + type).value,

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
      break
    case 3:
      $.ajax({
        type: "post",
        url: "http://localhost:3430/Ajax.ashx",
        data: {
          UserName: username,
          //普通单间
          RoomType: type,
          Nowdate3: document.getElementById("nowdate" + type).value,
          Getday3: document.getElementById("getday" + type).value,

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
      break
    case 4:
      $.ajax({
        type: "post",
        url: "http://localhost:3430/Ajax.ashx",
        data: {
          UserName: username,
          //普通单间
          RoomType: type,
          Nowdate4: document.getElementById("nowdate" + type).value,
          Getday4: document.getElementById("getday" + type).value,

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
      break
    case 5:
      $.ajax({
        type: "post",
        url: "http://localhost:3430/Ajax.ashx",
        data: {
          UserName: username,
          //普通单间
          RoomType: type,
          Nowdate5: document.getElementById("nowdate" + type).value,
          Getday5: document.getElementById("getday" + type).value,

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
      break
    case 6:
      $.ajax({
        type: "post",
        url: "http://localhost:3430/Ajax.ashx",
        data: {
          UserName: username,
          //普通单间
          RoomType: type,
          Nowdate6: document.getElementById("nowdate" + type).value,
          Getday6: document.getElementById("getday" + type).value,

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
      break
  }
}
