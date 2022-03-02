using System;

namespace DotsAndBoxesWeb.Models
{
    public class DataResponse
    { 
        public string Id { get; set; }
        public string Message { get; set; }
        public int Boxes { get; set; }
        public int Player1 { get; set; }
        public string Player1Name { get; set; }
        public int Player2 { get; set; }
        public string Player2Name { get; set; }
        public string Play { get; set; }

        public DataResponse()
        {
            
        }

        public DataResponse(string id, string message)
        {
            Id = id;
            Message = message;
        }

        public DataResponse(string message): this(Guid.NewGuid().ToString(), message)
        {
        }
    }
}
