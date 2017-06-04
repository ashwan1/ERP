/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */



function Elogin()
{
    var loginid=document.getElementById("logintext").value;
    var password=document.getElementById("password").value;

    if(loginid!=="")
        {
            if(password!=="")
                {
                    window.location="myemployeesearch.jsp?loginid="+loginid+"&password="+password;
                }
                else
                    {
                        alert("Password required");
                    }
        }else
            {
                alert("LoginID cannot be blank");
            }



}

function clickBtn(event){
    if(event.keyCode === 13){
        document.getElementById("butt1").click();
        return true;
    }
    return false;
}
