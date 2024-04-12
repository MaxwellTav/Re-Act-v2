using Microsoft.AspNetCore.Mvc;

namespace Re_Act_v2.Controllers
{
    public class ActaController : Controller
    {
        public static int dummyCuantityCandidates = 34;
        
        #region C
        public IActionResult AddVotesPresident()
        {
            return View(dummyCuantityCandidates);
        }

        public IActionResult AddVotesSenator()
        {
            return View(dummyCuantityCandidates);
        }

        public IActionResult AddVotesCongressman()
        {
            return View(dummyCuantityCandidates);
        }
        #endregion
        #region R
        //Ver el voto seleccionado.
        public IActionResult ViewVote()
        {
            return View();
        }

        public IActionResult ViewVotesPresident()
        {
            return View();
        }

        public IActionResult ViewVotesSenator()
        {
            return View();
        }

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
