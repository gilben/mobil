# Build stage
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src

# Copy project file
COPY ["backend/backend.csproj", "backend/"]

# Restore dependencies
RUN dotnet restore "backend/backend.csproj"

# Copy all files
COPY . .

# Build the project
WORKDIR "/src/backend"
RUN dotnet build "backend.csproj" -c Release -o /app/build

# Publish stage
FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /app

# Copy built app from build stage
COPY --from=build /app/build .

# Set environment
ENV ASPNETCORE_URLS=http://+:8080

# Expose port
EXPOSE 8080

# Run the app
ENTRYPOINT ["dotnet", "backend.dll"]
