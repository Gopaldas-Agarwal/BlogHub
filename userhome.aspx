<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="userhome.aspx.cs" Inherits="BlogHub.userhome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Banner -->
			<section id="banner">
				<div class="content">
					<h1>Welcome 
                        <%=
                        Session["username"]
                        %>
                        !</h1>


                    <ul class="actions">
						<li><a href="addPost.aspx" class="button scrolly">Add New Post</a></li>
					</ul>
					
				</div>
			</section>

		
     <!-- Main -->


            
			        <!--<section id="main" class="wrapper">
				        <div class="inner">
					        
					        <div class="image fit">
						        <img src="images/pic05.jpg" alt="" />
					        </div>

                             <div id="userblogs">

                             </div>
					        
				        </div>
			        </section>-->
   
		 
			<section id="two" class="wrapper style1 special">
				<div class="inner">
					<h2>Bio</h2>
					<figure>
					    <blockquote>
					        "Morbi in sem quis dui placerat ornare. Pellentesque odio nisi, euismod in, pharetra<br /> magna etiam lorem ultricies in diam. Sed arcu cras consequat."
					    </blockquote>
					    <footer>
					        <cite class="author"><%= Session["username"] %></cite>
					        
					    </footer>
					</figure>
				</div>
			</section>
        
		 


    <div class="content">
            <header class="align-center" style="margin-top:80px; color:#25a2c3; ">
						<h1>Your Posts</h1>				
			</header>
        </div>


    

                        <!--

                                DEMO POST STRUCTURE


					    <div class="flex-item box">
						    <div class="image fit">
							    <img src="images/pic02.jpg" alt="" />
						    </div>
						    <div class="content">
							    <h3>Consequat</h3>
							    <p>Placerat ornare. Pellentesque od sed euismod in, pharetra ltricies edarcu cas consequat.</p>
						    </div>
					    </div>

                            -->




			<section id="three" class="wrapper">
                
				    <div class="inner flex flex-3" id="postDiv" runat="server">
                   
				    </div>
                <div id="outerPostDiv" runat="server">
                </div>
			</section>
            

</asp:Content>

