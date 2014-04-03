package com.google.glass.voice;

import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;

public class ConcurrentAudioInterface
{
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private boolean errorLogged;
  private NativeAudioInterfaceWrapper nativeAudioInterface;
  private boolean open;

  public ConcurrentAudioInterface(NativeAudioInterfaceWrapper paramNativeAudioInterfaceWrapper)
  {
    this.nativeAudioInterface = paramNativeAudioInterfaceWrapper;
  }

  public void close()
  {
    try
    {
      if (!this.open)
        logger.w("Native audio interface already closed; ignoring close() call.", new Object[0]);
      while (true)
      {
        return;
        this.nativeAudioInterface.nativeClose();
        logger.i("Closed audio interface.", new Object[0]);
        this.open = false;
      }
    }
    finally
    {
    }
  }

  public void open()
  {
    try
    {
      if (this.open)
        logger.w("Native audio interface already open; ignoring open() call.", new Object[0]);
      while (true)
      {
        return;
        this.nativeAudioInterface.nativeOpen();
        logger.i("Opened audio interface.", new Object[0]);
        this.open = true;
        this.errorLogged = false;
      }
    }
    finally
    {
    }
  }

  public int read(byte[] paramArrayOfByte)
  {
    try
    {
      int i;
      if (!this.open)
      {
        boolean bool = this.errorLogged;
        i = 0;
        if (!bool)
        {
          logger.w("Native audio interface not open; ignoring read() call; no further warnings will be printed until the interface is reopened.", new Object[0]);
          this.errorLogged = true;
        }
      }
      while (true)
      {
        return i;
        this.errorLogged = false;
        i = this.nativeAudioInterface.nativeRead(paramArrayOfByte);
        if (i <= 0)
        {
          logger.e("Failed read from native audio interface, assuming the interface is now closed.", new Object[0]);
          this.open = false;
        }
      }
    }
    finally
    {
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.ConcurrentAudioInterface
 * JD-Core Version:    0.6.2
 */