package com.google.glass.entity;

import android.database.AbstractCursor;
import com.google.glass.util.ArrayUtils;
import com.google.googlex.glass.common.proto.TimelineNano.Entity;
import com.google.protobuf.nano.MessageNano;
import java.util.List;

public class EntityListCursor extends AbstractCursor
{
  private final String[] columns;
  public List<TimelineNano.Entity> list;

  public EntityListCursor(String[] paramArrayOfString, List<TimelineNano.Entity> paramList)
  {
    this.columns = paramArrayOfString;
    this.list = paramList;
  }

  private TimelineNano.Entity getCurrentEntity()
  {
    checkPosition();
    return (TimelineNano.Entity)this.list.get(this.mPos);
  }

  public byte[] getBlob(int paramInt)
  {
    String str = this.columns[paramInt];
    TimelineNano.Entity localEntity = getCurrentEntity();
    if ("protobuf_blob".equalsIgnoreCase(str))
      return MessageNano.toByteArray(localEntity);
    throw new IllegalArgumentException("Unknown column: " + str);
  }

  public String[] getColumnNames()
  {
    return this.columns;
  }

  public int getCount()
  {
    return this.list.size();
  }

  public double getDouble(int paramInt)
  {
    throw new UnsupportedOperationException();
  }

  public float getFloat(int paramInt)
  {
    throw new UnsupportedOperationException();
  }

  public int getInt(int paramInt)
  {
    throw new UnsupportedOperationException();
  }

  public long getLong(int paramInt)
  {
    throw new UnsupportedOperationException();
  }

  public short getShort(int paramInt)
  {
    throw new UnsupportedOperationException();
  }

  public String getString(int paramInt)
  {
    String str = this.columns[paramInt];
    TimelineNano.Entity localEntity = getCurrentEntity();
    if ("display_name".equalsIgnoreCase(str))
      return localEntity.displayName;
    if ("email".equalsIgnoreCase(str))
      return localEntity.email;
    if ("image_url".equalsIgnoreCase(str))
    {
      if (!ArrayUtils.isEmpty(localEntity.imageUrl))
        return localEntity.imageUrl[0];
      return null;
    }
    if ("_id".equalsIgnoreCase(str))
      return localEntity.id;
    if ("source".equalsIgnoreCase(str))
      return localEntity.source;
    throw new IllegalArgumentException("Unknown column: " + str);
  }

  public boolean isNull(int paramInt)
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.entity.EntityListCursor
 * JD-Core Version:    0.6.2
 */