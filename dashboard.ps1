$Theme = Get-UDTheme -Name 'Default'

$Page1 = New-UDPage -Name "Home" -Icon home -Content  {
	New-UDParagraph -Text {
		Hi and welcome to my webpage built with Universal Dashboard.
		}
		New-UDCard -Title "About Me" -Text "To find out more about me please visit the link bellow." -Links @(New-UDLink -Url http://localhost:5000/About -Text "Read a little more about me")
	 }    
	
$Page2 = New-UDPage -Name "About" -Icon question -Content  {
	New-UDParagraph -Text {
		About page content.
		} 
	 } 
	 
$Page3 = New-UDPage -Name "Links" -Icon link -Content {
	New-UDParagraph -Text {
		Link page content.
		} 
		New-UDLink -Text "https://google.com.au" -Url "https://google.com.au" -OpenInNewWindow
	 } 
	 
$Navigation = New-UDSideNav -Content {
    New-UDSideNavItem -Text "Home" -PageName "Home" -Icon home
    New-UDSideNavItem -Text "About" -PageName "About" -Icon question
	New-UDSideNavItem -Text "Links" -PageName "Links" -Icon link
    New-UDSideNavItem -Text "Google" -Url 'https://www.google.com' -Icon google
	New-UDSideNavItem -Text "Nested Beta" -Children {
	    New-UDSideNavItem -Text "Home" -PageName "Home" -Icon home
		New-UDSideNavItem -Text "About" -PageName "About" -Icon question
	}
}
	
$Dashboard = New-UDDashboard -Theme $Theme -Pages @($Page1,$Page2,$Page3) -Title "Stevens Dashboard" -Navigation $Navigation
Start-UDDashboard -Port 5000 -Wait -Dashboard $Dashboard 
