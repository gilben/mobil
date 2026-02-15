# Mobile App - Pasión por Programar

## Requisitos
- Node.js 18+
- Expo CLI (`npm install -g expo-cli`)
- Android Emulator o dispositivo físico
- Acceso a la app Expo Go (Google Play)

## Estructura
```
mobile/
├── app/
│   ├── _layout.tsx              # Navegación y stack
│   └── index.tsx                # Pantalla principal
├── screens/
│   └── AgeCheckScreen.tsx       # Componente del formulario
├── app.json                     # Configuración de Expo
├── package.json                 # Dependencias
├── tsconfig.json                # Configuración TypeScript
├── babel.config.js              # Configuración Babel
└── README.md
```

## Instalación

```bash
cd mobile
npm install
# o
yarn install
```

## Ejecución

### En Emulador Android
```bash
npm run android
```

### En dispositivo físico
1. Instala la app "Expo Go" desde Google Play
2. Ejecuta:
```bash
npm start
```
3. Escanea el código QR con tu cámara

## Compilación para Play Store

### 1. Configurar credenciales de Expo
```bash
expo login
```

### 2. Generar la build
```bash
eas build --platform android --type apk
```

O para AAB (recomendado para Play Store):
```bash
eas build --platform android
```

### 3. Subir a Play Store
- Ve a Google Play Console
- Crea una nueva aplicación
- Sube el AAB generado
- Completa los detalles de la tienda

## Configuración de Keystore
El keystore para firma se genera automáticamente con EAS Build.

## Variables de Entorno
Actualiza `BACKEND_URL` en `screens/AgeCheckScreen.tsx` con tu URL de producción.
