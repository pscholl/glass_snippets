package com.google.glass.logging.audio;

import android.content.ContentValues;
import android.database.Cursor;

public class SavedAudioRecord
{
  private String filename;
  private Long id;
  private Boolean recognized;
  private String recognizedCommands;
  private Long sampleRate;
  private Boolean synced;
  private Long timestamp;

  SavedAudioRecord(Long paramLong1, String paramString1, Boolean paramBoolean1, Boolean paramBoolean2, Long paramLong2, String paramString2, Long paramLong3)
  {
    this.id = paramLong1;
    this.filename = paramString1;
    this.recognized = paramBoolean1;
    this.synced = paramBoolean2;
    this.timestamp = paramLong2;
    this.recognizedCommands = paramString2;
    this.sampleRate = paramLong3;
  }

  public static SavedAudioRecord fromCursor(Cursor paramCursor)
  {
    int i = 1;
    Long localLong = Long.valueOf(paramCursor.getLong(paramCursor.getColumnIndex("_id")));
    String str = paramCursor.getString(paramCursor.getColumnIndex("filename"));
    Boolean localBoolean;
    if (paramCursor.getInt(paramCursor.getColumnIndex("is_recognized")) == i)
    {
      int k = i;
      localBoolean = Boolean.valueOf(k);
      if (paramCursor.getInt(paramCursor.getColumnIndex("is_synced")) != i)
        break label151;
    }
    while (true)
    {
      return new SavedAudioRecord(localLong, str, localBoolean, Boolean.valueOf(i), Long.valueOf(paramCursor.getLong(paramCursor.getColumnIndex("timestamp"))), paramCursor.getString(paramCursor.getColumnIndex("recognized_commands")), Long.valueOf(paramCursor.getLong(paramCursor.getColumnIndex("sample_rate"))));
      int m = 0;
      break;
      label151: int j = 0;
    }
  }

  public static SavedAudioRecord newSavedAudioRecord(String paramString, long paramLong)
  {
    return new SavedAudioRecord(null, paramString, Boolean.valueOf(false), Boolean.valueOf(false), Long.valueOf(paramLong), null, null);
  }

  public String getFilename()
  {
    return this.filename;
  }

  public long getId()
  {
    return this.id.longValue();
  }

  public String getRecognizedCommands()
  {
    return this.recognizedCommands;
  }

  public Long getSampleRate()
  {
    return this.sampleRate;
  }

  public long getTimestamp()
  {
    return this.timestamp.longValue();
  }

  public boolean isRecognized()
  {
    return this.recognized.booleanValue();
  }

  public boolean isSynced()
  {
    return this.synced.booleanValue();
  }

  public SavedAudioRecord setFilename(String paramString)
  {
    this.filename = paramString;
    return this;
  }

  public SavedAudioRecord setRecognized(Boolean paramBoolean)
  {
    this.recognized = paramBoolean;
    return this;
  }

  public SavedAudioRecord setRecognizedCommands(String paramString)
  {
    this.recognizedCommands = paramString;
    return this;
  }

  public SavedAudioRecord setSampleRate(Long paramLong)
  {
    this.sampleRate = paramLong;
    return this;
  }

  public SavedAudioRecord setSynced(Boolean paramBoolean)
  {
    this.synced = paramBoolean;
    return this;
  }

  public SavedAudioRecord setTimestamp(Long paramLong)
  {
    this.timestamp = paramLong;
    return this;
  }

  public ContentValues toContentValues()
  {
    ContentValues localContentValues = new ContentValues();
    if (this.filename != null)
      localContentValues.put("filename", this.filename);
    if (this.recognized != null)
      localContentValues.put("is_recognized", this.recognized);
    if (this.synced != null)
      localContentValues.put("is_synced", this.synced);
    if (this.timestamp != null)
      localContentValues.put("timestamp", this.timestamp);
    if (this.id != null)
      localContentValues.put("_id", this.id);
    if (this.recognizedCommands != null)
      localContentValues.put("recognized_commands", this.recognizedCommands);
    if (this.sampleRate != null)
      localContentValues.put("sample_rate", this.sampleRate);
    return localContentValues;
  }

  public String toString()
  {
    return "SavedAudioRecord [id=" + this.id + ", filename=" + this.filename + ", recognized=" + this.recognized + ", synced=" + this.synced + ", timestamp=" + this.timestamp + ", recognizedCommands=" + this.recognizedCommands + ", sampleRate=" + this.sampleRate + "]";
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.logging.audio.SavedAudioRecord
 * JD-Core Version:    0.6.2
 */