package com.google.android.speech.network;

import com.google.wireless.voicesearch.proto.GstaticConfiguration.HttpServerInfo;
import com.google.wireless.voicesearch.proto.GstaticConfiguration.ServerInfo;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.Socket;
import java.net.URL;

public abstract interface ConnectionFactory
{
  public abstract HttpURLConnection openHttpConnection(GstaticConfiguration.HttpServerInfo paramHttpServerInfo)
    throws IOException;

  public abstract HttpURLConnection openHttpConnection(GstaticConfiguration.HttpServerInfo paramHttpServerInfo, URL paramURL)
    throws IOException;

  public abstract Socket openSocket(GstaticConfiguration.ServerInfo paramServerInfo)
    throws IOException;
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.network.ConnectionFactory
 * JD-Core Version:    0.6.2
 */