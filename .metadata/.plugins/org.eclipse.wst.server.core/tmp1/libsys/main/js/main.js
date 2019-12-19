function dychangecolor(now){
	now.className="changeColor";
}
function backcolor(now){
	now.className="";
}
//实现轮播
var timer = null,
    index = 0,
//这里pics返回的一个数组
    pics = document.getElementsByClassName("banner-slide");
//

function slideImg() {
    var main =document.getElementById("show");
    main.onmouseover = function(){
        stopAutoPlay();
    }
    main.onmouseout = function(){
        startAutoPlay();
    }
//平常就执行鼠标在图片外的函数
    main.onmouseout();
}
//播放轮播图
function startAutoPlay(){
    timer = setInterval(function(){
        index++;
        if(index>3){
            index = 0;
        }
        changeImg();
    },3000);
}
//暂停播放
function stopAutoPlay(){
    if (timer) {
        clearInterval(timer);
    }
}
//改变轮播图
function changeImg(){
//这里的for循环目的是让所有的图片隐藏 
    for(var i=0;i<pics.length;i++){
        pics[i].style.display = "none";  
    }
//这里的目的是让当前的index值的图片显示
    pics[index].style.display = "block";
  
}
slideImg();