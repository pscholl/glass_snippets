package com.x.google.masf.services.resume;

import com.x.google.common.Config;

public abstract class ResumeService
{
  private RequestIdStore requestIdStore = new RequestIdStore(Config.getInstance().getPersistentStore());

  private static void debug(String paramString)
  {
  }

  protected void addClientTicket(String paramString1, String paramString2)
  {
    try
    {
      debug("ResumeService.addClientTicketMap(" + paramString1 + ")");
      if (paramString1 != null)
        this.requestIdStore.setServerId(paramString1, paramString2);
      return;
    }
    finally
    {
    }
  }

  public abstract void cancelRequest(ResumableRequest paramResumableRequest);

  public abstract void disposeRequest(ResumableRequest paramResumableRequest);

  public abstract int getChunkSize();

  public String[] getClientTickets()
  {
    debug("ResumeService.getRequestIds()");
    return this.requestIdStore.getClientIds();
  }

  protected String getServerTicket(String paramString)
  {
    try
    {
      debug("ResumeService.getServerTicket(" + paramString + ")");
      String str1;
      if (paramString != null)
        str1 = this.requestIdStore.getServerId(paramString);
      for (String str2 = str1; ; str2 = null)
        return str2;
    }
    finally
    {
    }
  }

  protected void removeClientTicket(String paramString)
  {
    try
    {
      debug("ResumeService.removeClientTicketMap(" + paramString + ")");
      if (paramString != null)
        this.requestIdStore.removeClientId(paramString);
      return;
    }
    finally
    {
    }
  }

  public abstract void setChunkSize(int paramInt);

  public abstract void submitRequest(ResumableRequest paramResumableRequest);
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.masf.services.resume.ResumeService
 * JD-Core Version:    0.6.2
 */