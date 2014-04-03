package com.google.glass.maps;

import android.content.Context;
import android.os.Bundle;
import com.google.glass.util.ParcelableImageSpannable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class NavigationActiveItemParams
{
  private static final String KEY_CARD_TYPE = "card_type";
  private static final String KEY_DESTINATION_NAME = "destination_name";
  private static final String KEY_ICON_URI = "icon_uri";
  private static final String KEY_MESSAGE = "message";
  private static final String KEY_SCHEMATIC_SEGMENTS = "schematic_segments";
  private static final String KEY_TIME = "time";
  private static final String KEY_TRIP_SUMMARY = "summary_icons";
  private final Bundle bundle;

  private NavigationActiveItemParams(Bundle paramBundle)
  {
    paramBundle.setClassLoader(ParcelableImageSpannable.class.getClassLoader());
    this.bundle = paramBundle;
  }

  public NavigationActiveItemParams(CardType paramCardType)
  {
    this(new Bundle());
    this.bundle.putSerializable("card_type", paramCardType);
  }

  private boolean areEqual(Object paramObject1, Object paramObject2)
  {
    return (paramObject1 == paramObject2) || ((paramObject1 != null) && (paramObject1.equals(paramObject2)));
  }

  public static NavigationActiveItemParams fromBundle(Bundle paramBundle)
  {
    if (paramBundle != null);
    while (true)
    {
      return new NavigationActiveItemParams(paramBundle);
      paramBundle = new Bundle();
    }
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    NavigationActiveItemParams localNavigationActiveItemParams;
    String str;
    do
    {
      Iterator localIterator;
      while (!localIterator.hasNext())
      {
        return true;
        if (!(paramObject instanceof NavigationActiveItemParams))
          return false;
        localNavigationActiveItemParams = (NavigationActiveItemParams)paramObject;
        if (!localNavigationActiveItemParams.bundle.keySet().equals(this.bundle.keySet()))
          return false;
        localIterator = this.bundle.keySet().iterator();
      }
      str = (String)localIterator.next();
    }
    while (areEqual(localNavigationActiveItemParams.bundle.get(str), this.bundle.get(str)));
    return false;
  }

  public CardType getCardType()
  {
    return (CardType)this.bundle.getSerializable("card_type");
  }

  public String getDestinationName()
  {
    return this.bundle.getString("destination_name");
  }

  public String getIconUri()
  {
    return this.bundle.getString("icon_uri");
  }

  public String getMessage()
  {
    return this.bundle.getString("message");
  }

  public SchematicSegment[] getSchematicSegments()
  {
    if (this.bundle.containsKey("schematic_segments"))
      return (SchematicSegment[])this.bundle.getParcelableArrayList("schematic_segments").toArray(new SchematicSegment[0]);
    return null;
  }

  public String getTimeString()
  {
    return this.bundle.getString("time");
  }

  public CharSequence getTripSummary(Context paramContext)
  {
    ParcelableImageSpannable localParcelableImageSpannable = (ParcelableImageSpannable)this.bundle.getParcelable("summary_icons");
    if (localParcelableImageSpannable == null)
      return null;
    return localParcelableImageSpannable.toSpanned(paramContext);
  }

  public int hashCode()
  {
    int i = 1;
    Iterator localIterator = this.bundle.keySet().iterator();
    if (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Object localObject = this.bundle.get(str);
      int j = 31 * (i * 31 + str.hashCode());
      if (localObject == null);
      for (int k = 0; ; k = localObject.hashCode())
      {
        i = j + k;
        break;
      }
    }
    return i;
  }

  public void setCardType(CardType paramCardType)
  {
    this.bundle.putSerializable("card_type", paramCardType);
  }

  public void setDestinationName(String paramString)
  {
    if (paramString != null)
      this.bundle.putString("destination_name", paramString);
  }

  public void setIconUri(String paramString)
  {
    if (paramString != null)
      this.bundle.putString("icon_uri", paramString);
  }

  public void setMessage(String paramString)
  {
    if (paramString != null)
      this.bundle.putString("message", paramString);
  }

  public void setSchematicSegments(SchematicSegment[] paramArrayOfSchematicSegment)
  {
    if ((paramArrayOfSchematicSegment != null) && (paramArrayOfSchematicSegment.length > 0))
    {
      ArrayList localArrayList = new ArrayList();
      Collections.addAll(localArrayList, paramArrayOfSchematicSegment);
      this.bundle.putParcelableArrayList("schematic_segments", localArrayList);
    }
  }

  public void setTimeString(String paramString)
  {
    if (paramString != null)
      this.bundle.putString("time", paramString);
  }

  public void setTripSummary(ParcelableImageSpannable paramParcelableImageSpannable)
  {
    if (paramParcelableImageSpannable != null)
      this.bundle.putParcelable("summary_icons", paramParcelableImageSpannable);
  }

  public Bundle toBundle()
  {
    return this.bundle;
  }

  public static enum CardType
  {
    static
    {
      DIRECTIONS = new CardType("DIRECTIONS", 1);
      CardType[] arrayOfCardType = new CardType[2];
      arrayOfCardType[0] = NAVIGATION;
      arrayOfCardType[1] = DIRECTIONS;
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.maps.NavigationActiveItemParams
 * JD-Core Version:    0.6.2
 */