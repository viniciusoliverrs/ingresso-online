<!DOCTYPE html>
<html>
<head>
	<script type="text/javascript" src="/static/js/jspdf.min.js"></script>
	<script src="/static/js/jquery.min.js"></script>
	<title></title>
	<style type="text/css">
			* {
				margin: 0px;
			}
			table {
				width: 50%;
				margin: 0 auto;
			    border: none;
			}
			table caption {
				font-size: 14px;
			}
			table, caption, td, th {
			    border: 1px solid black;
			    font-size: 10px;
			   	text-align: center;
			}
			table td {
				width: auto;
			
				vertical-align: bottom;
			}
	</style>
	 <script>
    function demoFromHTML() {
        let pdf = new jsPDF('p', 'pt', 'letter');
        // source can be HTML-formatted string, or a reference
        // to an actual DOM element from which the text will be scraped.
        source = $('#content')[0];

        // we support special element handlers. Register them with jQuery-style 
        // ID selector for either ID or node name. ("#iAmID", "div", "span" etc.)
        // There is no support for any other type of selectors 
        // (class, of compound) at this time.
        specialElementHandlers = {
            // element with id of "bypass" - jQuery style selector
            '#bypassme': function (element, renderer) {
                // true = "handled elsewhere, bypass text extraction"
                return true
            }
        };
        margins = {
            top: 80,
            bottom: 60,
            left: 40,
            width: 522
        };
        // all coords and widths are in jsPDF instance's declared units
        // 'inches' in this case
        pdf.fromHTML(
            source, // HTML string or DOM elem ref.
            margins.left, // x coord
            margins.top, { // y coord
                'width': margins.width, // max width of content on PDF
                'elementHandlers': specialElementHandlers
            },

            function (dispose) {
                // dispose: object with X, Y of the last line add to the PDF 
                //          this allow the insertion of new lines after html
                pdf.save('myshopping.pdf');
            }, margins
        );
    }
</script>
	
</head>
<body>
<div>
		<a href="javascript:demoFromHTML()" class="button">Emitir</a>
		<div id="content">
				%for item in dado:
					%for quant in range(0,item[2]):
						<table>
							<thead>
								<tr>						
									<th>Titulo</th>
									<th>Tipo</th>
									<th>Data da compra</th>
								</tr>
							</thead>
							<tbody>
								<tr>					
									<td>{{ item[0] }}</td>
									<td>{{ item[1] }}</td>
									<td>{{ item[4] }}</td>
								</tr>
							</tbody>
						</table>
					%end
				%end
		</div>
</body>
</html>