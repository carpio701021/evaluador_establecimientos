LOAD DATA LOCAL INFILE '/home/vegetalink/GRUPO1.csv' INTO TABLE CSV1
FIELDS TERMINATED BY ','

IGNORE 1 LINES
(
id_Tipo_Establecimiento	,Nombre	,Estado	,Servicio_Default	,id_Establecimiento	,Nombre1	,Latitud	,Longitud	,is_Oficial	,Tipo	,Estado1	,Descripcion	,id_Servicio_Establecimiento	,id_Servicio	,id_Establecimiento1	,Prioridad	,Estado2	,id_Servicio1	,Nombre2	,Estado3	,id_Detalle_Tipo	,Etiqueta	,Tipo_Dato	,es_Reservable	,Metrica_Reserva	,id_Detalle_Servicio	,Estado4	,Valor	,Descripcion1	,id_Servicio_Establecimiento1	,Servicio_id_Servicio	,Hora_Check_In	,id_Establecimiento2	,id_Usuario	,Estado5	,id_Usuario1	,Nombre3	,Nick	,Email	,Estado6	,Password	,id_Usuario2	,id_Rol	,Estado7	,id_Rol1	,Nombre4	,Estado8	,id_Calificacion	,id_Categoria	,Valor1	,Fecha	,Comentario	,id_Servicio_Establecimiento2	,id_Categoria1	,Nombre5	,Tipo_Dato1	,Estado9	,id_Detalle_Categoria	,Valor2	,id_Categoria2	,Estado10	,id_Reserva	,Fecha_Inicio	,Fecha_Fin	,Aprobada	,Usuario_id_Usuario,id_Detalle_Servicio1
);



LOAD DATA LOCAL INFILE '/home/vegetalink/GRUPO2.csv' INTO TABLE CSV2
FIELDS TERMINATED BY ','

IGNORE 1 LINES
(
establecimiento_id_establecimiento,establecimiento_nombre,establecimiento_direccion,establecimiento_tipo,establecimiento_longitud,establecimiento_latitud,establecimiento_oficial,establecimiento_calificacion_general,establecimiento_dimension_id_establecimiento,establecimiento_dimension_id_dimension,establecimiento_dimension_id_categoria,categoria_id_categoria,categoria_nombre,categoria_descripcion,servicio_id_servicio,servicio_nombre, servicio_descripcion,caracteristica_id_caracteristica,caracteristica_nombre,caracteristica_valor,caracteristica_Fid_servicio,establecimiento_servicio_id_establecimiento_servicio,establecimiento_servicio_Fid_establecimiento,establecimiento_servicio_Fid_servicio,usuario_id_usuario,usuario_nombre,usuario_correo,usuario_telefono,usuario_rol,usuario_id_establecimiento,usuario_password,prereserva_id_prereserva,prereserva_horayfecha,prereserva_cantpersonas,prereserva_id_establecimiento_servicio,prereserva_id_usuario,comentario_id_comentario,comentario_contenido,comentario_calificacion,comentario_Fid_establecimiento_servicio
);

LOAD DATA LOCAL INFILE '/home/vegetalink/GRUPO3.csv' INTO TABLE CSV3
FIELDS TERMINATED BY ','

IGNORE 1 LINES
(
ID_Establecimiento,Nombre,Latitud, Longitud,Tipo_Establecimiento,Establecimiento_Oficial,Servicio_Establecimiento,Descripcion_Servicio,Calificacion,Comentario
);


LOAD DATA LOCAL INFILE '/home/vegetalink/GRUPO4.csv' INTO TABLE CSV4
FIELDS TERMINATED BY ','

IGNORE 1 LINES
(
calificacion	,punteo_cal	,usuario_cal	,servicio_cal	,comentario_cal	,caracteristica	,nombre_car	,duracion	,categoria	,dimension_cat	,nombre_cat	,servicio_detser	,caracteristica_detser	,dimension	,nombre_dim	,dimension_dimest	,establecimiento_dimest	,establecimiento	,nombre_est	,latitud,longitud	,descripcion_est	,punteo_est	,tipoest_est	,oficial	,reserva	,fecha	,usuario_res	,servicio_res	,servicio	,cupo	,punteo_ser	,establecimiento_ser	,tiposer_ser	,nombre_ser	,tipo_establecimiento	,nombre_tipest	,descripcion_tipest	,tipo_servicio	,nombre_tipser	,descripcion_tipser	,id_usuario	,usuario	,nombre_us	,apellido	,rol	,password

);

LOAD DATA LOCAL INFILE '/home/vegetalink/GRUPO6.csv' INTO TABLE CSV6
FIELDS TERMINATED BY ','

IGNORE 1 LINES
(
ESTABLECIMIENTO,	TELEFONO_ESTABLECIMIENTO,	DIRECCION_ESTABLECIMIENTO,	NOMBRE_ESTABLECIMIENTO	,
LATITUD_ESTABLECIMIENTO,	LONGITUD_ESTABLECIMIENTO,	USERNAME_USER_CREADOR,	TELEFONO_USER_CREADOR	,
CORREO_USER_CREADOR	,PASSWORD_USER_CREADOR	,NOMBRE_USER_CREADOR	,TIPONOMBRE_USER_CREADOR,
NOMBRE_DIMENSION,	NOMBRE_ATRIBUTO	,DESCRIPCION_ATRIBUTO,	NOMBRE_SERVICIO,	DESCRIPCION_SERVICIO,
NOMBRE_R_C	,SERVICIO_TRC,	ESTABLECIMIENTO_TRC,	VALOR_RC	,COMENTARIO_RC	,INICIO_RC	,FINAL_RC,
USERNAME_USER_TRC	,TELEFONO_USER_TRC	,CORREO_USER_TRC	,PASSWORD_USER_TRC,	NOMBRE_USER_TRC	,
  NOMBRE_TIPOUSUARIOTRC, OTRA

);
