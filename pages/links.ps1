New-UDPage -Name "Links" -Icon link -Content {
	New-UDParagraph -Text {
		Link page content.
		} 
		New-UDLink -Text "https://google.com.au" -Url "https://google.com.au" -OpenInNewWindow
	 } 