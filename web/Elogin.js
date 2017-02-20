/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */



function Elogin()
{
    var loginid=document.getElementById("logintext").value;
    var password=document.getElementById("password").value;

    if(loginid!="")
        {
            if(password!="")
                {
                    window.location="myemployeesearch.jsp?loginid="+loginid+"&password="+password;
                }
                else
                    {
                        alert("wrong login details");
                    }
        }else
            {
                alert("wrong login details");
            }



}
