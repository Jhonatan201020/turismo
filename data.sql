/*
SQLyog Ultimate v8.55 
MySQL - 5.5.5-10.4.18-MariaDB : Database - turismo
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`turismo` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `turismo`;

/*Data for the table `Capacitacion` */

/*Data for the table `Correo` */

insert  into `Correo`(`IdCorreo`,`IdResponsableRemitente`,`IdResponsableDestinatario`,`Asunto`,`Cuerpo`,`Fecha`) values (1,1,2,'Hola','COMO ESTAS','2022-11-24');

/*Data for the table `Destino_Turistico` */

insert  into `Destino_Turistico`(`IdDestinoTuristico`,`NombreDestino`,`Distrito`,`Provincia`,`Departamento`) values (1,'MANOS CRUZADAS','HUANUCO','HUANUCO','HUANUCO');

/*Data for the table `Establecimiento` */

/*Data for the table `Responsable` */

insert  into `Responsable`(`IdResponsable`,`Dni`,`Apellidos`,`Nombres`,`Password`) values (1,'74746010','DELGADO EGUILUZ','LUIS RENZO','123'),(2,'74746011','CAMPOS ANDRADE','ALBERTO','123');

/*Data for the table `Usuario` */

insert  into `Usuario`(`IdUsuario`,`Dni`,`Apellidos`,`Nombres`,`Password`) values (1,'123456789','CHAVEZ CRUZ','LUIS CARLOS','123');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
