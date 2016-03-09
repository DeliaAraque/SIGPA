<?php
	require "../../script/verifSesion.php";
	require "../../lib/conexion.php";

	$cedula = $_SESSION["cedula"];

	$sql = "
		select p.cedula as cedula, p.nombre as nombre, p.\"segundoNombre\" as \"segundoNombre\", p.apellido as apellido, p.\"segundoApellido\" as \"segundoApellido\", p.sexo as sexo, p.correo as correo, p.direccion as direccion, p.telefono as telefono, p.\"telefonoFijo\" as \"telefonoFijo\" 
		from persona as p 
			join usuario as usu on usu.cedula = p.cedula 
		where p.cedula = '$cedula'
	";
	$exe = pg_query($sigpa, $sql);
	$usuario = pg_fetch_object($exe);

	if($_SESSION["nivel"] > 2) {
?>

<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Datos personales</h1>
	</div>
</div>

<?php
	}
?>

<form name="persona" method="POST" action="data/Configuracion/guardarPersona.php" role="form">
	<div class="row">
		<div class="col-lg-12">
			<br/>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">Datos personales</h3>
				</div>

				<div class="panel-body">
					<div class="form-group">
						Cédula:
						<input type="text" name="cedula" placeholder="Cédula" value="<?= $usuario->cedula; ?>" class="form-control" maxlength="8" pattern="[0-9]{7,}" onKeyUp="if(this.value != document.persona.cedulaAnt.value) Verif(this)" required="required" title="Ingrese su cédula" />
						<input type="hidden" name="cedulaAnt" value="<?= $usuario->cedula; ?>" />
						<p class="help-block">Solo están permitidos caracteres numéricos y debe contener al menos 7. Ej: 12345678.</p>
					</div>

					<div class="form-group">
						Nombre:
						<input type="text" name="nombre" placeholder="Primer nombre" value="<?= $usuario->nombre; ?>" class="form-control" pattern="^[A-ZÁÉÍÓÚÑ][a-záéíóúñ]*( [A-ZÁÉÍÓÚÑ][a-záéíóúñ]*)*$" required="required" title="Ingrese su nombre" />
						<p class="help-block">Solo están permitidos caracteres alfabéticos y la primera letra debe estar en mayúscula. Ej: Nombre.</p>
					</div>

					<div class="form-group">
						Segundo nombre:
						<input type="text" name="segundoNombre" placeholder="Segundo nombre" value="<?= $usuario->segundoNombre; ?>" class="form-control" pattern="^[A-ZÁÉÍÓÚÑ][a-záéíóúñ]*( [A-ZÁÉÍÓÚÑ][a-záéíóúñ]*)*$" title="Ingrese su segundo nombre" />
						<p class="help-block">Opcional, solo están permitidos caracteres alfabéticos y la primera letra debe estar en mayúscula. Ej: Nombre.</p>
					</div>

					<div class="form-group">
						Apellido:
						<input type="text" name="apellido" placeholder="Primer apellido" value="<?= $usuario->apellido; ?>" class="form-control" pattern="^[A-ZÁÉÍÓÚÑ][a-záéíóúñ]*( [A-ZÁÉÍÓÚÑ][a-záéíóúñ]*)*$" required="required" title="Ingrese su apellido" />
						<p class="help-block">Solo están permitidos caracteres alfabéticos y la primera letra debe estar en mayúscula. Ej: Apellido.</p>
					</div>

					<div class="form-group">
						Segundo apellido:
						<input type="text" name="segundoApellido" placeholder="Segundo apellido" value="<?= $usuario->segundoApellido; ?>" class="form-control" pattern="^[A-ZÁÉÍÓÚÑ][a-záéíóúñ]*( [A-ZÁÉÍÓÚÑ][a-záéíóúñ]*)*$" title="Ingrese su segundo apellido" />
						<p class="help-block">Opcional, solo están permitidos caracteres alfabéticos y la primera letra debe estar en mayúscula. Ej: Apellido.</p>
					</div>

					<div class="form-group"> 
						Sexo:
						<div class="radio-inline">
							<label class="radio-inline"><input type="radio" name="sexo" value="f" <?php if($usuario->sexo == "f") echo "checked=\"checked\""; ?> required="required"> Femenino </label>
							<label class="radio-inline"><input type="radio" name="sexo" value="m" <?php if($usuario->sexo == "m") echo "checked=\"checked\""; ?> required="required"> Masculino </label>
						</div>
					</div>

					<div class="form-group">
						Correo:
						<input type="text" name="correo" placeholder="Correo electŕonico" value="<?= $usuario->correo; ?>" class="form-control" pattern="^[a-z0-9\-_\.]+@[a-z0-9\-_\.]+\.[a-z0-9\-_\.]+(,[a-z0-9\-_\.]+@[a-z0-9\-_\.]+\.[a-z0-9\-_\.]+)*$" required="required" title="Ingrese su correo electrónico" />
						<p class="help-block">Puede ingresar varios correos separados por comas y sin espacios. Ej: inicialnombreapellido@uptm.edu.ve,inicialnombreapellido@gmail.com</p>
					</div>

					<div class="form-group">
						Dirección:
						<textarea name="direccion" placeholder="Dirección" rows="2" class="form-control" required="required"><?= $usuario->direccion; ?></textarea>
						<p class="help-block">Ej: Av. Monseñor Duque, Ejido.</p>
					</div>

					<div class="form-group">
						Teléfono móvil:
						<input type="text" name="telefono" placeholder="Teléfono móvil" value="<?= $usuario->telefono; ?>" class="form-control" pattern="[0-9]{3,4}\-?[0-9]{7}(,([0-9]{3,4}\-?[0-9]{7}))*" required="required" />
						<p class="help-block">Puede ingresar varios teléfonos separados por comas y sin espacios. Ej: 0000-0000000</p>
					</div>

					<div class="form-group">
						Teléfono fijo:
						<input type="text" name="telefonoFijo" placeholder="Teléfono Fijo" value="<?= $usuario->telefonoFijo; ?>" class="form-control" pattern="[0-9]{3,4}\-?[0-9]{7}(,([0-9]{3,4}\-?[0-9]{7}))*" />
						<p class="help-block">Opcional. Puede ingresar varios teléfonos separados por comas y sin espacios. Ej: 0000-0000000</p>
					</div>

					<div class="form-group text-center">
						<br/>
						<input type="submit" value="Guardar" class="btn btn-lg btn-primary" />
					</div>
				</div>
			</div>
		</div>
	</div>
</form>

<br/><br/>

<form name="usuario" method="POST" action="data/Configuracion/guardarUsuario.php" data-exe="$('input[type=password]').val('')" role="form">
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">Cambiar contraseña:</h3>
				</div>

				<div class="panel-body">
					<div class="form-group">
						<input type="password" name="contrasena" placeholder="Contraseña" class="form-control" pattern=".{4,}" />
						<p class="help-block">Ingrese su contraseña actual.</p>
						<br/>
					</div>

					<div class="form-group">
						<input type="password" name="nuevaContrasena" placeholder="Nueva contraseña" class="form-control" pattern=".{4,}" onKeyUp="diff(document.usuario.recontrasena, this)" title="Ingrese una nueva contraseña" />
						<p class="help-block">Una contraseña debe contener al menos 4 caracteres, le recomendamos que no use contraseñas comunes como "1234" o "abcd".</p>
					</div>

					<div class="form-group">
						<input type="password" name="recontrasena" placeholder="Repita la contraseña" class="form-control" pattern=".{4,}" onKeyUp="diff(this, document.usuario.nuevaContrasena)" title="Repita la contraseña" />
					</div>

					<div class="form-group text-center">
						<br/>
						<input type="submit" value="Cambiar" class="btn btn-lg btn-primary" />
					</div>
				</div>
			</div>

			<br/><br/>

			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">Cambiar frase de recuperación:</h3>
				</div>

				<div class="panel-body">
					<div class="form-group">
						<p class="help-block">La frase de recuperación le permitirá cambiar su contraseña en caso de olvidarla.</p>
					</div>

					<div class="form-group">
						<input type="password" name="frase" placeholder="Frase de recuperación" class="form-control" pattern=".{4,}" />
						<p class="help-block">Ingrese su frase de recuperación actual, si no la recuerda deberá solicitar a vicerrectorado que la reestablezcan.</p>
						<br/>
					</div>

					<div class="form-group">
						<input type="password" name="nuevaFrase" placeholder="Nueva frase de recuperación" class="form-control" pattern=".{4,}" onKeyUp="diff(document.usuario.refrase, this)" />
						<p class="help-block">Debe contener al menos 4 caracteres.</p>
					</div>

					<div class="form-group">
						<input type="password" name="refrase" placeholder="Repita la frase de recuperación" class="form-control" pattern=".{4,}" onKeyUp="diff(this, document.usuario.nuevaFrase)" title="Repita la contraseña" />
					</div>

					<div class="form-group text-center">
						<br/>
						<input type="submit" value="Cambiar" class="btn btn-lg btn-primary" />
					</div>
				</div>
			</div>
		</div>
	</div>

	<input type="hidden" name="cedula" value="<?= $usuario->cedula; ?>" />
</form>