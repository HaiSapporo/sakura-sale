javascript:(
    function(){function t(t){
    console.log(t);t.date.match(e);var n=RegExp.$1;var r=RegExp.$2;
    if(r.length<=1)r="0"+r;var i=RegExp.$3;if(i.length<=1)i="0"+i;var s=""+n+"/"+r+"/"+i;var o=[s,t.name,t.author,t.url];return o.join("%5Ct")+"%5Cn"}
    function n(e){var t=window.open("","name","height=250,width=700");t.document.write("<html><head><title>Amazon to TSV</title>");
    t.document.write("</head><body>");
    t.document.write("<pre>");
    t.document.write(e);t.document.write("</pre>");
    t.document.write("</body></html>");t.document.close();return t}
    function u(e){if(typeof e!=="number"){var e=0;$("<div/>").css({position:"fixed",left:0,top:0,width:"100%25",height:"100%25",zIndex:1e3,backgroundColor:"rgba(0,0,0,.7)",color:"%23fff",fontSize:30,textAlign:"center",paddingTop:"15em"}).attr("id","___overlay").text("Amazonいくら使った？").appendTo("body");s=window.prompt("Đây là một sản phẩn của 4649.blog %5Cn - Bạn muốn thống kê năm bao nhiêu？%5Cn - Hãy nhập đúng 4 ký tự số năm%5Cn",s);if(s==="all")
    {o=true;s=jQuery("div.top-controls select option:last").val().match(/%5B0-9%5D/g).join("")}
    else if(!/%5E%5B0-9%5D%7B4%7D$/.test(s)){alert("Xin hãy nhâp đúng số năm (4 chữ số)");$("%23___overlay").remove();return false}s=Number(s)}
    
    var r=a(e,false);$("%23___overlay").text(s +" Đang thống kê… / "+(e+1)+" trang");r.done(function(t){
        if(typeof i[s]==="undefined"){i[s]=t}else{i[s]=i[s].concat(t)}u(e+1)}).fail(function(){
            if(o&&(new Date).getFullYear()>s){s++;u(0)}
            else{var e=0;var r="";jQuery.each(i,function(n,i){var s=0;jQuery.each(i,function()
                {s+=this.price;$.each(this.items,function(e,n){r+=t(n)})});e+=s});$("%23___overlay").remove();alert("合計 "+e+" 円");n(r);
                console.log("合計 "+e+" 円")}})}
                function a(e,t){
                    var n=jQuery.Deferred();var r=f(e,t);r.done(function(e){
                        var r=jQuery.parseHTML(e);var i=[];jQuery(r).find("div.order").each(function(){
                            var e=jQuery(this);var n=jQuery(e.find("div.order-info span.value")[0]).text().trim();
                            var r=[];
                            var s=e.find("div.a-row > span.a-size-small");e.find("div.a-row > a.a-link-normal").each(function(e){
                                var t={};t.name=$(this).text().trim();t.path=$(this).attr("href").trim();
                                t.url="https://www.amazon.co.jp"+t.path;t.date=n;t.author=$(s[e*2]).text().trim().replace(/(%5Cn)/g,"");r.push(t)});var o=jQuery(e.find("div.order-info span.value")[1]).text();var u=Number(o.match(/%5B0-9%5D/g).join(""));if(t)console.log(item,u);i.push({date:n,items:r,price:u})});if(i.length<=0)n.reject();else n.resolve(i)});return n.promise()}
    function f(e){var t=jQuery.Deferred();jQuery.ajax({url:"https://www.amazon.co.jp/gp/css/order-history?digitalOrders=1&unifiedOrders=1&orderFilter=year-"+s+"&startIndex="+e*10,beforeSend:function(e){e.setRequestHeader("X-Requested-With",{toString:function(){return""}})}}).success(function(e){t.resolve(e)}).fail(function(e,t){if(verbose)console.log("fail",t)});return t.promise()}
    var e=new RegExp("(\\d{4})年(\\d{1,2})月(\\d{1,2})日");
    var r=" / ";
    var i={};
    var s="2014";
    var o=false;
    if(typeof jQuery!=="function"){
        var l=document;
        var c=l.createElement("script");
        c.src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js";
        c.onload=u;l.body.appendChild(c)}
    else{u()}})()