<%@ WebHandler Language="C#" Class="AddItemToCart" %>

using System;
using System.Web;
using System.Security;

public class AddItemToCart : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";

        string commandName = "";
        
        try
        {
            commandName = context.Request["commandName"].ToString().Trim();
        }
        catch
        {
            context.Response.Write("error");
            return;
        }

        bool result = true;
        switch (commandName)
        {
            case "add":
                result = Operate(context, true);
                context.Response.Write("add");
                break;
            case "reduce":
                result = Operate(context, false);
                context.Response.Write("reduce");
                break;
            default:
                context.Response.Write("error");
                return;
        }
        if (!result)
        {
            context.Response.Write("error");
        }
        
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

    private bool Operate(HttpContext context,bool isAdd)
    {
        ProfileCommon myProfile = (ProfileCommon)context.Profile;
        myProfile = myProfile.GetProfile(context.Profile.UserName);
        if (context.Request["itemid"] != null)
        {
            try
            {
                int itemId = Int32.Parse(context.Request["itemid"]);
                if (itemId > 0)
                {
                    if (isAdd)
                        myProfile.ShoppingCart.Add(itemId);
                    else
                    {
                        if (myProfile.ShoppingCart.GetQuantity(itemId) == 1)
                        {
                            myProfile.ShoppingCart.Remove(itemId);
                        }
                        else
                        {
                            myProfile.ShoppingCart.Reduce(itemId);
                        }
                    }
                    myProfile.Save();

                }
                return true;
            }
            catch
            {
                return false;
            }
        }
        else
        {
            return false;
        }
    }
    
    
}