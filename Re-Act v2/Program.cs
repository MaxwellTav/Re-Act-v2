using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using Re_Act_v2;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddControllersWithViews();

// Configurar DbContext para Identity y tu aplicación
builder.Services.AddDbContext<ApplicationDbContext>(opcion => opcion.UseSqlServer(builder.Configuration.GetConnectionString("MaxDB")));

// Agregar Identity con roles
builder.Services.AddIdentity<IdentityUser, IdentityRole>()
    .AddEntityFrameworkStores<ApplicationDbContext>()
    .AddDefaultTokenProviders();

// Agregar la autenticación
builder.Services.Configure<IdentityOptions>(options =>
{
    // Configurar opciones de contraseña, bloqueo de cuenta, etc.
});

// Agregar servicios de autorización
builder.Services.AddAuthorization();

var app = builder.Build();

// Configurar el pipeline de solicitudes HTTP
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
    app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();

// Agregar autenticación y autorización
app.UseAuthentication();
app.UseAuthorization();

// Mapear las rutas de los controladores
app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Login}/{action=Index}/{id?}");

app.Run();
