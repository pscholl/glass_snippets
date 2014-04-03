package com.google.android.speech.network;

import android.content.Context;
import android.net.SSLCertificateSocketFactory;
import android.net.SSLSessionCache;
import android.os.Build.VERSION;
import android.util.Log;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Supplier;
import com.google.wireless.voicesearch.proto.GstaticConfiguration.HttpServerInfo;
import com.google.wireless.voicesearch.proto.GstaticConfiguration.ServerInfo;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.Socket;
import java.net.URL;
import javax.annotation.Nullable;
import javax.net.SocketFactory;
import javax.net.ssl.SSLSocketFactory;

public class ConnectionFactoryImpl
  implements ConnectionFactory
{
  private static final String HEADER_USER_AGENT = "User-Agent";
  private static final byte[][] NPN_PROTOCOLS = new byte[1][];
  private static final String TAG = "ConnectionFactoryImpl";

  @Nullable
  private final Context mContext;
  private SocketFactory mPlainSocketFactory;
  private SSLSocketFactory mSSLSocketFactory;

  @Nullable
  private final Supplier<String> mUserAgentSupplier;

  static
  {
    NPN_PROTOCOLS[0] = { 118, 111, 105, 99, 101, 115, 101, 97, 114, 99, 104 };
  }

  @VisibleForTesting
  public ConnectionFactoryImpl()
  {
    this(null, null);
  }

  public ConnectionFactoryImpl(Context paramContext, Supplier<String> paramSupplier)
  {
    this.mContext = paramContext;
    this.mUserAgentSupplier = paramSupplier;
  }

  private void maybeInitSocketConnection(GstaticConfiguration.ServerInfo paramServerInfo)
  {
    try
    {
      int i;
      if (this.mPlainSocketFactory == null)
      {
        this.mPlainSocketFactory = SocketFactory.getDefault();
        i = paramServerInfo.getConnectionTimeoutMsec();
        if (this.mContext != null)
          break label51;
      }
      label51: for (SSLSessionCache localSSLSessionCache = null; ; localSSLSessionCache = new SSLSessionCache(this.mContext))
      {
        this.mSSLSocketFactory = SSLCertificateSocketFactory.getDefault(i, localSSLSessionCache);
        maybeSetNpnProtocols(this.mSSLSocketFactory);
        return;
      }
    }
    finally
    {
    }
  }

  private static void maybeSetNpnProtocols(SSLSocketFactory paramSSLSocketFactory)
  {
    if (((paramSSLSocketFactory instanceof SSLCertificateSocketFactory)) && (Build.VERSION.SDK_INT >= 16))
      ((SSLCertificateSocketFactory)paramSSLSocketFactory).setNpnProtocols(NPN_PROTOCOLS);
  }

  public HttpURLConnection openHttpConnection(GstaticConfiguration.HttpServerInfo paramHttpServerInfo)
    throws IOException
  {
    return openHttpConnection(paramHttpServerInfo, new URL(paramHttpServerInfo.getUrl()));
  }

  public HttpURLConnection openHttpConnection(GstaticConfiguration.HttpServerInfo paramHttpServerInfo, URL paramURL)
    throws IOException
  {
    HttpURLConnection localHttpURLConnection = (HttpURLConnection)paramURL.openConnection();
    localHttpURLConnection.setReadTimeout(paramHttpServerInfo.getReadTimeoutMsec());
    localHttpURLConnection.setConnectTimeout(paramHttpServerInfo.getConnectionTimeoutMsec());
    if (this.mUserAgentSupplier != null)
      localHttpURLConnection.addRequestProperty("User-Agent", (String)this.mUserAgentSupplier.get());
    if (paramHttpServerInfo.hasChunkSize())
    {
      localHttpURLConnection.setChunkedStreamingMode(paramHttpServerInfo.getChunkSize());
      return localHttpURLConnection;
    }
    localHttpURLConnection.setChunkedStreamingMode(1024);
    return localHttpURLConnection;
  }

  public Socket openSocket(GstaticConfiguration.ServerInfo paramServerInfo)
    throws IOException
  {
    maybeInitSocketConnection(paramServerInfo);
    String str = paramServerInfo.getHost();
    int i = paramServerInfo.getPort();
    if (paramServerInfo.getUseSsl())
      Log.i("ConnectionFactoryImpl", "Opening SSL connection: " + str + ":" + i);
    for (Socket localSocket = this.mSSLSocketFactory.createSocket(str, i); ; localSocket = this.mPlainSocketFactory.createSocket(str, i))
    {
      IoUtils.tagSocket(localSocket);
      localSocket.setSendBufferSize(paramServerInfo.getOutBufferSize());
      localSocket.setReceiveBufferSize(paramServerInfo.getInBufferSize());
      localSocket.setSoTimeout(paramServerInfo.getConnectionTimeoutMsec());
      return localSocket;
      Log.i("ConnectionFactoryImpl", "Opening TCP connection:" + str + ":" + i);
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.android.speech.network.ConnectionFactoryImpl
 * JD-Core Version:    0.6.2
 */