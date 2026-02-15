# Guía de Preparación para Play Store

## 1. Generación de Keystore

### Opción A: Usando EAS Build (Recomendado)
```bash
eas build --platform android
```

EAS maneja automáticamente la generación y almacenamiento seguro del keystore.

### Opción B: Manual con keytool
```bash
keytool -genkey -v -keystore pasion-programar-release.keystore \
  -keyalg RSA -keysize 2048 -validity 36500 \
  -alias pasion-programar
```

**Información a proporcionar:**
- First and last name: "Pasión por Programar"
- Organizational unit: "Mobile Development"
- Organization: "Tu Empresa"
- City: "Tu Ciudad"
- State: "Tu Estado"
- Country: "MX" (o tu país)
- Password: (elige uno seguro, mínimo 6 caracteres)

**Guardar en:** `mobile/android/app/`

## 2. Configuración de app.json

✅ Ya configurado:
- `"slug": "pasion-programar"`
- `"package": "com.gilbe.pasionprogramar"`
- `"versionCode": 1`
- `"version": "1.0.0"`

Actualizar cuando cambies la versión:
```json
{
  "version": "1.0.1",
  "android": {
    "versionCode": 2
  }
}
```

## 3. Iconos y Splash Screen

### Requisitos de Iconos:
- **Android**: 192x192 px (PNG)
- **Ubicación**: `mobile/assets/icon.png`

### Splash Screen:
- **Resolución**: 1080x2340 px (PNG)
- **Ubicación**: `mobile/assets/splash.png`

### Adaptative Icon:
- **Foreground**: 108x108 px (PNG con zona de seguridad de 72px)
- **Ubicación**: `mobile/assets/adaptive-icon.png`

#### Herramientas recomendadas:
- Figma
- Photoshop
- GIMP (gratuito)

## 4. Compilación para Play Store

### Paso 1: Preparar la aplicación
```bash
cd mobile
npm install
```

### Paso 2: Crear cuenta en EAS
```bash
eas login
```

### Paso 3: Inicializar EAS (primera vez)
```bash
eas init
```

### Paso 4: Compilar AAB
```bash
eas build --platform android
```

Selecciona "release" cuando se solicite.

### Paso 5: Descargar AAB
El archivo se estará disponible en el dashboard de EAS o se descargará automáticamente.

## 5. Subir a Google Play Console

### Requisitos previos:
1. Cuenta de Google Play Developer ($25 USD, una sola vez)
2. Cuenta de Google (regular)
3. Información de contacto y banco

### Pasos:
1. **Crea la aplicación:**
   - Nombre: "Pasión por Programar"
   - Paquete: "com.gilbe.pasionprogramar"
   - Categoría: Herramientas

2. **Completa el store listing:**
   - Descripción breve
   - Descripción completa
   - Palabras clave
   - URLs (privacidad, web)
   - Email de contacto

3. **Sube assets:**
   - Screenshots (mínimo 2, máximo 8)
   - Feature graphic (1024x500 px)
   - Icono de aplicación (512x512 px)
   - Video promocional (opcional)

4. **Sube el AAB:**
   - Internal testing → Release → Production
   - Google Play Console > Releases > Production
   - Adjunta el AAB generado

5. **Completa content rating:**
   - Google Play asks for content rating questionnaire
   - Toma 5 minutos

6. **Establece precios y distribución:**
   - Gratuito
   - Disponible en todos los países (o seleccionar específicos)
   - Política de privacidad (requerida)

7. **Envía para revisión:**
   - Puede tomar 2-3 horas, hasta 24 horas en casos excepcionales

## 6. Configuración de Privacidad

Crea un archivo [privacy-policy.md](../privacy-policy.md) con:
- Datos recolectados (edad en este caso)
- Cómo se usan
- Retención de datos
- Seguridad

## 7. Certificado de Firma

Para versiones futuras, guarda de forma segura:
- Keystore (`.keystore`)
- Contraseña del keystore
- Contraseña del alias

## 8. Versionado

Cada vez que actualices:
```json
{
  "version": "1.0.X",  // Incrementar tercera cifra
  "android": {
    "versionCode": X   // Incrementar siempre
  }
}
```

## Checklist Final

- [ ] Keystore generado y guardado
- [ ] app.json configurado correctamente
- [ ] Iconos creados (192x192, adaptative, etc.)
- [ ] Splash screen creado
- [ ] Backend desplegado (URL en AgeCheckScreen)
- [ ] AAB compilado sin errores
- [ ] Google Play Console cuenta creada
- [ ] Store listing completado
- [ ] Screenshots subidos
- [ ] Política de privacidad creada
- [ ] Enviado para revisión

## Notas Importantes

- La primera revisión puede tomar más tiempo (24h+)
- Rechazos comunes: política de privacidad faltante, permisos no explicados
- Siempre lee las políticas de Google Play antes de enviar
- Mantén el keystore en un lugar seguro (backup)
