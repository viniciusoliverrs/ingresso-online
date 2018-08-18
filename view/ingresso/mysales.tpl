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
			    border-collapse: collapse;
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
<div style="margin-top:10px;">
		<a href="javascript:demoFromHTML()" class="button">Emitir</a>
		<div id="content">
				<table>
					<thead>
						<tr>						
							<th>Titulo do evento</th>
							<th>Tipo de ingresso</th>
							<th>Quantidade</th>
							<th>Valor total</th>
							<th>Data da compra</th>
						</tr>
					</thead>
					<tbody>
						%for item in dado:
						<tr>
							%for row in item:						
							<td>{{ row }}</td>
							%end
						</tr>
						%end
					</tbody>
				</table>
		</div>
</body>
</html>