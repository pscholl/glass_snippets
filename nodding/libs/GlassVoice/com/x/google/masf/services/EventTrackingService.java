package com.x.google.masf.services;

import com.x.google.common.Config;
import com.x.google.common.io.HttpRequestDesc;
import com.x.google.common.io.protocol.ProtoBuf;
import com.x.google.common.util.text.TextUtil;
import com.x.google.debug.LogSource;
import com.x.google.masf.MobileServiceMux;
import com.x.google.masf.ServiceCallback;
import com.x.google.masf.protocol.PlainRequest;
import com.x.google.masf.protocol.Request;
import com.x.google.masf.protocol.Request.Listener;
import com.x.google.masf.protocol.Response;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

public class EventTrackingService
{
  private static final String DC = "DistributionChannel";
  private static final String EVENT_TRACKING_SERVICE_URI = "g:trk";
  private static final String INSTALL_NOTIFY = "MIDlet-Install-Notify";
  private static final String LOCALE = "DownloadLocale";
  private static final String LOG_EVENT_URI = "g:trk/log";
  private static final String SESSION_PARAM = "session";
  private static LogSource logger = LogSource.getLogSource(EventTrackingService.class);

  public static void trackActivation(int paramInt)
  {
    trackActivation(paramInt, null);
  }

  public static void trackActivation(int paramInt, ServiceCallback paramServiceCallback)
  {
    try
    {
      new EventTrackingRequest(paramInt, paramServiceCallback).logActivation();
      return;
    }
    catch (IOException localIOException)
    {
      do
        logger.warning(localIOException.getMessage());
      while (paramServiceCallback == null);
      paramServiceCallback.onRequestComplete(localIOException);
    }
  }

  private static class EventTrackingRequest
    implements Request.Listener
  {
    private byte[] requestData;
    private final ServiceCallback serviceCallback;

    public EventTrackingRequest(int paramInt, ServiceCallback paramServiceCallback)
      throws IOException
    {
      this.serviceCallback = paramServiceCallback;
      ProtoBuf localProtoBuf = buildActivationProtoBuf(paramInt);
      try
      {
        ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
        localProtoBuf.outputTo(localByteArrayOutputStream);
        this.requestData = localByteArrayOutputStream.toByteArray();
        return;
      }
      catch (IOException localIOException)
      {
        EventTrackingService.logger.severe("logActivation() Error reading protoBuf", localIOException);
      }
    }

    private ProtoBuf buildActivationProtoBuf(int paramInt)
      throws IOException
    {
      ProtoBuf localProtoBuf1 = new ProtoBuf(TrackerServiceMessageTypes.EVENT_LOGGING_REQUEST);
      localProtoBuf1.setLong(1, getSessionId());
      ProtoBuf localProtoBuf2 = new ProtoBuf(TrackerServiceMessageTypes.EVENT);
      localProtoBuf2.setInt(1, 11);
      localProtoBuf2.setLong(2, System.currentTimeMillis());
      localProtoBuf2.setInt(8, paramInt);
      localProtoBuf2.setString(6, Config.getCarrier());
      setValue(localProtoBuf2, 4, Config.getInstance().getCountryCode());
      setProperty(localProtoBuf2, 12, "DistributionChannel");
      setProperty(localProtoBuf2, 5, "DownloadLocale");
      localProtoBuf1.setProtoBuf(2, localProtoBuf2);
      return localProtoBuf1;
    }

    private long getSessionId()
      throws IOException
    {
      String str1 = Config.getInstance().getAppProperty("MIDlet-Install-Notify");
      if (str1 != null)
      {
        String str2 = new HttpRequestDesc(str1).getParam("session");
        if (!TextUtil.isEmpty(str2))
          try
          {
            long l = Long.parseLong(str2);
            return l;
          }
          catch (NumberFormatException localNumberFormatException)
          {
          }
      }
      throw new IOException("getSessionId() could not find a sessionID.");
    }

    private void setProperty(ProtoBuf paramProtoBuf, int paramInt, String paramString)
    {
      String str = Config.getInstance().getAppProperty(paramString);
      if (!TextUtil.isEmpty(str))
        paramProtoBuf.setString(paramInt, str);
    }

    private void setValue(ProtoBuf paramProtoBuf, int paramInt, String paramString)
    {
      if (!TextUtil.isEmpty(paramString))
        paramProtoBuf.setString(paramInt, paramString);
    }

    public void logActivation()
    {
      MobileServiceMux localMobileServiceMux = MobileServiceMux.getSingleton();
      PlainRequest localPlainRequest = new PlainRequest("g:trk/log", 0, this.requestData);
      localPlainRequest.setListener(this);
      localMobileServiceMux.submitRequest(localPlainRequest, false);
    }

    public void requestCompleted(Request paramRequest, Response paramResponse)
    {
      if (paramResponse != null)
      {
        int i = paramResponse.getStatusCode();
        EventTrackingService.logger.fine("EventTrackingService.requestComplete: status = " + i);
        if (this.serviceCallback != null)
          this.serviceCallback.onRequestComplete(new Integer(i));
      }
    }

    public void requestFailed(Request paramRequest, Exception paramException)
    {
      EventTrackingService.logger.warning("Failed to register application activation.");
      if (this.serviceCallback != null)
        this.serviceCallback.onRequestComplete(paramException);
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.masf.services.EventTrackingService
 * JD-Core Version:    0.6.2
 */