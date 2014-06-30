using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace BasicIdentity.Interfaces
{
  public interface IDbContext : IDisposable
  {

    IDbConnection OpenConnection();

  }
}