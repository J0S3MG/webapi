using Microsoft.AspNetCore.Mvc;
using webapiServer.Models;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace webapiServer.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AlumnosController : ControllerBase
    {
        static List<Alumno> alumnos = new List<Alumno>()
        {
            new Alumno(){LU = 17771, Nombre = "Maxima"},
            new Alumno(){LU = 17772, Nombre = "Martincito"}
        };
        // GET: api/<AlumnoControllers>
        [HttpGet]
        public IActionResult Get()
        {
            return Ok(alumnos);
        }
        [HttpGet("{LU}")]
        public IActionResult Get(int LU)
        {
            var alumno = alumnos.Where(a => a.LU == LU).FirstOrDefault();
            return Ok(alumno);
        }
        [HttpPost]
        public IActionResult Post(Alumno nuevo)
        {
            alumnos.Add(nuevo);
            return Ok(new {mensaje = "Se agrego Correctamente"});
        }
        [HttpDelete("{LU}")]
        public IActionResult Delete(int LU)
        {
            var alumno = alumnos.Where(a => a.LU == LU).FirstOrDefault();
            alumnos.Remove(alumno);
            return Ok(new { mensaje = "Se Borro Correctamente" });
        }

    }
}
