$(document).ready(function(){
    $("button").click(function(){
       var usu=$("#txtLogi").val();
       var pas=$("#txtPass").val();
       
       $.getJSON("validar.jsp",{logi:usu,pass:pas}, function(datos){
           sessionStorage.setItem("usuario",usu);
           window.location="panel.html";
       });
    });
});
