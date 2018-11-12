/**
 * Created by Administrator on 2017/9/22.
 */
/**
 * 移动端日历（浏览器打开请F12打开手机模拟器）
 *
 * 本日历可选择单个日期，也可选择两个或多个日期；默认可选单个日期；如需多选；可根据句中注释选择相应；
 * 日历纯手写；未加触摸事件；如需可自行添加，然后将 next() 和 prev() 方法对应相应事件；
 * @param   year,y,nian  年
 * @param   month,m,yue  月
 * @param   day          日
 * @param   td_time      当前时间戳
 * @param   week         本月1号周几
 * @param   days         本月天数
 * @param   dayw         上月天数
 */
//日历开始
var yearjiari=[];
var basejieri={'0101':'元旦','0214':'情人节','0308':'妇女节','0401':'愚人节','0501':'劳动节','0601':'儿童节','0701':'建党节','0801':'建军节','0910':'教师节','1001':'国庆节','1111':'光棍节','1224':'平安夜','1225':'圣诞节'}
$(function(){
    var date=new Date();            //定义一个日期对象；
    var year=date.getFullYear();    //获取当前年份；
    var month=date.getMonth()+1;    //获取当前月份；
    var day=date.getDate();         //获取当前日期；
    
    //回填数据
    $('.year').text(year);
    $('.month').text(month);
    $.ajax({
         type: "GET",
         url: "http://tool.bitefu.net/jiari/vip.php?d="+year+"&type=2&back=1&backtype=1&apikey=123456",
         dataType: "jsonp",
         success: function(data){
             if(data.status){
                yearjiari=data.data[year];
             }datt(year,month,'');
          }
     });
    //
//下一月；
    $('.next').click(function(){
        next();
    });

//上一月；
    $('.prev').click(function(){
        prev();
    });

//返回本月；
    $('.tomon').click(function(){
        datt(year,month,'');
        $('.year').text(year);
        $('.month').text(month);
    });

});
function datt(nian,yue,ri){
//    计算本月1号是周几；
    var week=new Date(nian+'-'+yue+'-1').getDay();
//计算本月有多少天；
    var days=new Date(nian,yue,0).getDate();
//计算上月有多少天；
    var dayw=new Date(nian,yue-1,0).getDate();

//将日历填回页面；拿出节假日
    var html='';
    var newyue=yue;
    if(newyue.toString().length==1)newyue='0'+newyue;
    for(var i=1;i<=days;i++){
        var time=new Date(nian,yue,i).getTime();
        var newri=i;
        if(newri.toString().length==1)newri='0'+newri;
        var newyueri=newyue+''+newri;
        if(yearjiari.hasOwnProperty(newyueri)){
            html+="<li class='jiari' data-jr="+yue+"-"+ i +" data-id="+time+" data-date="+ nian+"-"+yue+"-"+i+"><span>"+i+"</span><i>"+yearjiari[newyueri]+"</i></li>"
        }else{
            if(basejieri.hasOwnProperty(newyueri)){
                html+="<li data-jr="+yue+"-"+ i +" data-id="+time+" data-date="+ nian+"-"+yue+"-"+i+"><span>"+i+"</span><i>"+basejieri[newyueri]+"</i></li>"
            }else{
                html+="<li data-jr="+yue+"-"+ i +" data-id="+time+" data-date="+ nian+"-"+yue+"-"+i+"><span>"+i+"</span></li>";
            }
        }
    }
    $('.date ul').html(html);

//获取当前日期的时间戳；
    var ym=new Date().getFullYear();
    var mm=new Date().getMonth()+1;
    var dm=new Date().getDate();
    var td_time=new Date(ym,mm,dm).getTime();

// 日历里面时间戳跟当前时间戳比较；大于等于 可点击；小于不可点击；日期默认单选
    for(var k=0;k<days;k++){
        var tt_time=$('.date ul li').eq(k).attr('data-id');
        var num=0;
        //判断是否是周六或周日；添加特殊样式
        var wk=new Date($('.date ul li').eq(k).attr('data-date')).getDay();
        if(wk==6||wk==0){
            $('.date ul li').eq(k).addClass('act_wk')
        }
        if(tt_time > td_time){
            $('.date ul li').eq(k).click(function(){
                var _this=$(this);
                //如果是单选日期则使用这个；
                _this.addClass('act_date');     //选择开始日期
                _this.siblings('li').removeClass('act_date');
                var dr=_this.attr('data-date');
                console.log(dr);
            });
        }else if(tt_time == td_time){
            $('.date ul li').eq(k).addClass('act_date');
            $('.date ul li').eq(k).click(function(){
                var _this=$(this);
                _this.addClass('act_date');
                _this.siblings('li').removeClass('act_date');
                var dr=_this.attr('data-date');
                // console.log(dr);
            });
        }else{
         //   $('.date ul li').eq(k).addClass('no_date');
        }
    }

//计算前面空格键；
    var html2='';
    for(var j=dayw-week+1;j<=dayw;j++){
        html2+="<li class='no_date'>"+j+"</li>";
    }
    $('.date ul li').eq(0).before(html2);

//计算后面空格键；
    var html3='';
    for(var x=1;x<43-days-week;x++){
        html3+="<li class='no_date'>"+x+"</li>";
    }
    $('.date ul li').eq(days+week-1).after(html3);
}

//找出节假日；


//下一月；
function next(){
    var y=$('.year').text();
    var m=$('.month').text();
    if(m==12){
        y++;
        m=1;
    }else{
        m++;
    }
    $('.year').text(y);
    $('.month').text(m);
    datt(y,m,'')
}
//上一月；
function prev(){
    var y=$('.year').text();
    var m=$('.month').text();
    if(m==1){
        y--;
        m=12;
    }else{
        m--;
    }
    $('.year').text(y);
    $('.month').text(m);
    datt(y,m,'')
}

