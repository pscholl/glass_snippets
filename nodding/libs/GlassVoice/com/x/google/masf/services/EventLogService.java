package com.x.google.masf.services;

import com.x.google.common.io.protocol.ProtoBuf;
import com.x.google.masf.MobileServiceMux;
import com.x.google.masf.protocol.PlainRequest;
import com.x.google.masf.protocol.Request;
import com.x.google.masf.protocol.Request.Listener;
import com.x.google.masf.protocol.Response;
import java.io.IOException;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;

public class EventLogService
{
  static final int MAX_SAVED_EVENT_LOGS = 100;
  static final int MAX_SEND_ATTEMPTS = 3;
  private static int numFailedEvents;
  private static Hashtable outstandingEventLogs = new Hashtable();

  public static void createNewInstanceUnitTests()
  {
    outstandingEventLogs = new Hashtable();
    numFailedEvents = 0;
  }

  public static Vector getOutstandingEventLogs()
  {
    Vector localVector;
    synchronized (outstandingEventLogs)
    {
      localVector = new Vector(outstandingEventLogs.size());
      Enumeration localEnumeration = outstandingEventLogs.elements();
      if (localEnumeration.hasMoreElements())
        localVector.addElement(((OutstandingLogEvent)localEnumeration.nextElement()).getEventData());
    }
    return localVector;
  }

  public static void log(ProtoBuf paramProtoBuf)
  {
    try
    {
      log(paramProtoBuf.toByteArray());
      return;
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException(localIOException.toString());
    }
  }

  public static void log(byte[] paramArrayOfByte)
  {
    new OutstandingLogEvent(paramArrayOfByte).send();
  }

  public static void resendFailedEventLogs()
  {
    synchronized (outstandingEventLogs)
    {
      Enumeration localEnumeration = outstandingEventLogs.elements();
      if (localEnumeration.hasMoreElements())
        ((OutstandingLogEvent)localEnumeration.nextElement()).resendIfFailed();
    }
  }

  private static class OutstandingLogEvent
    implements Request.Listener
  {
    private final byte[] eventData;
    private boolean failed;
    private int sendAttempts;

    OutstandingLogEvent(byte[] paramArrayOfByte)
    {
      this.eventData = paramArrayOfByte;
      synchronized (EventLogService.outstandingEventLogs)
      {
        EventLogService.outstandingEventLogs.put(this, this);
        return;
      }
    }

    public byte[] getEventData()
    {
      return this.eventData;
    }

    public void requestCompleted(Request paramRequest, Response paramResponse)
    {
      synchronized (EventLogService.outstandingEventLogs)
      {
        EventLogService.outstandingEventLogs.remove(this);
        return;
      }
    }

    public void requestFailed(Request paramRequest, Exception paramException)
    {
      if (this.sendAttempts < 3)
      {
        send();
        return;
      }
      while (true)
      {
        synchronized (EventLogService.outstandingEventLogs)
        {
          this.failed = true;
          if (EventLogService.numFailedEvents < 100)
          {
            EventLogService.access$112(1);
            return;
          }
        }
        EventLogService.outstandingEventLogs.remove(this);
      }
    }

    void resendIfFailed()
    {
      synchronized (EventLogService.outstandingEventLogs)
      {
        if (this.failed)
        {
          this.sendAttempts = 0;
          this.failed = false;
          EventLogService.access$120(1);
          send();
        }
        return;
      }
    }

    void send()
    {
      MobileServiceMux localMobileServiceMux = MobileServiceMux.getSingleton();
      if (localMobileServiceMux == null)
        return;
      this.sendAttempts = (1 + this.sendAttempts);
      PlainRequest localPlainRequest = new PlainRequest("g:log:ev", 1, getEventData());
      localPlainRequest.setListener(this);
      localMobileServiceMux.submitRequest(localPlainRequest, false);
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.masf.services.EventLogService
 * JD-Core Version:    0.6.2
 */