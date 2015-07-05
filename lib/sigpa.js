function Verif(input, table, reverse) {
	loading(true);

	var state = $(input.parentNode);
	var helpText = $("input:focus ~ p.help-block");
	helpText.attr("data-predeterminado", helpText.html());
	var submitBtn = $(getForm(input).querySelector("input[type='submit']"));

	if(input.value == "") {
		state.removeClass("has-error");
		helpText.html(helpText.data("predeterminado"));
		submitBtn.removeAttr("disabled");

		loading(false);
		return false;
	}

	if(table === true) {
		table = false;
		reverse = true;
	}

	table = table || getForm(input).name;
	var column = input.name;
	var value = input.value;
	var param = "value=" + value + "&table=" + table + "&column=" + column;

	$.ajax( {
		url: "script/verif.php",
		data: param,
		type: "POST",
		success: function (rt) {
			if(!reverse) {
				if(rt != 0) {
					state.addClass("has-error");
					helpText.html("El valor indicado ya existe");
					submitBtn.attr("disabled", "disabled");
				}

				else {
					state.removeClass("has-error");
					helpText.html(helpText.data("predeterminado"));
					submitBtn.removeAttr("disabled");
				}
			}

			else {
				if(rt != 0) {
					state.removeClass("has-error");
					helpText.html(helpText.data("predeterminado"));
					submitBtn.removeAttr("disabled");
				}

				else {
					state.addClass("has-error");
					helpText.html("El valor indicado no existe");
					submitBtn.attr("disabled", "disabled");
				}
			}

			loading(false);
		},
		error: function (r) {
			popUp("Ocurrio un error durante la conexión al servidor. Error: " + r.status, "error");
			loading(false);
		}
	});
}

function getForm(obj) {
	var form = obj;

	while(form != "[object HTMLFormElement]") {
		form = form.parentNode;

		if(form == "[object HTMLDocument]")
			return false;
	}

	return form;
}

function embem(url, obj, params) {
	loading(true);

	var nocache = "?nocache=" + new Date().getTime();

	if(typeof params != "string")
		params = new FormData(params);

	$.ajax( {
		processData: false,
		contentType: false,
		url: url + nocache,
		data: params,
		type: "POST",
		success: function (rt) {
			$(obj).html(rt);
			tablas();
			formularios();
			loading(false);
		},
		error: function (r) {
			popUp("Ocurrio un error durante la conexión al servidor. Error: " + r.status, "error");
			loading(false);
		}
	});
}

function tablas() {
	$(".dataTable").dataTable( {
		"responsive": true,
		"aLengthMenu": [[15, 30, -1], [15, 30, "Todos"]],
		"language":  {
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

function formularios() {
	var input = $("input");

	for(var i = 0; i < input.length; ++i)
	{
		var type = $(input[i]).attr("data-type");
		var msg = $(input[i]).attr("data-msg");

		if(type)
			$(input[i]).attr("onKeyPress", $(input[i]).attr("onKeyPress") + "; return Val(event, '" + type + "', '" + msg + "')");
	}

	var form = $("form");

	for(var i = 0; i < form.length; ++i) {
		var role = $(form[i]).attr("role");

		if(role == "form")
			$(form[i]).attr("onSubmit", "return sendForm(this)");

		else if(role == "search") {
			var url = $(form[i]).attr("action");
			var obj = $(form[i]).attr("data-obj") || "#page-wrapper";

			var fn =  "embem('" + url + "', '" + obj + "', this);";

			$(form[i]).attr("onSubmit", fn + " return false");
		}

		$(form[i]).attr("autocomplete", "off");
	}
}

function sendForm(form) {
	loading(true);

	$.ajax( {
		processData: false,
		contentType: false,
		url: form.action,
		data: new FormData(form),
		type: form.method,
		success: function (rt) {
			var response = rt.split("&&");

			popUp(response[0], response[1]);
			loading(false);

			if(response[1] == "success")
				if(form.dataset.exe)
					eval(form.dataset.exe);
		},
		error: function (r) {
			popUp("Ocurrio un error durante la conexión al servidor. Error: " + r.status, "error");
			loading(false);
		}
	});

	return false;
}

function loading(mode) {
	if(mode)
		$("#loading").css("display", "block");

	else
		$("#loading").css("display", "none");
}

function popUp(msg, mode) {
	if(!mode)
		mode = "warning";

	var msgBox = $("#popUp > div:first-child");
	var icons = $("#popUp > span:last-child");
	var icon = $("#popUp > span i:last-child");

	msgBox.html(msg);
	icon.removeClass();

	switch(mode) {
		case "warning":
			msgBox.css("background", "yellow");
			msgBox.css("color", "black");
			icons.css("color", "yellow");
			icons.attr("title", "Alerta");
			icon.addClass("fa fa-exclamation fa-fw fa-stack-1x");
		break;

		case "success":
			msgBox.css("background", "green");
			msgBox.css("color", "white");
			icons.css("color", "green");
			icons.attr("title", "Bien");
			icon.addClass("fa fa-check fa-fw fa-stack-1x");
		break;

		case "info":
			msgBox.css("background", "blue");
			msgBox.css("color", "white");
			icons.css("color", "blue");
			icons.attr("title", "Información");
			icon.addClass("fa fa-info fa-fw fa-stack-1x");
		break;

		case "error":
			msgBox.css("background", "red");
			msgBox.css("color", "white");
			icons.css("color", "red");
			icons.attr("title", "Error");
			icon.addClass("fa fa-times fa-fw fa-stack-1x");
		break;
	}

	$("#popUp").css("animation", "popUp 5s forwards");
	$("#popUp").css("-webkit-animation", "popUp 5s forwards");

	setTimeout(function () {
		$("#popUp").css("animation", "");
		$("#popUp").css("-webkit-animation", "");
		$("#popUp > div:first-child").html("");
	}, 5000);
}

function popUpClose() {
	$("#popUp").css("animation", "popUpClose 0.5s forwards");
	$("#popUp").css("-webkit-animation", "popUpClose 0.5s forwards");
}

function diff(input, otherInput) {
	if(input.value != otherInput.value)
		$(input.parentNode).addClass("has-error");

	else
		$(input.parentNode).removeClass("has-error");
}

function sendReq(url, params, exe) {
	loading(true);

	$.ajax( {
		url: url,
		data: params,
		type: "POST",
		success: function (rt) {
			var response = rt.split("&&");

			popUp(response[0], response[1]);

			if(response[1] == "success")
				if(exe)
					eval(exe);

			loading(false);
		},
		error: function (r) {
			popUp("Ocurrio un error durante la conexión al servidor. Error: " + r.status, "error");
			loading(false);
		}
	});
}

function Val(event, type, msg) {
	if(msg == "undefined")
		msg = null;

	switch(type) {
		case 'alf':
			type = /[a-zA-Z0-9]/;

			if(!msg)
				msg = "Carácter inválido, solo se aceptan letras y números";
		break;

		case 'num':
			type = /[0-9]/;

			if(!msg)
				msg = "Carácter inválido, solo se aceptan números";
		break;

		case 'text':
			type = /[a-zA-Z\sñÑáÁéÉíÍóÓúÚ]/;

			if(!msg)
				msg = "Carácter inválido, solo se aceptan letras y espacios";
		break;

		default:
			if(!msg)
				msg = "Carácter inválido";
		break;
	}

	var car = String.fromCharCode(event.keyCode);

	if(!type.test(car)) {
		popUp(msg);
		return false;
	}
}