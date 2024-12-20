# Control de Hábitos 🧑‍💻

Desarrollo de Base de Datos en **MySQL Workbench**.

## Proyecto de Control de Hábitos de Usuarios 🧠

Este proyecto consiste en una base de datos diseñada para el **control de hábitos** de los usuarios que se registren. Utiliza **MySQL** para gestionar y almacenar información sobre los hábitos diarios, permitiendo un seguimiento y análisis detallado de sus comportamientos y actividades.

---

## Descripción 📚

La base de datos está estructurada para almacenar información sobre:

- **Usuarios**: Datos personales básicos.
- **Hábitos**: Actividades que el usuario realiza.
- **Horarios**: Fechas y horas de inicio y fin de cada actividad.
- **Cumplimiento**: Registro del seguimiento para verificar que los hábitos se desarrollen correctamente.

---

## Funcionalidades 🚀

- **Registro de usuarios**: Los usuarios pueden registrarse y actualizar sus datos.
- **Seguimiento de hábitos**: Los usuarios pueden crear hábitos y registrar si los cumplen o no cada día.
- **Actividades realizadas**: Registro de las actividades específicas que los usuarios quieren desarrollar.
- **Horarios asignados**: Gestión de horarios para planificar cada actividad.

---

## Requisitos 📋

- **MySQL**: Asegúrate de tener MySQL instalado en tu máquina.
- **Herramientas de gestión**:
  - [MySQL Workbench](https://www.mysql.com/products/workbench/)

---

## Estructura de la Base de Datos 🗃️

### Tablas principales:

#### 1. Usuarios 👤
- **id_usuario (INT, PK)**: Identificador único del usuario.
- **nombre (VARCHAR)**: Nombre completo del usuario.
- **edad (INT)**: Edad del usuario.
- **correo (VARCHAR)**: Correo electrónico del usuario.
- **fecha_registro (DATE)**: Fecha en la que se registró el usuario.
- **genero (VARCHAR)**: Género del usuario.
- **notas (TEXT)**: Notas adicionales sobre el usuario.

#### 2. Hábitos 🕒
- **id_habito (INT, PK)**: Identificador único del hábito.
- **id_usuario (FK)**: Relación con el usuario que tiene el hábito.
- **id_actividad (FK)**: Relación con la actividad asignada al hábito.
- **id_horarios (FK)**: Relación con los horarios asignados.
- **frecuencia (VARCHAR)**: Frecuencia con la que se realiza el hábito (diaria, semanal, mensual).
- **descripcion (TEXT)**: Descripción detallada del hábito.

#### 3. Actividad 🎯
- **id_actividad (INT, PK)**: Identificador único de la actividad.
- **nombre_actividad (VARCHAR)**: Nombre de la actividad.
- **categoria (VARCHAR)**: Categoría de la actividad (deporte, arte, etc.).
- **dificultad (VARCHAR)**: Nivel de dificultad de la actividad.
- **descripcion (TEXT)**: Descripción de la actividad.

#### 4. Horarios 📅
- **id_horarios (INT, PK)**: Identificador único del horario.
- **dia_semana (VARCHAR)**: Día de la semana asignado al hábito.
- **hora_inicio (TIME)**: Hora de inicio del hábito.
- **hora_finalizacion (TIME)**: Hora de finalización del hábito.

#### 5. Cumplimiento ✅
- **id_cumplimiento (INT, PK)**: Identificador único del registro de cumplimiento.
- **id_habitos (FK)**: Relación con el hábito asociado.
- **estado (VARCHAR)**: Estado actual del hábito (completado, pendiente, etc.).
- **nivel_satisfaccion (VARCHAR)**: Nivel de satisfacción tras completar el hábito.

---

## Instalación y Uso 🚀

1. Clona este repositorio en tu máquina local:
   ```bash
   git clone https://github.com/JuanVelasco888888/Control_Habitos.git
   ```
2. Importa el script SQL en tu servidor MySQL utilizando MySQL Workbench o DBeaver.
3. Configura las credenciales de la base de datos según tu entorno local.
4. Ejecuta las consultas para crear y poblar las tablas principales.

---

## Contribuciones 🤝
¡Contribuciones son bienvenidas! Si deseas mejorar este proyecto, sigue estos pasos:
1. Realiza un fork del repositorio.
2. Crea una rama nueva para tus cambios.
3. Envía un pull request describiendo tus mejoras.

---

## Autor ✍️
Creado por [Juan Felipe Velasco].

---

## Licencia 📄
Este proyecto está bajo la licencia MIT. Consulta el archivo LICENSE para más detalles.
