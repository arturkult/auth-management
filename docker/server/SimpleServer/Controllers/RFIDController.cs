using Microsoft.AspNetCore.Mvc;
using System;

namespace SimpleServer.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class RFIDController : ControllerBase
    {
        [HttpGet]
        public string Receive(string cardId)
        {
            Console.WriteLine("Receive from " + cardId);
            return "success";
        }
    }
}