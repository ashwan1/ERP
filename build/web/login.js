/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

function login()
{
    var loginid=document.getElementById("logintext").value;
    var password=document.getElementById("password").value;
    if(loginid=="pandey")
        {
            if(password=="pandey")
                {
                    window.location="myadmin/myadminwelcome.jsp";
                }
                else
                    {
                        alert("Wrong login details");
                    }
        }
        else
            {
                alert("wrong login details");
            }
}
