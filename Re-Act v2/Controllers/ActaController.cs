using Microsoft.AspNetCore.Mvc;

namespace Re_Act_v2.Controllers
{
    public class ActaController : Controller
    {
        public static int dummyCuantityCandidates = 34;
        public IActionResult AddVotesPresident()
        {
            return View(dummyCuantityCandidates);
        }
    }
}
