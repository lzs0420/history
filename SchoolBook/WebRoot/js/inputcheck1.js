/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

function $(str){
    return(document.getElementById(str));
}

function select_role1(){
    $("t1").style.display='block';
    $("log1").style.color="#fff";
    $("log1").style.backgroundColor="#039";
    $("t2").style.display='none';
    $("log2").style.color="#adadad";
    $("log2").style.backgroundColor="#666666";
    $("t3").style.display='none';
    $("log3").style.color="#adadad";
    $("log3").style.backgroundColor="#666666";
    $("hidden1").value='User';
    
}

function select_role2(){
    $("t2").style.display='block';
    $("log2").style.color="#fff";
    $("log2").style.backgroundColor="#039";
    $("t1").style.display='none';
    $("log1").style.color="#adadad";
    $("log1").style.backgroundColor="#666666";
    $("t3").style.display='none';
    $("log3").style.color="#adadad";
    $("log3").style.backgroundColor="#666666";
    $("hidden1").value='User1';
}

function select_role3(){
    $("t3").style.display='block';
    $("log3").style.color="#fff";
    $("log3").style.backgroundColor="#039";
    $("t1").style.display='none';
    $("log1").style.color="#adadad";
    $("log1").style.backgroundColor="#666666";
    $("t2").style.display='none';
    $("log2").style.color="#adadad";
    $("log2").style.backgroundColor="#666666";
    $("hidden1").value='Admin';
}
