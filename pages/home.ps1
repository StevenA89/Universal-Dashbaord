New-UDPage -Name "Home" -Icon home -Content {
	New-UDParagraph -Text {
		Hi and welcome to my webpage built with Universal Dashboard.
		}
		New-UDCard -Title "About Me" -Text "To find out more about me please visit the link bellow." -Links @(New-UDLink -Url http://localhost:5000/About -Text "Read a little more about me")
	 }    