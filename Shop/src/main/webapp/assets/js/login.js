$(function() {

$("input").click(function() {
	$('input').each(function(){
		//$($(this).parent()).parent().find("#flag").prop("checked", true);
		var d=$.trim($(this).val());
		if(d==undefined||d==null||d.lenght<=0||d==""){
			$($(this).parent()).parent().find("#flag").prop("checked", false);
			return;
		}
	});
	$('input').blur(function(){
		//$($(this).parent()).parent().find("#flag").prop("checked", true);
		var e=$.trim($(this).val());
		if(e==undefined||e==null||e.lenght<=0||e==""){
			$($(this).parent()).parent().find("#flag").prop("checked", false);
			return;
		}
	});
	var g=$($(this).parent()).parent();
//$("table tr").each(function() {
	
	var i=-1;
	g.find('input').each(function(){
		var m=$.trim($(this).val());
		
		if(m==undefined||m==null||m.lenght<=0||m==""){
			i--;
			
			}
		i++;
		var j=i;

		$(this).bind("input propertychange", function () {
		var v=$.trim($(this).val());	
		if(v==undefined||v==null||v.lenght<=0||v==""){
			i=j;
			}
		i=j+1;
		if(i>=8){
			g.find("#flag").prop("checked", true);
		}else{
			g.find("#flag").prop("checked", false);
		}
		
		});		
		
	});
	});
});

function xuanze(){
	 var i=0;
	 $('table').find("tr").each(function(){
				if($(this).find("#flag").prop("checked")){
				i++;}
		});
	 if(i>=1){return true;}
	 else {
		 alert("请至少选择一个");
		 return false;
	 }
}