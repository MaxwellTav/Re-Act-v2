﻿using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace Re_Act_v2.Controllers
{
    public class LoginController : Controller
    {
        private readonly ApplicationDbContext _context;
        private readonly UserManager<IdentityUser> _userManager;
        private readonly SignInManager<IdentityUser> _signInManager;
        private readonly RoleManager<IdentityRole> _roleManager;

        public LoginController(ApplicationDbContext context, UserManager<IdentityUser> userManager, SignInManager<IdentityUser> signInManager, RoleManager<IdentityRole> roleManager)
        {
            _context = context;
            _userManager = userManager;
            _signInManager = signInManager;
            _roleManager = roleManager;
        }

        [AllowAnonymous]
        public IActionResult Index()
        {
            return View();
        }

        [AllowAnonymous]
        public IActionResult PassageForbidden()
        {
            return View();
        }

        [AllowAnonymous]
        [HttpPost]
        public async Task<IActionResult> Logout()
        {
            await HttpContext.SignOutAsync();
            return RedirectToAction("Index", "Home");
        }

        #region C
        //public async Task<bool> CrearUsuarioAsync(string userName, string password)
        //{
        //    var existingUser = await _context.Users.FirstOrDefaultAsync(u => u.UserName == userName);
        //    if (existingUser != null)
        //    {
        //        return false;
        //    }

        //    var newUser = new IdentityUser
        //    {
        //        UserName = userName
        //    };

        //    var result = await _userManager.CreateAsync(newUser, password);

        //    if (result.Succeeded)
        //    {
        //        return true;
        //    }
        //    else
        //    {
        //        foreach (var error in result.Errors)
        //        {
        //            Console.WriteLine($"Error al crear el usuario: {error.Description}");
        //        }
        //        return false;
        //    }
        //}

        public async Task<bool> CrearUsuarioAsync(string userName, string password)
        {
            var existingUser = await _context.Users.FirstOrDefaultAsync(u => u.UserName == userName);
            if (existingUser != null)
            {
                return false;
            }

            var newUser = new IdentityUser
            {
                UserName = userName
            };

            var result = await _userManager.CreateAsync(newUser, password);

            if (result.Succeeded)
            {
                // Crear el rol "Admin" si aún no existe
                var roleExists = await _roleManager.RoleExistsAsync("Admin");
                if (!roleExists)
                {
                    var adminRole = new IdentityRole("Admin");
                    await _roleManager.CreateAsync(adminRole);
                }

                // Asignar el rol "Admin" al nuevo usuario
                await _userManager.AddToRoleAsync(newUser, "Admin");

                return true;
            }
            else
            {
                foreach (var error in result.Errors)
                {
                    Console.WriteLine($"Error al crear el usuario: {error.Description}");
                }
                return false;
            }
        }


        #endregion
        #region R
        [AllowAnonymous]
        [HttpPost]
        public async Task<IActionResult> Login(string userName, string password)
        {
            var result = _signInManager.PasswordSignInAsync(userName, password, false, lockoutOnFailure: true).Result;

            if (result.Succeeded)
            {
                return Json(new { success = true }); // Inicio de sesión exitoso
            }
            else
            {
                return Json(new { success = false }); // Credenciales incorrectas
            }
        }
        #endregion
    }
}
