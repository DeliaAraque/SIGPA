<?php
	require "../../script/verifSesion.php";
	require "../../lib/conexion.php";
?>

<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Nuevo usuario</h1>
	</div>
</div>

<div class="row">
	<div class="col-lg-12">
		<form name="usuario" method="POST" action="data/Usuario/guardar.php" data-exe="embem('data/Usuario/index.php', '#page-wrapper')" role="form">
			<div class="form-group">
				<input type="text" name="cedula" placeholder="Cédula" class="form-control" maxlength="8" pattern="[0-9]{7,}" onKeyUp="Verif(this)" required="required" title="Ingrese su cédula" />
				<p class="help-block">Solo están permitidos caracteres numéricos y debe contener al menos 7. Ej: 12345678.</p>
			</div>

			<div class="form-group">
				<input type="text" name="nombre" placeholder="Primer nombre" class="form-control" pattern="^[A-ZÁÉÍÓÚÑ][a-záéíóúñ]*( [A-ZÁÉÍÓÚÑ][a-záéíóúñ]*)*$" required="required" title="Ingrese su nombre" />
				<p class="help-block">Solo están permitidos caracteres alfabéticos y la primera letra debe estar en mayúscula. Ej: Nombre.</p>
			</div>

			<div class="form-group">
				<input type="text" name="segundoNombre" placeholder="Segundo nombre" class="form-control" pattern="^[A-ZÁÉÍÓÚÑ][a-záéíóúñ]*( [A-ZÁÉÍÓÚÑ][a-záéíóúñ]*)*$" title="Ingrese su segundo nombre" />
				<p class="help-block">Opcional, solo están permitidos caracteres alfabéticos y la primera letra debe estar en mayúscula. Ej: Nombre.</p>
			</div>

			<div class="form-group">
				<input type="text" name="apellido" placeholder="Primer apellido" class="form-control" pattern="^[A-ZÁÉÍÓÚÑ][a-záéíóúñ]*( [A-ZÁÉÍÓÚÑ][a-záéíóúñ]*)*$" required="required" title="Ingrese su apellido" />
				<p class="help-block">Solo están permitidos caracteres alfabéticos y la primera letra debe estar en mayúscula. Ej: Apellido.</p>
			</div>

			<div class="form-group">
				<input type="text" name="segundoApellido" placeholder="Segundo apellido" class="form-control" pattern="^[A-ZÁÉÍÓÚÑ][a-záéíóúñ]*( [A-ZÁÉÍÓÚÑ][a-záéíóúñ]*)*$" title="Ingrese su segundo apellido" />
				<p class="help-block">Opcional, solo están permitidos caracteres alfabéticos y la primera letra debe estar en mayúscula. Ej: Apellido.</p>
			</div>

			<div class="form-group">
				<div class="radio-inline">
					<label class="radio-inline"><input type="radio" name="sexo" value="f" checked="checked" required="required"> Femenino </label>
					<label class="radio-inline"><input type="radio" name="sexo" value="m" required="required"> Masculino </label>
				</div>
			</div>

			<div class="form-group">
				<input type="text" name="correo" placeholder="Correo electŕonico" class="form-control" pattern="^[a-z0-9\-_\.]+@[a-z0-9\-_\.]+\.[a-z0-9\-_\.]+(,[a-z0-9\-_\.]+@[a-z0-9\-_\.]+\.[a-z0-9\-_\.]+)*$" required="required" title="Ingrese su correo electrónico" />
				<p class="help-block">Puede ingresar varios correos separados por comas y sin espacios. Ej: inicialnombreapellido@uptm.edu.ve,inicialnombreapellido@gmail.com</p>
			</div>

			<div class="form-group">
				<textarea name="direccion" placeholder="Dirección" rows="2" class="form-control" required="required"></textarea>
				<p class="help-block">Ej: Av. Monseñor Duque, Ejido.</p>
			</div>

			<div class="form-group">
				<input type="text" name="telefono" placeholder="Teléfono móvil" class="form-control" pattern="[0-9]{3,4}\-?[0-9]{7}(,([0-9]{3,4}\-?[0-9]{7}))*" required="required" />
				<p class="help-block">Puede ingresar varios teléfonos separados por comas y sin espacios. Ej: 0000-0000000</p>
			</div>

			<div class="form-group">
				<input type="text" name="telefonoFijo" placeholder="Teléfono Fijo" class="form-control" pattern="[0-9]{3,4}\-?[0-9]{7}(,([0-9]{3,4}\-?[0-9]{7}))*" />
				<p class="help-block">Opcional. Puede ingresar varios teléfonos separados por comas y sin espacios. Ej: 0000-0000000</p>
			</div>

<?php
	if($_SESSION["nivel"]) {
?>

			<div class="form-group">
				<select name="nivel" class="form-control" required="required">
					<option value=""> Nivel </option>
					<option value="1"> Admninistrador </option>
					<option value="2"> Vicerrectorado </option>
				</select>
			</div>

<?php
	}
?>

			<div class="form-group">
				<p class="help-block">Nota: la contraseña y la frase de recuperación de los nuevos usuarios será su cédula.</p>
			</div>

			<div class="form-group text-center">
				<br/>
				<input type="submit" value="Guardar" class="btn btn-lg btn-primary" />
				<input type="button" value="Regresar" class="btn btn-lg" onClick="embem('data/Usuario/index.php', '#page-wrapper')" />
			</div>
		</form>
	</div>
</div>