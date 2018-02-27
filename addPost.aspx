<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="addPost.aspx.cs" Inherits="BlogHub.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">





    <section id="main" class="wrapper">
    <div class="inner">

            <header class="align-center">
						<h1>Add New Post</h1>
						
			</header>

					<form method="post" action="#" runat="server">
						
                    
                        <div class="row uniform">
											<div class="6u 12u$(xsmall)">
												<asp:TextBox type="text" name="title" runat="server" id="postTitle" value="" placeholder="Title" />
                                                <asp:RequiredFieldValidator ID="rfvname" 
                                                   runat="server" ControlToValidate ="postTitle"
                                                   ErrorMessage="Title can not be empty" 
                                                    SetFocusOnError="true"
                                                    ForeColor="red">
                                                </asp:RequiredFieldValidator>
											</div>
											<div class="6u$ 12u$(xsmall)">
												<input type="file" name="img" id="img" value="" placeholder="Upload Image" />
											   

                                            </div>
											<!-- Break -->
											
											
											

											<!-- Break -->
											<div class="12u$">
                                                
												<asp:TextBox TextMode="multiline"
                                                     name="postData" runat="server"
                                                    id="postData" placeholder="Write Ur Post" 
                                                    rows="15" columns="50"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                                                   runat="server" ControlToValidate ="postData"
                                                   ErrorMessage="Post can not be empty" 
                                                    SetFocusOnError="true"
                                                    ForeColor="red">
                                                </asp:RequiredFieldValidator>

                                                <asp:Label id="lblpostLength" Text="0" runat="server"/>
											</div>


											<!-- Break -->
											<div class="12u$">
												<ul class="actions">
													<li><input type="submit" runat="server" value="SUBMIT" onserverclick="savePost"/></li>
                                                    <asp:Label runat="server" ID="lblresult" />
													
												</ul>
											</div>
										</div>
                    

					</form>

					
        </div>
    </section>









</asp:Content>
