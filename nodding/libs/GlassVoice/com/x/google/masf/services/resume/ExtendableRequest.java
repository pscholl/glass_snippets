package com.x.google.masf.services.resume;

import com.x.google.masf.MobileServiceMux;
import com.x.google.masf.protocol.BodyPart;
import com.x.google.masf.protocol.HttpRequest;
import com.x.google.masf.protocol.Response;
import java.io.IOException;
import java.util.Vector;

public class ExtendableRequest extends HttpRequest
  implements ResumableRequest.Listener
{
  static final int ADD_BODY_PART = 0;
  static final int COMPLETE = 1;
  static final int DONE = 4;
  static final int ERROR = 5;
  static final int IDLE = 1;
  static final int NEW = 0;
  static final int PART_FAILED = 3;
  static final int PART_UPLOADED = 2;
  static final int SENDING = 2;
  static final int SENDING_METADATA = 3;
  private Exception exception;
  private boolean gotLastPart = false;
  private Listener listener;
  private String requestId;
  private Response response;
  private int runningLength;
  private ResumableRequest sendingRequest;
  private int sentParts;
  private String serviceUri;
  private int state;

  public ExtendableRequest()
  {
    init();
  }

  public ExtendableRequest(String paramString)
  {
    super(paramString);
    init();
  }

  public ExtendableRequest(String paramString, int paramInt)
  {
    super(paramString, paramInt);
    init();
  }

  private static void debug(String paramString)
  {
  }

  private ResumableRequest generateBodyRequest(BodyPart paramBodyPart, int paramInt)
  {
    ResumableRawRequest localResumableRawRequest = new ResumableRawRequest(paramBodyPart);
    localResumableRawRequest.setRequestType(paramInt);
    localResumableRawRequest.setRequestId(this.requestId);
    localResumableRawRequest.setListener(this);
    return localResumableRawRequest;
  }

  private ResumableRequest generateHeaderRequest()
    throws IOException
  {
    byte[] arrayOfByte1 = generateBodyPartCount();
    byte[] arrayOfByte2 = generatePayloadMetaData();
    byte[] arrayOfByte3 = generatePayloadHeader();
    byte[] arrayOfByte4 = getPayload();
    byte[] arrayOfByte5 = generateBlockHeader();
    byte[] arrayOfByte6 = new byte[arrayOfByte5.length + arrayOfByte3.length + arrayOfByte2.length + arrayOfByte4.length + arrayOfByte1.length];
    int i = 0;
    for (int j = 0; i < arrayOfByte5.length; j++)
    {
      arrayOfByte6[j] = arrayOfByte5[i];
      i++;
    }
    int k = 0;
    while (k < arrayOfByte3.length)
    {
      arrayOfByte6[j] = arrayOfByte3[k];
      k++;
      j++;
    }
    int m = 0;
    while (m < arrayOfByte2.length)
    {
      arrayOfByte6[j] = arrayOfByte2[m];
      m++;
      j++;
    }
    int n = 0;
    int i2;
    while (true)
    {
      int i1 = arrayOfByte4.length;
      i2 = 0;
      if (n >= i1)
        break;
      arrayOfByte6[j] = arrayOfByte4[n];
      n++;
      j++;
    }
    while (i2 < arrayOfByte1.length)
    {
      arrayOfByte6[j] = arrayOfByte1[i2];
      i2++;
      j++;
    }
    ResumableRawRequest localResumableRawRequest = new ResumableRawRequest(arrayOfByte6);
    localResumableRawRequest.setRequestType(3);
    localResumableRawRequest.setRequestId(this.requestId);
    localResumableRawRequest.setListener(this);
    return localResumableRawRequest;
  }

  private void init()
  {
    setBodyParts(new Vector());
    setPayload(new byte[0]);
    this.state = 0;
    this.gotLastPart = false;
    this.sentParts = 0;
    setBlockType(257);
  }

  private void requestComplete()
  {
    if (this.listener != null)
      this.listener.requestCompleted(this, this.response);
  }

  private void requestFailed()
  {
    if (this.listener != null)
      this.listener.requestFailed(this, this.exception);
  }

  // ERROR //
  public void addBodyPart(BodyPart paramBodyPart)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual 140	com/x/google/masf/services/resume/ExtendableRequest:getBodyParts	()Ljava/util/Vector;
    //   6: aload_1
    //   7: invokevirtual 144	java/util/Vector:addElement	(Ljava/lang/Object;)V
    //   10: aload_0
    //   11: aload_0
    //   12: getfield 146	com/x/google/masf/services/resume/ExtendableRequest:runningLength	I
    //   15: aload_1
    //   16: invokevirtual 152	com/x/google/masf/protocol/BodyPart:getStreamLength	()I
    //   19: iadd
    //   20: putfield 146	com/x/google/masf/services/resume/ExtendableRequest:runningLength	I
    //   23: aload_0
    //   24: monitorexit
    //   25: aload_0
    //   26: iconst_0
    //   27: invokevirtual 155	com/x/google/masf/services/resume/ExtendableRequest:advanceState	(I)V
    //   30: return
    //   31: astore_2
    //   32: aload_0
    //   33: monitorexit
    //   34: aload_2
    //   35: athrow
    //   36: astore_3
    //   37: goto -14 -> 23
    //
    // Exception table:
    //   from	to	target	type
    //   2	10	31	finally
    //   10	23	31	finally
    //   23	25	31	finally
    //   32	34	31	finally
    //   10	23	36	java/io/IOException
  }

  void advanceState(int paramInt)
  {
    ResumableRequest localResumableRequest = null;
    while (true)
    {
      try
      {
        switch (this.state)
        {
        default:
          debug("Invalid state: " + this.state);
          if (localResumableRequest != null)
          {
            MobileServiceMux.getSingleton().submitResumableRequest(localResumableRequest);
            this.sendingRequest = localResumableRequest;
          }
          return;
        case 3:
          if (paramInt == 2)
          {
            this.state = 4;
            requestComplete();
            localResumableRequest = null;
            continue;
          }
          break;
        case 2:
        case 1:
        case 0:
        case 5:
        case 4:
        }
      }
      finally
      {
      }
      localResumableRequest = null;
      if (paramInt == 3)
      {
        this.state = 5;
        requestFailed();
        localResumableRequest = null;
        continue;
        if (paramInt == 2)
        {
          this.state = 1;
          advanceState(0);
          return;
        }
        localResumableRequest = null;
        if (paramInt == 3)
        {
          this.state = 5;
          requestFailed();
          localResumableRequest = null;
          continue;
          if (getBodyParts().size() > this.sentParts)
          {
            localResumableRequest = generateBodyRequest((BodyPart)getBodyParts().elementAt(this.sentParts), 2);
            this.sentParts = (1 + this.sentParts);
            this.state = 2;
          }
          else
          {
            int k = getBodyParts().size();
            int m = this.sentParts;
            localResumableRequest = null;
            if (k == m)
            {
              boolean bool2 = this.gotLastPart;
              localResumableRequest = null;
              if (bool2)
              {
                try
                {
                  localResumableRequest = generateHeaderRequest();
                  this.state = 3;
                }
                catch (IOException localIOException2)
                {
                  debug("Exception generating header request [" + localIOException2 + "]");
                  this.exception = localIOException2;
                  this.state = 5;
                  requestFailed();
                }
                continue;
                if (getBodyParts().size() > this.sentParts)
                {
                  localResumableRequest = generateBodyRequest((BodyPart)getBodyParts().elementAt(this.sentParts), 1);
                  this.sentParts = (1 + this.sentParts);
                  this.state = 2;
                }
                else
                {
                  int i = getBodyParts().size();
                  int j = this.sentParts;
                  localResumableRequest = null;
                  if (i == j)
                  {
                    boolean bool1 = this.gotLastPart;
                    localResumableRequest = null;
                    if (bool1)
                    {
                      try
                      {
                        localResumableRequest = generateHeaderRequest();
                        this.state = 3;
                      }
                      catch (IOException localIOException1)
                      {
                        debug("Exception generating header request [" + localIOException1 + "]");
                        this.exception = localIOException1;
                        this.state = 5;
                        requestFailed();
                      }
                      continue;
                      debug("Error state");
                      localResumableRequest = null;
                      continue;
                      debug("Done state (shouldn't be seen)");
                      localResumableRequest = null;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  public void complete()
  {
    try
    {
      this.gotLastPart = true;
      advanceState(1);
      return;
    }
    finally
    {
    }
  }

  public void dispose()
  {
    try
    {
      debug("ResumeServiceRequest.dispose()");
      for (int i = 0; i < getBodyParts().size(); i++)
        ((BodyPart)getBodyParts().elementAt(i)).dispose();
      super.dispose();
      return;
    }
    finally
    {
    }
  }

  public String getRequestId()
  {
    return this.requestId;
  }

  int getState()
  {
    try
    {
      int i = this.state;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void requestCancelled(ResumableRequest paramResumableRequest)
  {
    if (paramResumableRequest == this.sendingRequest)
      this.listener.requestCancelled(this);
  }

  public void requestCompleted(ResumableRequest paramResumableRequest, Response paramResponse)
  {
    if (paramResumableRequest == this.sendingRequest)
    {
      this.response = paramResponse;
      advanceState(2);
    }
  }

  public void requestFailed(ResumableRequest paramResumableRequest, Exception paramException)
  {
    if (paramResumableRequest == this.sendingRequest)
    {
      if (paramException != null)
        debug("Exception [" + paramException + "] received for [" + paramResumableRequest + "]");
      this.exception = paramException;
      advanceState(3);
    }
  }

  public void requestProgress(ResumableRequest paramResumableRequest, long paramLong1, long paramLong2)
  {
    long l1;
    if (paramResumableRequest == this.sendingRequest)
      l1 = paramLong2 * this.runningLength;
    try
    {
      long l3 = paramResumableRequest.getStreamLength();
      if (l3 != 0L)
      {
        l2 = l1 / l3;
        this.listener.requestProgress(this, paramLong1, l2);
      }
      return;
    }
    catch (IOException localIOException)
    {
      while (true)
        long l2 = paramLong2;
    }
  }

  public void setListener(Listener paramListener)
  {
    this.listener = paramListener;
  }

  public void setRequestId(String paramString)
  {
    this.requestId = paramString;
  }

  public static abstract interface Listener
  {
    public abstract void requestCancelled(ExtendableRequest paramExtendableRequest);

    public abstract void requestCompleted(ExtendableRequest paramExtendableRequest, Response paramResponse);

    public abstract void requestFailed(ExtendableRequest paramExtendableRequest, Exception paramException);

    public abstract void requestProgress(ExtendableRequest paramExtendableRequest, long paramLong1, long paramLong2);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.masf.services.resume.ExtendableRequest
 * JD-Core Version:    0.6.2
 */