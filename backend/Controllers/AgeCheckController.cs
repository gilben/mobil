using Microsoft.AspNetCore.Mvc;

namespace PasionProgramar.Backend.Controllers
{
    [ApiController]
    [Route("api")]
    public class AgeCheckController : ControllerBase
    {
        [HttpPost("age-check")]
        public IActionResult CheckAge([FromBody] AgeRequest? request)
        {
            if (request == null || request.Age < 0)
            {
                return BadRequest(new { error = "La edad debe ser un número válido" });
            }

            return Ok(new { message = $"Tu edad es {request.Age}" });
        }
    }

    public class AgeRequest
    {
        public int Age { get; set; }
    }
}
