# Control_Habitos
Desarrollo de Base de Datos en MysqlWorkbench

# Proyecto de Control de Hábitos de Usuarios 🧑‍💻

Este proyecto consiste en una base de datos diseñada para el **control de hábitos** de los usuarios que se registren. Utiliza **MySQL** para gestionar y almacenar información sobre los hábitos diarios de los usuarios, permitiendo un seguimiento y análisis de sus comportamientos y actividades.

## Descripción 📚

La base de datos está estructurada para almacenar información sobre:

- **Usuarios**: Datos personales básicos.
- **Hábitos**: Actividades que el usuario realiza.
- **Horarios**: Fechas y Horas de Inicio y Fin de la Actividad 
- **Cumplimiento**: Manejo de seguimiento para verificar que se este desarrollando 

## Funcionalidades 🚀

- **Registro de usuarios**: Los usuarios pueden registrarse y actualizar sus datos.
- **Seguimiento de hábitos**: Los usuarios pueden crear hábitos y registrar si los cumplen o no cada día.
- **Actividades Realizadas**: Los usuarios pueden registrar las actividades que quieren desarrollar 

## Requisitos 📋

- **MySQL**: Asegúrate de tener MySQL instalado en tu máquina.
- **Herramientas de gestión** (opcional):
  - [MySQL Workbench](https://www.mysql.com/products/workbench/)
    - [DBeaver](https://dbeaver.io/)

    ## Estructura de la Base de Datos 🗃️

    ### Tablas principales:

    1. **Usuarios**
       - id_usuario (INT, PK)
          - nombre (VARCHAR)
             - correo (VARCHAR)
                - fecha_registro (DATE)
                   
                   2. **Hábitos**
                      - id_habito (INT, PK)
                         - nombre_habito (VARCHAR)
                            - descripcion (TEXT)
                               - categoria (VARCHAR)

                               3. **Horarios**
                                
                                    
                                    
                                           
                            

                                            

                                      

                                              

