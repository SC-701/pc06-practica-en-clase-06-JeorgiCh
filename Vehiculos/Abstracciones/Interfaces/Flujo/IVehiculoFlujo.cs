using Abstracciones.Modelos;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Abstracciones.Interfaces.Flujo
{
    public interface IVehiculoFlujo
    {
        Task<IEnumerable<VehiculoResponse>> Obtener();
        Task<VehiculoDetalle> ObtenerPorId(Guid Id);
        Task<Guid> Agregar(VehiculoRequest vehiculo);
        Task<Guid> Editar(Guid Id, VehiculoRequest vehiculo);
        Task<Guid> Eliminar(Guid Id);
    }
}
