<%@ control language="C#" autoeventwireup="true" inherits="Controls_IndexPageAdvertisementDisplay, App_Web_ubffupp5" %>

<div class="ShopAdvertisementsDiv">
    <a class="ShopTypeTitle" href="<%= TitleUrl %>"><%= Title %></a>
    <div class="AdvertisementPicsDiv">
        <div style="width:70px;height:405px;overflow:hidden;background-image:<%= SideBarColor %>;margin-right:7px; "></div>
        <div style="width:920px;height:405px;">
            <div class="left" style="width:392px;height:405px;margin-right:7px;">
                <div style="width:395px;height:218px;margin-bottom:7px;">
                        <a target="_blank" href="<% try { Response.Write(shopFlagName[shopType] + ".aspx?id=" + Advertisments[0].ShopId); }
                        catch { Response.Write("#"); } %>"><asp:Image runat="server" ID="Image1" Width="392" Height="218"/></a> 
                </div>
                <div style="width:395px;height:181px;">
                        <a target="_blank" href="<% try { Response.Write(shopFlagName[shopType] + ".aspx?id=" + Advertisments[1].ShopId); }
                        catch { Response.Write("#"); } %>"><asp:Image runat="server" ID="Image2" Width="392" Height="180"/></a> 
                </div>
            </div>
            <div class="right" style="width:520px;height:405px">
                <div class="righttop" style="width:520px;height:133px;margin-bottom:7px;">
                    <div style="width:320px;height:133px;margin-right:7px;">
                            <a target="_blank" href="<% try { Response.Write(shopFlagName[shopType] + ".aspx?id=" + Advertisments[2].ShopId); }
                        catch { Response.Write("#"); } %>"><asp:Image runat="server" ID="Image3" Width="320" Height="133" /></a>
                    </div>
                    <div style="width:193px;height:133px;">
                            <a target="_blank" href="<% try { Response.Write(shopFlagName[shopType] + ".aspx?id=" + Advertisments[3].ShopId); }
                        catch { Response.Write("#"); } %>"><asp:Image runat="server" ID="Image4" Width="193" Height="133" /></a>
                    </div>
                </div>
                <div class="rightbottom" style="width:520px;height:266px;">
                    <div style="width:117px;height:266px;margin-right:7px;">
                            <a target="_blank" href="<% try { Response.Write(shopFlagName[shopType] + ".aspx?id=" + Advertisments[4].ShopId); }
                        catch { Response.Write("#"); } %>"><asp:Image runat="server" ID="Image5" Width="117" Height="265" /></a>
                    </div>
                    <div style="width:396px;height:266px;">
                            <a target="_blank" href="<% try { Response.Write(shopFlagName[shopType] + ".aspx?id=" + Advertisments[5].ShopId); }
                        catch { Response.Write("#"); } %>"><asp:Image runat="server" ID="Image6" Width="396" Height="265" /></a>
                    </div>
                </div>
            </div>
        </div>

        <%--<div class="left" style="width:600px;height:400px;">
            <a href="<% try { Response.Write(shopFlagName[shopType] + ".aspx?id=" + Advertisments[0].ShopId); }
                        catch { Response.Write("#"); } %>"><asp:Image runat="server" ID="Image1" style="width:594px;height:400px;" /></a> 
        </div>
        <div class="right" style="width:400px;height:400px;">
            <div class="top">
                <div style="width:200px;height:133px;">
                    <a href="<% try { Response.Write(shopFlagName[shopType] + ".aspx?id=" + Advertisments[2].ShopId); }
                                catch { Response.Write("#"); } %>"><asp:Image runat="server" ID="Image3" style="width:197px;height:130px;" /></a>
                </div>
                <div style="width:200px;height:133px;text-align:right;">
                    <a href="<% try { Response.Write(shopFlagName[shopType] + ".aspx?id=" + Advertisments[3].ShopId); }
                                catch { Response.Write("#"); } %>"><asp:Image runat="server" ID="Image4" style="width:197px;height:130px;"  /></a>
                </div>
            </div>
            <div class="bottom" style="width:400px;height:266px;">
                <a href="<% try { Response.Write(shopFlagName[shopType] + ".aspx?id=" + Advertisments[1].ShopId); }
                            catch { Response.Write("#"); } %>"><asp:Image ID="Image2" runat="server" style="width:400px;height:266px;" /></a>
            </div>
        </div>--%>
     </div>
</div>