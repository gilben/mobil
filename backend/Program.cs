using Microsoft.AspNetCore.Cors;

var builder = WebApplication.CreateBuilder(args);

// Configure port from environment or default
var port = Environment.GetEnvironmentVariable("PORT") ?? "5002";
builder.WebHost.UseUrls($"http://0.0.0.0:{port}", $"http://localhost:{port}");

// Add services
builder.Services.AddControllers();
builder.Services.AddCors(options =>
{
    options.AddPolicy("AllowMobileApp", policy =>
    {
        policy.AllowAnyOrigin()
              .AllowAnyMethod()
              .AllowAnyHeader();
    });
});

var app = builder.Build();

// Configure middleware
app.UseCors("AllowMobileApp");
app.UseAuthorization();
app.MapControllers();

app.Run();
