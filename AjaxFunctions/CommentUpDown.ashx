<%@ WebHandler Language="C#" Class="CommentUpDown" %>

using System;
using System.Web;
using TuanStu.BLL;

public class CommentUpDown : IHttpHandler
{
    private Comment comment = new Comment();
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        string result = "succeed";
        string command = context.Request["command"].ToString().Trim();
        int commentId = -1;
        try
        {
            commentId = Int32.Parse(context.Request["id"].ToString().Trim());
        }
        catch
        {
            result = "亲，别干坏事";
        }
        switch (command)
        {
            case "up":
                comment.UpComment(commentId);
                break;
            case "down":
                comment.DownComment(commentId);
                break;
            default:
                result = "出错啦";
                break;
        }
        context.Response.Write(result);
    }

    public bool IsReusable {
        get {
            return false;
        }
    }
    
}