# Backend - Pasión por Programar

## Requisitos
- .NET 8.0 SDK o superior
- Visual Studio 2022 o Visual Studio Code

## Estructura
```
backend/
├── Controllers/
│   └── AgeCheckController.cs    # Endpoint POST /api/age-check
├── Program.cs                   # Configuración de la aplicación
├── appsettings.json             # Configuración de ambiente
├── backend.csproj               # Archivo del proyecto
└── README.md
```

## Ejecución Local

```bash
cd backend
dotnet restore
dotnet run
```

La aplicación estará disponible en `https://localhost:5001`

## API Endpoints

### POST /api/age-check
Verifica la edad del usuario.

**Solicitud:**
```json
{
  "age": 25
}
```

**Respuesta (200 OK):**
```json
{
  "message": "Tu edad es 25"
}
```

**Respuesta (400 Bad Request):**
```json
{
  "error": "La edad debe ser un número válido"
}
```

## CORS
La aplicación está configurada para aceptar peticiones desde cualquier origen (AllowAnyOrigin). Para producción, reemplaza con orígenes específicos.

## Despliegue
Para desplegar en Azure, usa:
```bash
dotnet publish -c Release
```
