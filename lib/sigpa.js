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
					$(input.parentNode).addClass("has-error");

				else
					$(input.parentNode).removeClass("has-error");
			}

			else
			{
				if(rt == 0)
					$(input.parentNode).addClass("has-error");

				else
					$(input.parentNode).removeClass("has-error");
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

function embed(ruta)
{
	$.ajax(
	{
		url: ruta,
		success: function(rt)
		{
			$("#page-wrapper").html(rt);
		},
		error: function ()
		{
			alert("Ocurrio un error durante la conexión al servidor");
		}
	});
}