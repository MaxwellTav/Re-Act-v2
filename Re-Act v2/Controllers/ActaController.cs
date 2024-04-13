using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace Re_Act_v2.Controllers
{
    public class ActaController : Controller
    {
        public static int dummyCuantityCandidates = 34;

        #region C
        [Authorize]
        public IActionResult AddVotesPresident()
        {
            return View(dummyCuantityCandidates);
        }

        [Authorize]
        public IActionResult AddVotesSenator()
        {
            return View(dummyCuantityCandidates);
        }

        [Authorize]
        public IActionResult AddVotesCongressman()
        {
            return View(dummyCuantityCandidates);
        }
        #endregion
        #region R
        //Ver el voto seleccionado.
        [Authorize]
        public IActionResult ViewVote()
        {
            return View();
        }

        [Authorize]
        public IActionResult ViewVotesPresident()
        {
            return View();
        }

        [Authorize]
        public IActionResult ViewVotesSenator()
        {
            return View();
        }

        [Authorize]
        public IActionResult ViewVotesCongressman()
        {
            return View();
        }
        #endregion
        #region U

        #endregion
        #region D

        #endregion
    }
}
