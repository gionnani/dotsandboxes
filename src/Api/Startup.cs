using Api.Data;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.EntityFrameworkCore;
using NeuralNetwork;
using NeuralNetwork.Models;
using NeuralNetwork.Models.Core;

namespace Api
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddDbContext<DotsContext>(opt => 
                opt.UseInMemoryDatabase(Configuration.GetConnectionString("DotsAndBoxes")));

            services.AddSingleton<ICnnDots, CnnDots<InputNoConv>>(provider =>
            {
                CnnDots<InputNoConv> cnn = new CnnDots<InputNoConv>();
                cnn.LoadTrainedModel(new Model<InputNoConv>("dotsandboxes3_20", "dotsandboxes3_20/variables/variables", 250, 0));
                return cnn;
            });

            services.AddControllers();
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }

            app.UseRouting();

            app.UseStaticFiles();

            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllers();
            });
        }
    }
}
