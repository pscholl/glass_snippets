package com.x.google.masf.services.resume;

import com.x.google.common.Log;
import com.x.google.common.io.SequenceInputStream;
import com.x.google.common.task.Task;
import com.x.google.common.task.TaskRunner;
import com.x.google.masf.ConnectionException;
import com.x.google.masf.MobileServiceMux;
import com.x.google.masf.protocol.HeaderRequest;
import com.x.google.masf.protocol.ProtocolReader;
import com.x.google.masf.protocol.Request;
import com.x.google.masf.protocol.Request.Listener;
import com.x.google.masf.protocol.Response;
import java.io.DataInputStream;
import java.io.IOException;
import java.util.Vector;

public class WindowResumeService extends ResumeService
{
  private static final int DEFAULT_CHUNK_SIZE = 16384;
  private static final int MINIMUM_BANDWIDTH_TIME = 100;
  private static final int MIN_CHUNK_SIZE = 4096;
  private static final int RESPONSE_IGNORE_COUNT = 2;
  private static final int RESPONSE_QUIET_COUNT = 4;
  private Vector activeQueue = new Vector();
  private int chunkSize = 16384;
  private HeaderRequest header;
  private Task mainTask;
  private Object mutex = new Object();
  private MobileServiceMux mux;
  private TaskRunner runner;

  public WindowResumeService(MobileServiceMux paramMobileServiceMux, TaskRunner paramTaskRunner, HeaderRequest paramHeaderRequest)
  {
    this.mux = paramMobileServiceMux;
    this.runner = paramTaskRunner;
    this.header = paramHeaderRequest;
    this.mainTask = new Task(paramTaskRunner, new MainTask(null));
  }

  private static void debug(String paramString)
  {
    Log.log("MASF", paramString);
  }

  public void cancelRequest(ResumableRequest paramResumableRequest)
  {
    debug("WindowResumeService.cancelRequest(" + paramResumableRequest + ")");
    Object localObject1 = this.mutex;
    for (int i = 0; ; i++)
      try
      {
        if (i < this.activeQueue.size())
        {
          if (((Control)this.activeQueue.elementAt(i)).request == paramResumableRequest)
          {
            this.activeQueue.removeElementAt(i);
            new Task(this.runner, new CallbackTask(paramResumableRequest)).schedule();
          }
        }
        else
          return;
      }
      finally
      {
      }
  }

  public void disposeRequest(ResumableRequest paramResumableRequest)
  {
    int i = paramResumableRequest.getRequestType();
    if ((i == 0) || (i == 3))
      removeClientTicket(paramResumableRequest.getRequestId());
  }

  public int getChunkSize()
  {
    return this.chunkSize;
  }

  public void setChunkSize(int paramInt)
  {
    this.chunkSize = (4096 * (1 + (paramInt - 1) / 4096));
  }

  public void submitRequest(ResumableRequest paramResumableRequest)
  {
    debug("WindowResumeService.submitRequest(" + paramResumableRequest + ")");
    Object localObject1 = this.mutex;
    for (int i = 0; ; i++)
      try
      {
        if (i >= this.activeQueue.size())
          break;
        if (((Control)this.activeQueue.elementAt(i)).request == paramResumableRequest)
          throw new IllegalArgumentException("request is already submitted");
      }
      finally
      {
      }
    this.activeQueue.addElement(new Control(paramResumableRequest));
    this.mainTask.schedule();
  }

  private static class CallbackTask
    implements Runnable
  {
    private static final int TYPE_CANCELLED = 1;
    private static final int TYPE_COMPLETED = 2;
    private static final int TYPE_FAILED = 3;
    private static final int TYPE_PROGRESS = 4;
    private Exception exception;
    private long progress;
    private ResumableRequest request;
    private Response response;
    private long time;
    private int type;

    public CallbackTask(ResumableRequest paramResumableRequest)
    {
      this.request = paramResumableRequest;
      this.type = 1;
    }

    public CallbackTask(ResumableRequest paramResumableRequest, long paramLong1, long paramLong2)
    {
      this.request = paramResumableRequest;
      this.progress = paramLong1;
      this.time = paramLong2;
      this.type = 4;
    }

    public CallbackTask(ResumableRequest paramResumableRequest, Response paramResponse)
    {
      this.request = paramResumableRequest;
      this.response = paramResponse;
      this.type = 2;
    }

    public CallbackTask(ResumableRequest paramResumableRequest, Exception paramException)
    {
      this.request = paramResumableRequest;
      this.exception = paramException;
      this.type = 3;
    }

    public void run()
    {
      ResumableRequest.Listener localListener = this.request.getListener();
      if (localListener == null)
        return;
      switch (this.type)
      {
      default:
        return;
      case 1:
        localListener.requestCancelled(this.request);
        return;
      case 2:
        localListener.requestCompleted(this.request, this.response);
        return;
      case 3:
        localListener.requestFailed(this.request, this.exception);
        return;
      case 4:
      }
      localListener.requestProgress(this.request, this.progress, this.time);
    }
  }

  private class Chunk
  {
    int length;
    int offset;

    public Chunk(int paramInt1, int arg3)
    {
      int i;
      WindowResumeService.debug("WindowResumeService.Chunk(" + paramInt1 + ", " + i + ")");
      this.offset = paramInt1;
      this.length = i;
    }
  }

  class Control
  {
    int bandwidthEstimate;
    Vector chunkVector;
    String clientTicket;
    boolean done = false;
    int errorCount;
    int errorMaximum;
    Exception exception;
    int oldStreamOffset;
    long oldTimestamp;
    final ResumableRequest request;
    DataInputStream requestStream;
    Vector requestVector = new Vector();
    Response response;
    int responseCount;
    String serverTicket;
    int streamLength;
    int streamOffset;
    long timeEstimate;
    int windowCurrent = 1;
    int windowMaximum;

    public Control(ResumableRequest arg2)
    {
      Object localObject;
      this.request = localObject;
      try
      {
        this.clientTicket = localObject.getRequestId();
        this.serverTicket = WindowResumeService.this.getServerTicket(this.clientTicket);
        this.windowMaximum = localObject.getMaximumWindowSize();
        this.errorMaximum = localObject.getMaximumErrorCount();
        this.streamLength = localObject.getStreamLength();
        if ((localObject.getRequestType() == 0) || (localObject.getRequestType() == 3))
          this.streamLength += WindowResumeService.this.header.getStreamLength();
        return;
      }
      catch (IOException localIOException)
      {
        this.exception = localIOException;
        return;
      }
      catch (RuntimeException localRuntimeException)
      {
        this.exception = localRuntimeException;
      }
    }

    private ResumeServiceRequest createRequest()
    {
      ResumeServiceRequest localResumeServiceRequest = new ResumeServiceRequest();
      localResumeServiceRequest.setListener(new WindowResumeService.Listener(WindowResumeService.this, null));
      localResumeServiceRequest.setSentCount(0);
      return localResumeServiceRequest;
    }

    private ResumeServiceRequest[] createRequests(int paramInt)
      throws IOException
    {
      WindowResumeService.debug("WindowResumeService.Control.createRequest(" + paramInt + ")");
      ResumeServiceRequest[] arrayOfResumeServiceRequest2;
      if (this.serverTicket == null)
      {
        WindowResumeService.debug("WindowResumeService.Control.createRequest(): serverTicket == null");
        int n = this.requestVector.size();
        arrayOfResumeServiceRequest2 = null;
        if (n == 0)
        {
          int i1 = Math.min(this.streamLength, WindowResumeService.this.chunkSize);
          ResumeServiceRequest localResumeServiceRequest3 = createRequest();
          localResumeServiceRequest3.setProperty("Length", Integer.toString(this.streamLength));
          localResumeServiceRequest3.setPayload(0, getRequestPayload(0, i1));
          localResumeServiceRequest3.setRequestType(this.request.getRequestType());
          arrayOfResumeServiceRequest2 = new ResumeServiceRequest[1];
          arrayOfResumeServiceRequest2[0] = localResumeServiceRequest3;
        }
      }
      int m;
      do
      {
        return arrayOfResumeServiceRequest2;
        if (this.chunkVector != null)
          break;
        WindowResumeService.debug("WindowResumeService.Control.createRequest(): chunkVector == null");
        m = this.requestVector.size();
        arrayOfResumeServiceRequest2 = null;
      }
      while (m != 0);
      ResumeServiceRequest localResumeServiceRequest2 = createRequest();
      localResumeServiceRequest2.setServerTicket(this.serverTicket);
      localResumeServiceRequest2.setProperty("Length", Integer.toString(this.streamLength));
      localResumeServiceRequest2.setPayload(0, null);
      localResumeServiceRequest2.setRequestType(this.request.getRequestType());
      return new ResumeServiceRequest[] { localResumeServiceRequest2 };
      WindowResumeService.debug("WindowResumeService.Control.createRequest(): chunkVector != null");
      ResumeServiceRequest[] arrayOfResumeServiceRequest1 = new ResumeServiceRequest[paramInt];
      int i = 0;
      if ((i < paramInt) && (this.chunkVector.size() > 0))
      {
        WindowResumeService.Chunk localChunk = (WindowResumeService.Chunk)this.chunkVector.firstElement();
        int j = localChunk.offset;
        int k = Math.min(localChunk.length, WindowResumeService.this.chunkSize);
        if (localChunk.length > k)
        {
          localChunk.offset = (k + localChunk.offset);
          localChunk.length -= k;
        }
        while (true)
        {
          ResumeServiceRequest localResumeServiceRequest1 = createRequest();
          localResumeServiceRequest1.setServerTicket(this.serverTicket);
          localResumeServiceRequest1.setPayload(j, getRequestPayload(j, k));
          arrayOfResumeServiceRequest1[i] = localResumeServiceRequest1;
          i++;
          break;
          this.chunkVector.removeElementAt(0);
        }
      }
      return arrayOfResumeServiceRequest1;
    }

    private byte[] getRequestPayload(int paramInt1, int paramInt2)
      throws IOException
    {
      WindowResumeService.debug("WindowResumeService.Control.getRequestPayload(" + paramInt1 + ", " + paramInt2 + ")");
      if (paramInt1 < this.streamOffset)
      {
        this.requestStream.close();
        this.requestStream = null;
      }
      if (this.requestStream == null)
      {
        this.streamOffset = 0;
        if ((this.request.getRequestType() != 0) && (this.request.getRequestType() != 3))
          break label157;
        this.requestStream = new DataInputStream(new SequenceInputStream(WindowResumeService.this.header.getInputStream(), this.request.getInputStream()));
      }
      while (paramInt1 > this.streamOffset)
      {
        this.streamOffset += this.requestStream.skipBytes(paramInt1 - this.streamOffset);
        continue;
        label157: this.requestStream = new DataInputStream(this.request.getInputStream());
      }
      byte[] arrayOfByte = new byte[paramInt2];
      this.requestStream.readFully(arrayOfByte);
      this.streamOffset = (paramInt2 + this.streamOffset);
      return arrayOfByte;
    }

    private void updateProgress()
    {
      updateProgress(System.currentTimeMillis());
    }

    int calculateBandwidthEstimate(int paramInt1, int paramInt2)
    {
      if (paramInt2 == 0)
        paramInt2 = 1;
      int i = paramInt1 * 1000 / paramInt2;
      int j = this.bandwidthEstimate + (i - this.bandwidthEstimate >> 2);
      WindowResumeService.debug("WindowResumeService.Control.run(): bandwidthEstimate = " + j);
      return j;
    }

    long calculateTimeEstimate(long paramLong1, long paramLong2)
    {
      if (paramLong1 == 0L)
        return -1L;
      return paramLong2 / paramLong1;
    }

    int getBandwidthEstimate()
    {
      return this.bandwidthEstimate;
    }

    public boolean processResponse(ResumeServiceResponse paramResumeServiceResponse)
    {
      int i = 0;
      WindowResumeService.debug("WindowResumeService.Control.processResponse(" + paramResumeServiceResponse + ")");
      if (paramResumeServiceResponse.hasException())
      {
        WindowResumeService.debug("WindowResumeService.Control.processResponse(): exception != null");
        return false;
      }
      int j = paramResumeServiceResponse.getStatusCode();
      WindowResumeService.debug("WindowResumeService.Control.processResponse(): statusCode == " + j);
      switch (j)
      {
      case -3:
      case -2:
      case -1:
      case 1:
      default:
        WindowResumeService.debug("WindowResumeService.Control.processResponse(): default");
        return false;
      case 0:
      case 3:
        WindowResumeService.debug("WindowResumeService.Control.processResponse(): statusCode == OK (" + j + ")");
        if (this.serverTicket == null)
        {
          WindowResumeService.debug("WindowResumeService.Control.processResponse(): serverTicket == null");
          this.serverTicket = paramResumeServiceResponse.getServerTicket();
          WindowResumeService.this.addClientTicket(this.clientTicket, this.serverTicket);
        }
        int k = paramResumeServiceResponse.getMissingChunkCount();
        if ((k == 0) && (j == 0))
          WindowResumeService.debug("WindowResumeService.Control.processResponse(): missingChunkCount == 0");
        do
        {
          try
          {
            this.response = new ProtocolReader(paramResumeServiceResponse.getDataInputStream()).getNextResponse();
            this.done = true;
            return true;
          }
          catch (IOException localIOException)
          {
            while (true)
              this.exception = localIOException;
          }
          WindowResumeService.debug("WindowResumeService.Control.processResponse(): missingChunkCount > 0");
        }
        while (this.chunkVector != null);
        this.chunkVector = new Vector();
        int[] arrayOfInt1 = paramResumeServiceResponse.getMissingChunkOffsets();
        int[] arrayOfInt2 = paramResumeServiceResponse.getMissingChunkLengths();
        while (i < k)
        {
          this.chunkVector.addElement(new WindowResumeService.Chunk(WindowResumeService.this, arrayOfInt1[i], arrayOfInt2[i]));
          i++;
        }
      case 2:
        WindowResumeService.debug("WindowResumeServiceControl.processResponse(): statusCode == CONTINUE (2)");
        this.done = true;
        return true;
      case -4:
        WindowResumeService.debug("WindowResumeService.Control.processResponse(): statusCode == BAD TICKET (-4)");
        WindowResumeService.this.removeClientTicket(this.clientTicket);
        this.serverTicket = null;
        this.chunkVector = null;
        return true;
      case -5:
      }
      WindowResumeService.debug("WindowResumeService.Control.processResponse(): statusCode == CANNOT_EXTEND (-5)");
      return false;
    }

    void resetBandwidthEstimate()
    {
      this.bandwidthEstimate = 0;
    }

    public void run()
    {
      while (true)
      {
        int k;
        ResumeServiceResponse localResumeServiceResponse;
        try
        {
          WindowResumeService.debug("WindowResumeService.Control.run()");
          WindowResumeService.debug("WindowResumeService.Control.run(): requestVector.size() == " + this.requestVector.size());
          i = this.requestVector.size();
          if (i <= 0)
            break label261;
          k = i - 1;
          WindowResumeService.debug("WindowResumeService.Control.run(): i == " + k);
          ResumeServiceRequest localResumeServiceRequest2 = (ResumeServiceRequest)this.requestVector.elementAt(k);
          localResumeServiceResponse = localResumeServiceRequest2.getResponse();
          if (localResumeServiceResponse == null)
            break label611;
          this.responseCount = (1 + this.responseCount);
          if (processResponse(localResumeServiceResponse))
          {
            if (this.windowCurrent < this.windowMaximum)
            {
              this.windowCurrent = (1 + this.windowCurrent);
              this.errorCount = 0;
            }
            this.requestVector.removeElementAt(k);
            localResumeServiceResponse.dispose();
            break label611;
          }
          this.errorCount = (1 + this.errorCount);
          if (this.errorCount < this.errorMaximum)
          {
            localResumeServiceRequest2.setResponse(null);
            WindowResumeService.this.mux.submitRequest(localResumeServiceRequest2);
            continue;
          }
        }
        finally
        {
        }
        if (localResumeServiceResponse.hasException());
        for (this.exception = localResumeServiceResponse.getException(); ; this.exception = new ConnectionException(localResumeServiceResponse.getStatusCode()))
        {
          this.requestVector.removeElementAt(k);
          break;
        }
        label261: updateProgress();
        if (this.exception != null)
          WindowResumeService.debug("WindowResumeService.Control.run(): exception != null");
        while (true)
        {
          synchronized (WindowResumeService.this.mutex)
          {
            WindowResumeService.this.activeQueue.removeElement(this);
            new Task(WindowResumeService.this.runner, new WindowResumeService.CallbackTask(this.request, this.exception)).schedule();
            WindowResumeService.this.mainTask.schedule();
            return;
          }
          if (this.done)
          {
            WindowResumeService.debug("WindowResumeService.Control.run(): done == true");
            synchronized (WindowResumeService.this.mutex)
            {
              WindowResumeService.this.activeQueue.removeElement(this);
              new Task(WindowResumeService.this.runner, new WindowResumeService.CallbackTask(this.request, this.response)).schedule();
              WindowResumeService.this.mainTask.schedule();
            }
          }
          WindowResumeService.debug("WindowResumeService.Control.run(): queuing requests");
          if ((this.chunkVector != null) && (this.chunkVector.size() == 0) && (this.requestVector.size() == 0))
          {
            WindowResumeService.debug("WindowResumeService.Control.run(): resetting chunkVector");
            this.chunkVector = null;
          }
          try
          {
            ResumeServiceRequest[] arrayOfResumeServiceRequest = createRequests(this.windowCurrent - this.requestVector.size());
            if (arrayOfResumeServiceRequest != null)
              for (int j = 0; j < arrayOfResumeServiceRequest.length; j++)
              {
                ResumeServiceRequest localResumeServiceRequest1 = arrayOfResumeServiceRequest[j];
                if (localResumeServiceRequest1 != null)
                {
                  WindowResumeService.debug("WindowResumeService.Control.run(): request = " + localResumeServiceRequest1);
                  this.requestVector.addElement(localResumeServiceRequest1);
                  WindowResumeService.this.mux.submitRequest(localResumeServiceRequest1);
                }
              }
          }
          catch (IOException localIOException)
          {
            this.exception = localIOException;
            WindowResumeService.this.mainTask.schedule();
          }
        }
        label611: int i = k;
      }
    }

    void updateProgress(long paramLong)
    {
      WindowResumeService.debug("WindowResumeService.Control.updateProgress()");
      int i = (int)(paramLong - this.oldTimestamp);
      if (this.oldTimestamp == 0L)
      {
        this.oldTimestamp = paramLong;
        i = 0;
      }
      if ((i >= 100) && (this.responseCount > 2))
      {
        if (this.streamOffset > this.oldStreamOffset)
        {
          this.bandwidthEstimate = calculateBandwidthEstimate(this.streamOffset - this.oldStreamOffset, i);
          this.timeEstimate = calculateTimeEstimate(this.bandwidthEstimate, this.streamLength - this.streamOffset);
        }
        this.oldStreamOffset = this.streamOffset;
        this.oldTimestamp = paramLong;
      }
      if (this.responseCount > 4)
        new Task(WindowResumeService.this.runner, new WindowResumeService.CallbackTask(this.request, this.streamOffset, this.timeEstimate)).schedule();
    }
  }

  private class Listener
    implements Request.Listener
  {
    private Listener()
    {
    }

    public void requestCompleted(Request paramRequest, Response paramResponse)
    {
      WindowResumeService.debug("WindowResumeService.Listener.requestCompleted(" + paramRequest + ", " + paramResponse + ")");
      ResumeServiceRequest localResumeServiceRequest = (ResumeServiceRequest)paramRequest;
      try
      {
        WindowResumeService.debug("WindowResumeService.Listener.requestCompleted(): try block");
        localResumeServiceRequest.setResponse(new ResumeServiceResponse(paramResponse));
        return;
      }
      catch (IOException localIOException)
      {
        WindowResumeService.debug("WindowResumeService.Listener.requestCompleted(): catch block");
        localResumeServiceRequest.setResponse(new ResumeServiceResponse(localIOException));
        return;
      }
      finally
      {
        WindowResumeService.debug("WindowResumeService.Listener.requestCompleted(): finally block");
        WindowResumeService.this.mainTask.schedule();
      }
    }

    public void requestFailed(Request paramRequest, Exception paramException)
    {
      WindowResumeService.debug("WindowResumeService.Listener.requestFailed(" + paramRequest + ", " + paramException + ")");
      try
      {
        WindowResumeService.debug("WindowResumeService.Listener.requestFailed(): try block");
        ((ResumeServiceRequest)paramRequest).setResponse(new ResumeServiceResponse(paramException));
        return;
      }
      finally
      {
        WindowResumeService.debug("WindowResumeService.Listener.requestFailed(): finally block");
        WindowResumeService.this.mainTask.schedule();
      }
    }
  }

  private class MainTask
    implements Runnable
  {
    private MainTask()
    {
    }

    public void run()
    {
      synchronized (WindowResumeService.this.mutex)
      {
        int i = WindowResumeService.this.activeQueue.size();
        WindowResumeService.Control localControl = null;
        if (i > 0)
          localControl = (WindowResumeService.Control)WindowResumeService.this.activeQueue.elementAt(0);
        if (localControl != null)
          localControl.run();
        return;
      }
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.masf.services.resume.WindowResumeService
 * JD-Core Version:    0.6.2
 */