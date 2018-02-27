<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="BlogHub.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <section id="main" class="wrapper">
    <div class="inner">

            <header class="align-center">
						<h1>Sign Up</h1>
						
			</header>

					<form method="post" action="#" runat="server">
						<div class="row uniform">
							<div class="6u 12u$(xsmall)">
								<asp:TextBox runat="server" ID="name" placeholder="Name"></asp:TextBox>
                                
                                <asp:RequiredFieldValidator ID="rfvname" 
                                   runat="server" ControlToValidate ="name"
                                   ErrorMessage="Name can not be empty" 
                                    SetFocusOnError="true"
                                    ForeColor="red">
                                </asp:RequiredFieldValidator>
                                
                                
                                <asp:RegularExpressionValidator ID="revname" runat="server"    
                                ErrorMessage="Name length must be min 3"
                                ControlToValidate="name"    
                                ValidationExpression="^[a-zA-Z]{3,}$" 
                                    ForeColor="red" SetFocusOnError="true"
                                Display="Dynamic"    
                                />


                                <!--<input type="text" name="name" id="name" value="" placeholder="Name" />-->
							</div>
							<div class="6u$ 12u$(xsmall)">
                                <asp:TextBox  runat="server" ID="email" placeholder="Email"></asp:TextBox>


                                <asp:RequiredFieldValidator ID="rfvemail" 
                                   runat="server" ControlToValidate ="email"
                                   ErrorMessage="email can not be empty" 
                                    ForeColor="red" SetFocusOnError="true"
                                   Display="Dynamic"  >
                                </asp:RequiredFieldValidator>

                                <asp:RegularExpressionValidator ID="revemail" runat="server" 
                                    ControlToValidate="email" ErrorMessage="Enter valid email" 
                                    ValidationExpression="^\w+([\._]?\w+)*@[0-9a-zA-Z]+(\.\w{2,3})+$"
                                    ForeColor="red" SetFocusOnError="true"
                                    Display="Dynamic"  >
                                </asp:RegularExpressionValidator>



								<!--<input type="email" name="email" id="email" value="" placeholder="Email" />-->
							</div>
							<!-- Break -->

                            <div class="6u 12u$(xsmall)">
                                <asp:TextBox runat="server" ID="password" placeholder="Password" TextMode ="Password"></asp:TextBox>


                                <asp:RequiredFieldValidator ID="rfvpassword" 
                                   runat="server" ControlToValidate ="password"
                                   ErrorMessage="password can not be empty" 
                                    ForeColor="red" SetFocusOnError="true"
                                   Display="Dynamic"  >
                                </asp:RequiredFieldValidator>

                                <asp:RegularExpressionValidator ID="revpassword" runat="server" 
                                    ControlToValidate="password" ErrorMessage="Min password length 6" 
                                    ForeColor="red" SetFocusOnError="true"
                                    ValidationExpression="^[\s\S]{6,}$"
                                    Display="Dynamic"  >
                                </asp:RegularExpressionValidator>

								<!--<input type="password" name="password" id="password" value="" placeholder="Password" />-->
							</div>
							<div class="6u$ 12u$(xsmall)">
                                <asp:TextBox runat="server" ID="re_password" placeholder="Re-type Password" TextMode ="Password"></asp:TextBox>



                                <asp:CompareValidator id="comparePasswords" 
                                  runat="server"
                                  ControlToCompare="password"
                                  ControlToValidate="re_password"
                                  ErrorMessage="Your passwords do not match!"
                                    ForeColor="red" SetFocusOnError="true"
                                  Display="Dynamic"  />

								<!--<input type="password" name="re-password" id="re-password" value="" placeholder="Re-Type Password" />-->
							</div>
							<!-- Break -->
										
							<div class="6u$ 12u$(small)">
                                <asp:CheckBox runat="server" ID="CheckBox1" name="human" Text="I am a human and not a robot" For="human"/>
								<!--<input type="checkbox" id="human" name="human" checked>-->
								<!--<label for="human">I am a human and not a robot</label>-->
							</div>
											
							<!-- Break -->
							<div class="12u$">
								<ul class="actions">
									<li><asp:Button Text="Sign Up" runat="server" OnClick="register"/></li>
									<!--<li><asp:Button Text="Reset" CssClass="alt" runat="server" /></li>-->
								</ul>
							</div>
						</div>



                         <asp:ValidationSummary 
                            ID="vssignup" 
                            runat="server" 
                            HeaderText="Following error occured....." 
                            ShowMessageBox="true" 
                            DisplayMode="BulletList" 
                            ShowSummary="false"
                            />

					</form>

					<hr />

									
					<div class="row uniform" style="margin-left:180px;">
											
                        <h3 id="content">Already Signed Up ? Login Here </h3>
						<div class="3u$ 12u$(small)">
							<a href="login.aspx" class="button">Login</a>
						</div>
					</div>

                    <br />
									


        </div>
    </section>


</asp:Content>
