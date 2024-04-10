using Microsoft.AspNetCore.Mvc;
using Re_Act_v2.Models;
using System.Diagnostics;

namespace Re_Act_v2.Controllers
{
    public class HomeController : Controller
    {
        public HomeController()
        {

        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }

        public IActionResult Index()
        {
            return View();
        }
    }
}
