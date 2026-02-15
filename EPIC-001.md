# EPIC-001: Aplicación "Pasión por Programar" (MVP)

**Estado:** Planificación  
**Prioridad:** Alta  

## Descripción
Desarrollo de una aplicación móvil funcional con React Native (Android) y un backend en .NET, que capture la edad del usuario y cumpla con los estándares de publicación en Google Play Store.

---

## Criterios de Aceptación Globales

- Aplicación Android compilable en modo Release (AAB).
- Backend .NET documentado y desplegable.
- Cumplimiento de políticas básicas de la Play Store.

---

# Historias de Usuario

---

## STORY-001: Arquitectura Base y Backend .NET

### Historia
Como Desarrollador,  
Quiero configurar el backend en .NET y la estructura de React Native,  
Para tener una base sólida de comunicación.

### Criterios de Aceptación

- Endpoint `POST /api/age-check` que reciba un entero y devuelva el mensaje formateado.
- Configuración de CORS para permitir peticiones desde la App.
- Estructura de carpetas alineada al estándar BMad.

---

## STORY-002: Formulario de Interfaz de Usuario

### Historia
Como Usuario,  
Quiero ver un formulario con el título **"Programar es mi pasión"**,  
Para ingresar mi edad y recibir una respuesta.

### Criterios de Aceptación

- Título visible: **"Programar es mi pasión"**.
- Input numérico para **Edad**.
- Botón **Aceptar** que dispare la petición al backend.
- Alert o Modal que muestre: **"Tu edad es {X}"**.

---

## STORY-003: Preparación para Play Store

### Historia
Como Dueño del Producto,  
Quiero que la app tenga iconos, Splash Screen y firma de Release,  
Para subirla a la Play Store sin rechazos técnicos.

### Criterios de Aceptación

- Generación de keystore para firma de producción.
- Configuración de `app.json` (nombre del paquete, versión).
- Iconos generados para diferentes densidades de pantalla.

---

# Notas

- Este documento agrupa la épica y sus historias para facilitar revisión en MVP.
- Puede dividirse posteriormente en estructura `/epics` y `/stories` si se migra a un repositorio estructurado.
