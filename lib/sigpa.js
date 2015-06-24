/* Uso de AJAx
	$.ajax(
	{
		url: "ruta",
		data: "parametro=valor",
		type: "POST",
		success: function(respuesta)
		{
			alert(respuesta);
		},
		error: function ()
		{
			alert("Error");
		}
	});
*/

/* Uso de AJAX con FormData
	var fd = new FormData;

	$.ajax(
	{
		processData: false,
		contentType: false,
		url: "ruta",
		data: fd,
		type: "POST",
		success: function(respuesta)
		{
			alert(respuesta);
		},
		error: function ()
		{
			alert("Error");
		}
	});
*/

function Verif(input, table, reverse)
{
	if(input.value == "")
	{
		$(input.parentNode).removeClass("has-error");
		$("input:focus ~ p.help-block").html($("input:focus ~ p.help-block").data("predeterminado"));
		return false;
	}

	if(table === true)
	{
		table = false;
		reverse = true;
	}

	table = table || getForm(input).name;
	var column = input.name;
	var value = input.value;
	var param = "value=" + value + "&table=" + table + "&column=" + column;

	$.ajax(
	{
		url: "script/verif.php",
		data: param,
		type: "POST",
		success: function(rt)
		{
			if(!reverse)
			{
				if(rt != 0)
				{
					$(input.parentNode).addClass("has-error");
					$("input:focus ~ p.help-block").html("El valor indicado ya existe");
				}

				else
				{
					$(input.parentNode).removeClass("has-error");
					$("input:focus ~ p.help-block").html($("input:focus ~ p.help-block").data("predeterminado"));
				}
			}

			else
			{
				if(rt != 0)
				{
					$(input.parentNode).removeClass("has-error");
					$("input:focus ~ p.help-block").html($("input:focus ~ p.help-block").data("predeterminado"));
				}

				else
				{
					$(input.parentNode).addClass("has-error");
					$("input:focus ~ p.help-block").html("El valor indicado no existe");
				}
			}
		},
		error: function ()
		{
			alert("Ocurrio un error durante la conexión al servidor");
		}
	});
}

function getForm(obj)
{
	var form = obj;

	while(form != "[object HTMLFormElement]")
	{
		form = form.parentNode;

		if(form == "[object HTMLDocument]")
			return false;
	}

	return form;
}

function embem(ruta, obj)
{
	var nocache = "?nocache=" + new Date().getTime();

	$.ajax(
	{
		url: ruta + nocache,
		success: function(rt)
		{
			$(obj).html(rt);
		},
		error: function ()
		{
			alert("Ocurrio un error durante la conexión al servidor");
		}
	});
}

function tablas()
{
	$('.dataTable').dataTable({
		"responsive": true,
		"aLengthMenu": [[15, 30, -1], [15, 30, "Todos"]],
		"language": 
		{
			"sProcessing":     "Procesando...",
			"sLengthMenu":     "_MENU_ elementos por página",
			"sZeroRecords":    "No hay elementos",
			"sEmptyTable":     "No hay elementos",
			"sInfo":           "Total: _MAX_ elementos (_START_-_END_)",
			"sInfoEmpty":      "No hay elementos",
			"sInfoFiltered":   "(se encontraron _TOTAL_ coincidencias)",
			"sInfoPostFix":    "",
			"sSearch":         "Buscar:",
			"sUrl":            "",
			"sInfoThousands":  ",",
			"sLoadingRecords": "Cargando...",
			"oPaginate": {
				"sFirst":    "<i class=\"fa fa-angle-double-left fa-fw\" title=\"Primera página\"></i>",
				"sLast":     "<i class=\"fa fa-angle-double-right fa-fw\" title=\"Última página\"></i>",
				"sPrevious": "<i class=\"fa fa-angle-left fa-fw\" title=\"Anterior\"></i>",
				"sNext":     "<i class=\"fa fa-angle-right fa-fw\" title=\"Siguiente\"></i>"
			},
			"oAria": {
				"sSortAscending":  ": Activar para ordenar la columna de manera ascendente",
				"sSortDescending": ": Activar para ordenar la columna de manera descendente"
			}
		}
	});
}