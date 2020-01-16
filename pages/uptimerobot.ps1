New-UDPage -Name "Uptime Robot" -Icon clock -Content {
	New-UdHtml -Markup "<iframe
                    src='https://uptimerobot.com' 
                        style=
                            'background-color:white;
                            border:none;
                            width: 100%;
                            min-height: 800px;'>
                    </iframe>"
	 } 