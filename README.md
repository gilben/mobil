# Pasión por Programar - MVP

**Estado:** Implementado ✅  
**Versión:** 1.0.0  

Aplicación móvil Android desarrollada con React Native y backend .NET para capturar y verificar la edad del usuario.

## Estructura del Proyecto

```
mobil/
├── backend/                  # Backend .NET
│   ├── Controllers/
│   │   └── AgeCheckController.cs
│   ├── Program.cs
│   ├── appsettings.json
│   ├── backend.csproj
│   ├── README.md
│   └── .gitignore
├── mobile/                   # App React Native
│   ├── app/
│   │   ├── _layout.tsx
│   │   └── index.tsx
│   ├── screens/
│   │   └── AgeCheckScreen.tsx
│   ├── app.json
│   ├── package.json
│   ├── tsconfig.json
│   ├── babel.config.js
│   ├── README.md
│   └── .gitignore
├── EPIC-001.md               # Especificación de la épica
├── STORE-DEPLOYMENT.md       # Guía de despliegue
├── privacy-policy.md         # Política de privacidad
└── README.md                 # Este archivo
```

## Historias Completadas

✅ **STORY-001**: Arquitectura Base y Backend .NET
- Endpoint `POST /api/age-check` implementado
- CORS configurado para permitir peticiones desde la app
- Estructura de carpetas BMad

✅ **STORY-002**: Formulario de Interfaz de Usuario
- Título "Programar es mi pasión" visible
- Input numérico para edad
- Botón Aceptar que dispara petición
- Alert mostrando "Tu edad es {X}"

✅ **STORY-003**: Preparación para Play Store
- Keystore generado (mediante EAS Build)
- app.json configurado (nombre, paquete, versión)
- Estructura lista para compilación AAB
- Guía de despliegue completa

## Instalación y Ejecución

### Backend

```bash
cd backend
dotnet restore
dotnet run
# Se ejecuta en https://localhost:5001
```

### Mobile

```bash
cd mobile
npm install
npm start
# Abre en emulador o dispositivo con Expo Go
```

## Despliegue a Play Store

Sigue la guía detallada en [STORE-DEPLOYMENT.md](STORE-DEPLOYMENT.md):

```bash
cd mobile
npm install
eas login
eas build --platform android
# Subir AAB a Google Play Console
```

## Requisitos de Sistema

### Backend
- .NET 8.0 SDK o superior
- Visual Studio 2022 o VS Code

### Mobile
- Node.js 18+
- Expo CLI
- Android Emulator o dispositivo con Android 6.0+

## Tecnologías Utilizadas

| Componente | Tecnología | Versión |
|-----------|-----------|---------|
| Backend | .NET | 8.0 |
| Mobile | React Native | 0.76.3 |
| HTTP Client | Axios | 1.6.0 |
| Navegación | Expo Router | 3.0.0 |
| Lenguaje | TypeScript | 5.1.0 |

## API Endpoint

### POST /api/age-check

**Request:**
```json
{
  "age": 25
}
```

**Response (200):**
```json
{
  "message": "Tu edad es 25"
}
```

## Configuración de Producción

Para producción, actualiza en [AgeCheckScreen.tsx](mobile/screens/AgeCheckScreen.tsx):

```typescript
const BACKEND_URL = 'https://tu-backend-produccion.com';
```

## Próximos Pasos (Post-MVP)

- [ ] Autenticación y persistencia de usuarios
- [ ] Base de datos para almacenar datos verificados
- [ ] Notificaciones push
- [ ] Analytics mejorado
- [ ] Soporte para iOS

## Licencia

Privado - Derechos reservados © 2026

## Contacto

Para preguntas o reportar bugs, contacta al equipo de desarrollo.

---

**Completado:** Febrero 14, 2026
