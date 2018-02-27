<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="BlogHub.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <section id="main" class="wrapper">
    <div class="inner">

            <header class="align-center">
						<h1>Login</h1>				
			</header>

									<form method="post" action="#" runat="server">
                                        
										<div class="row uniform" style="margin-left:380px;">
                                            
                                            
											    <div class="6u$">
                                                    <asp:TextBox runat="server" ID="email" placeholder="email"></asp:TextBox>

                                                    <asp:RequiredFieldValidator ID="rfvemail" 
                                                       runat="server" ControlToValidate ="email"
                                                       ErrorMessage="email can not be empty" 
                                                       Display="Dynamic"  >
                                                    </asp:RequiredFieldValidator>

                                                    <asp:RegularExpressionValidator ID="revemail" runat="server" 
                                                        ControlToValidate="email" ErrorMessage="Enter valid email" 
                                                        ValidationExpression="^\w+([\._]?\w+)*@[0-9a-zA-Z]+(\.\w{2,3})+$"
                                                        Display="Dynamic"  >
                                                    </asp:RegularExpressionValidator>

												    <!--<input type="text" name="name" id="name" value="" placeholder="Name" />-->
											    </div>
                                            
											    <div class="6u$">
                                                    <asp:TextBox runat="server" ID="password" placeholder="Password" TextMode ="Password"></asp:TextBox>

                                                    <asp:RequiredFieldValidator ID="rfvpassword" 
                                                       runat="server" ControlToValidate ="password"
                                                       ErrorMessage="password can not be empty" 
                                                       Display="Dynamic"  >
                                                    </asp:RequiredFieldValidator>

                                                    <asp:RegularExpressionValidator ID="revpassword" runat="server" 
                                                        ControlToValidate="password" ErrorMessage="Min password length 6" 
                                                        ValidationExpression="^[\s\S]{6,}$"
                                                        Display="Dynamic"  >

                                                    </asp:RegularExpressionValidator>


												    <!--<input type="password" name="password" id="password" value="" placeholder="Password" />-->
											    </div>
											    <!-- Break -->

											    <div class="6u$ 12u$(xsmall)">
                                                    <!--<asp:CheckBox runat="server" ID="human" name="human" Text="I am a human and not a robot" For="human"/>-->
												    <!--<input type="checkbox" id="human" name="human" checked>-->
												   <!-- <label for="human">I am a human and not a robot</label>-->
											    </div>
											
											    <!-- Break -->
											    <div class="12u$">
												    <ul class="actions">
                                                        <asp:Label runat="server" ID="result" ></asp:Label>

													    <li><asp:Button Text="Login" runat="server" OnClick="login"/></li>
													    <!--<li><asp:Button Text="Reset" runat="server" CssClass="alt"/></li>-->
												    </ul>
											    </div>
										    
                                        
                                        </div>
                                        
									</form>

									<hr />

									
									<div class="row uniform" style="margin-left:180px;">
											
                                        <h3 id="content">New Here ? Get Started by Signing Up !</h3>
										<div class="3u$ 12u$(small)">
											<a href="signup.aspx" class="button">Sign Up</a>
										</div>
									</div>

                                    <br />
									


        </div>
    </section>



</asp:Content>
