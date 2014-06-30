using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BasicIdentity.Repositories
{
  public class DbContext
  {

    public static Interfaces.IDbContext Create()
    {
      return new DapperDbContext();
    }
  }
}