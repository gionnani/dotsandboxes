using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using NeuralNetwork;
using NeuralNetwork.Models;
using System.Collections.Generic;
using DotsAndBoxes.Game;
using DotsAndBoxes.Machine;
using DotsAndBoxes.Machine.MCTS;
using NeuralNetwork.Models.Core;

namespace DotsAndBoxesWeb
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
            services.AddSingleton<ICnnDots, CnnDots<InputNoConv>>(provider =>
            {
                var cnn = new CnnDots<InputNoConv>();
                cnn.LoadTrainedModel(new Model<InputNoConv>("dotsandboxes3_100", "dotsandboxes3_100/variables/variables", 250, 0));
                return cnn;
            });

            services.AddSingleton<IDictionary<string, IBoard>, Dictionary<string, IBoard>>(provider => new Dictionary<string, IBoard>());

            DataController.Disable = true;
            IBoard.Metrics = new MetricsZ();

            services.AddRazorPages();
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            else
            {
                app.UseExceptionHandler("/Error");
            }

            app.UseStaticFiles();

            app.UseRouting();

            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapRazorPages();
            });
        }
    }
}
