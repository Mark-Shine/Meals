$(function(){
 
    var alldata = new Array("iMac","MacBook Pro","iphone5","iPod touch","ipad","谢谢~");
    var num = alldata.length - 1;
    var show = $("#show");
    var btn = $("#btn");
    var open = false;
 
    function change(){
        var randomVal = Math.round(Math.random() * num);
        var prizeName = alldata[randomVal];
        show.text(prizeName);
    }
 
    function run(){
        if(!open){
            timer=setInterval(change,30);
            btn.removeClass('start').addClass('stop').text('停止');
            open = true;
        }else{
            clearInterval(timer);
            btn.removeClass('stop').addClass('start').text('开始抽奖');
            open = false;
        }
    }
 
    btn.click(function(){run();})
 
})