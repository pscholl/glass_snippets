package com.google.glass.voice.network;

import android.location.Location;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import com.google.android.speech.helper.SpeechLocationHelper;
import com.google.common.collect.Maps;
import com.google.glass.build.BuildHelper;
import com.google.glass.location.LocationManagerHelper;
import com.google.glass.logging.FormattingLogger;
import com.google.glass.logging.FormattingLoggers;
import com.google.glass.net.UserAgent;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import location.unified.LocationDescriptorProto.FeatureIdProto;
import location.unified.LocationDescriptorProto.LatLng;
import location.unified.LocationDescriptorProto.LocationDescriptor;

public class SearchQueryBuilder
{
  public static final String DEFAULT_HOST = "www.google.com";
  public static final String DEFAULT_PATH = "/search";
  public static final String HEADER_COOKIE = "Cookie";
  public static final String HEADER_DEVELOPER_KEY = "X-Developer-Key";
  public static final String HEADER_HOST = "Host";
  public static final String HEADER_OAUTH_AUTHORIZATION = "Authorization";
  public static final String HEADER_USER_AGENT = "User-Agent";
  public static final String HEADER_X_GEO = "X-Geo";
  public static final String HTTP = "http://";
  public static final String HTTPS = "https://";
  public static final String PARAM_ANDROID_COUNTRY_CODE = "gcc";
  public static final String PARAM_CLIENT_DEFAULT_VALUE = "glass";
  public static final String PARAM_CLIENT_ID = "client";
  public static final String PARAM_COMM_LAYER_TRANSPORT = "tch";
  public static final String PARAM_COMM_LAYER_TRANSPORT_DEFAULT_VALUE = "6";
  public static final String PARAM_GEOLOCATION = "gl";
  public static final String PARAM_HTML_LANGUAGE = "hl";
  public static final String PARAM_INPUT_METHOD = "inm";
  public static final String PARAM_INPUT_METHOD_DEFAULT_VALUE = "vs";
  public static final String PARAM_NO_JESR = "noj";
  public static final String PARAM_NO_JESR_DEFAULT_VALUE = "1";
  public static final String PARAM_QUERY = "q";
  public static final String PARAM_VERSION = "v";
  public static final String SANDBOX_HOST = ".sandbox.google.com";
  public static final String SEARCH_AGENT = "GlassSearch/" + SEARCH_VERSION_NUMBER;
  public static final Double SEARCH_VERSION_NUMBER;
  private static final FormattingLogger logger = FormattingLoggers.getContextLogger();
  private Map<String, String> cgiParameters = Maps.newHashMap();
  private String host = "www.google.com";
  private String path = "/search";

  static
  {
    SEARCH_VERSION_NUMBER = Double.valueOf(1.4D);
  }

  public SearchQueryBuilder()
  {
    setStandardParameters();
  }

  public SearchQueryBuilder(String paramString)
  {
    setStandardParameters();
    setQuery(paramString);
  }

  public static String getUserAgent()
  {
    return UserAgent.get() + " " + SEARCH_AGENT;
  }

  private void setStandardParameters()
  {
    setParam("inm", "vs");
    setParam("client", "glass");
    setParam("noj", "1");
    setParam("gcc", Locale.getDefault().getCountry().toLowerCase());
    String str = "" + SEARCH_VERSION_NUMBER;
    if (!BuildHelper.isUser())
      str = str + "d";
    setParam("v", str);
  }

  public void addTransportParams()
  {
    setParam("tch", "6");
  }

  public Uri buildUri()
  {
    return Uri.parse(toString());
  }

  public String getCgiParameterString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = this.cgiParameters.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localStringBuilder.append('&').append((String)localEntry.getKey());
      if (localEntry.getValue() != null)
        localStringBuilder.append('=').append((String)localEntry.getValue());
    }
    return localStringBuilder.toString();
  }

  public Map<String, String> getCgiParameters()
  {
    return this.cgiParameters;
  }

  public Map<String, String> getHttpHeaders(SpeechLocationHelper paramSpeechLocationHelper)
  {
    HashMap localHashMap = Maps.newHashMap();
    setHttpHeader(localHashMap, "User-Agent", getUserAgent());
    String str = paramSpeechLocationHelper.getXGeoLocation();
    if (!TextUtils.isEmpty(str))
      setHttpHeader(localHashMap, "X-Geo", str);
    setHttpHeader(localHashMap, "Host", this.host);
    return localHashMap;
  }

  public void setHost(String paramString)
  {
    this.host = paramString;
  }

  public void setHttpHeader(Map<String, String> paramMap, String paramString1, String paramString2)
  {
    paramMap.remove(paramString1);
    paramMap.put(paramString1, paramString2);
  }

  public void setParam(String paramString1, String paramString2)
  {
    try
    {
      this.cgiParameters.remove(paramString1);
      this.cgiParameters.put(URLEncoder.encode(paramString1, "UTF-8"), URLEncoder.encode(paramString2, "UTF-8"));
      return;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      logger.e(localUnsupportedEncodingException, "UTF-8 is unsupported?  Really?", new Object[0]);
    }
  }

  public void setPath(String paramString)
  {
    this.path = paramString;
  }

  public void setQuery(String paramString)
  {
    setParam("q", paramString);
  }

  public void setSandboxHost(String paramString)
  {
    setHost(paramString + ".sandbox.google.com");
  }

  public String toString()
  {
    return "https://" + this.host + this.path + "?" + getCgiParameterString();
  }

  public static class LocationHelperImpl
    implements SpeechLocationHelper
  {
    private static final double E7 = 10000000.0D;
    private static final String LOCATION_PREFIX = "w ";
    private static final double MILLIMETERS_IN_A_METER = 1000.0D;
    private final LocationManagerHelper locationManagerHelper;

    public LocationHelperImpl(LocationManagerHelper paramLocationManagerHelper)
    {
      this.locationManagerHelper = paramLocationManagerHelper;
    }

    public static String getXGeoLocation(Location paramLocation)
    {
      LocationDescriptorProto.LocationDescriptor localLocationDescriptor = new LocationDescriptorProto.LocationDescriptor();
      LocationDescriptorProto.LatLng localLatLng = new LocationDescriptorProto.LatLng();
      localLocationDescriptor.setRole(1);
      localLocationDescriptor.setProducer(12);
      localLatLng.setLatitudeE7((int)Math.round(10000000.0D * paramLocation.getLatitude()));
      localLatLng.setLongitudeE7((int)Math.round(10000000.0D * paramLocation.getLongitude()));
      localLocationDescriptor.setLatlng(localLatLng);
      long l = paramLocation.getTime();
      localLocationDescriptor.setTimestamp(TimeUnit.MILLISECONDS.toMicros(l));
      if (paramLocation.hasAccuracy())
        localLocationDescriptor.setRadius((float)(1000.0D * paramLocation.getAccuracy()));
      Bundle localBundle = paramLocation.getExtras();
      if (localBundle != null)
      {
        if (localBundle.containsKey("levelId"))
        {
          LocationDescriptorProto.FeatureIdProto localFeatureIdProto = parseFeatureId(localBundle.getString("levelId"));
          if (localFeatureIdProto != null)
            localLocationDescriptor.setLevelFeatureId(localFeatureIdProto);
        }
        if (localBundle.containsKey("levelNumberE3"))
          localLocationDescriptor.setLevelNumber(localBundle.getInt("levelNumberE3") / 1000.0F);
      }
      return "w " + Base64.encodeToString(localLocationDescriptor.toByteArray(), 10);
    }

    private static boolean isFirstBitSet(String paramString)
    {
      int i = paramString.length();
      boolean bool = false;
      if (i == 16)
      {
        int j = Integer.parseInt(String.valueOf(paramString.charAt(0)), 16);
        bool = false;
        if (j > 7)
          bool = true;
      }
      return bool;
    }

    private static String maskFirstBit(String paramString)
      throws NumberFormatException
    {
      int i = Integer.parseInt(String.valueOf(paramString.charAt(0)), 16);
      return String.valueOf(i & 0x7) + paramString.substring(1);
    }

    private static LocationDescriptorProto.FeatureIdProto parseFeatureId(String paramString)
    {
      if (paramString == null)
      {
        SearchQueryBuilder.logger.e("null FeatureId", new Object[0]);
        return null;
      }
      String[] arrayOfString = paramString.split(":");
      if ((arrayOfString.length == 2) && (arrayOfString[0].startsWith("0x")) && (arrayOfString[1].startsWith("0x")))
        try
        {
          LocationDescriptorProto.FeatureIdProto localFeatureIdProto = new LocationDescriptorProto.FeatureIdProto();
          localFeatureIdProto.setCellId(parseHexUnsignedLong(arrayOfString[0].substring(2)));
          localFeatureIdProto.setFprint(parseHexUnsignedLong(arrayOfString[1].substring(2)));
          return localFeatureIdProto;
        }
        catch (NumberFormatException localNumberFormatException)
        {
          SearchQueryBuilder.logger.e(localNumberFormatException, "Invalid FeatureId: %s", new Object[] { paramString });
          return null;
        }
      SearchQueryBuilder.logger.e("Invalid FeatureId: %s", new Object[] { paramString });
      return null;
    }

    public static long parseHexUnsignedLong(String paramString)
      throws NumberFormatException
    {
      if (isFirstBitSet(paramString))
        return -9223372036854775808L + Long.parseLong(maskFirstBit(paramString), 16);
      return Long.parseLong(paramString, 16);
    }

    public String getXGeoLocation()
    {
      Location localLocation = this.locationManagerHelper.getLastKnownLocation();
      if (localLocation != null)
        return getXGeoLocation(localLocation);
      return null;
    }

    public boolean shouldSendLocation()
    {
      return true;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.network.SearchQueryBuilder
 * JD-Core Version:    0.6.2
 */