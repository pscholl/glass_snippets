.class public Lcom/google/glass/logging/audio/SavedAudioRecord;
.super Ljava/lang/Object;
.source "SavedAudioRecord.java"


# instance fields
.field private filename:Ljava/lang/String;

.field private id:Ljava/lang/Long;

.field private recognized:Ljava/lang/Boolean;

.field private recognizedCommands:Ljava/lang/String;

.field private sampleRate:Ljava/lang/Long;

.field private synced:Ljava/lang/Boolean;

.field private timestamp:Ljava/lang/Long;


# direct methods
.method constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0
    .parameter "id"
    .parameter "filename"
    .parameter "recognized"
    .parameter "synced"
    .parameter "timestamp"
    .parameter "recognizedCommands"
    .parameter "sampleRate"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/glass/logging/audio/SavedAudioRecord;->id:Ljava/lang/Long;

    .line 28
    iput-object p2, p0, Lcom/google/glass/logging/audio/SavedAudioRecord;->filename:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/google/glass/logging/audio/SavedAudioRecord;->recognized:Ljava/lang/Boolean;

    .line 30
    iput-object p4, p0, Lcom/google/glass/logging/audio/SavedAudioRecord;->synced:Ljava/lang/Boolean;

    .line 31
    iput-object p5, p0, Lcom/google/glass/logging/audio/SavedAudioRecord;->timestamp:Ljava/lang/Long;

    .line 32
    iput-object p6, p0, Lcom/google/glass/logging/audio/SavedAudioRecord;->recognizedCommands:Ljava/lang/String;

    .line 33
    iput-object p7, p0, Lcom/google/glass/logging/audio/SavedAudioRecord;->sampleRate:Ljava/lang/Long;

    .line 34
    return-void
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/google/glass/logging/audio/SavedAudioRecord;
    .locals 12
    .parameter "cursor"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 74
    const-string v0, "_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 75
    .local v1, id:Ljava/lang/Long;
    const-string v0, "filename"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, filename:Ljava/lang/String;
    const-string v0, "is_recognized"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v8, :cond_0

    move v0, v8

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 77
    .local v3, recognized:Ljava/lang/Boolean;
    const-string v0, "is_synced"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v8, :cond_1

    :goto_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 78
    .local v4, synced:Ljava/lang/Boolean;
    const-string v0, "timestamp"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 79
    .local v5, timestamp:Ljava/lang/Long;
    const-string v0, "recognized_commands"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 81
    .local v6, recognizedCommands:Ljava/lang/String;
    const-string v0, "sample_rate"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 83
    .local v7, sampleRate:Ljava/lang/Long;
    new-instance v0, Lcom/google/glass/logging/audio/SavedAudioRecord;

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/logging/audio/SavedAudioRecord;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0

    .end local v3           #recognized:Ljava/lang/Boolean;
    .end local v4           #synced:Ljava/lang/Boolean;
    .end local v5           #timestamp:Ljava/lang/Long;
    .end local v6           #recognizedCommands:Ljava/lang/String;
    .end local v7           #sampleRate:Ljava/lang/Long;
    :cond_0
    move v0, v9

    .line 76
    goto :goto_0

    .restart local v3       #recognized:Ljava/lang/Boolean;
    :cond_1
    move v8, v9

    .line 77
    goto :goto_1
.end method

.method public static newSavedAudioRecord(Ljava/lang/String;J)Lcom/google/glass/logging/audio/SavedAudioRecord;
    .locals 8
    .parameter "filename"
    .parameter "timestamp"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 70
    new-instance v0, Lcom/google/glass/logging/audio/SavedAudioRecord;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v2, p0

    move-object v6, v1

    move-object v7, v1

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/logging/audio/SavedAudioRecord;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method


# virtual methods
.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/glass/logging/audio/SavedAudioRecord;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/glass/logging/audio/SavedAudioRecord;->id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRecognizedCommands()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/glass/logging/audio/SavedAudioRecord;->recognizedCommands:Ljava/lang/String;

    return-object v0
.end method

.method public getSampleRate()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/glass/logging/audio/SavedAudioRecord;->sampleRate:Ljava/lang/Long;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/glass/logging/audio/SavedAudioRecord;->timestamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public isRecognized()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/glass/logging/audio/SavedAudioRecord;->recognized:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isSynced()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/glass/logging/audio/SavedAudioRecord;->synced:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setFilename(Ljava/lang/String;)Lcom/google/glass/logging/audio/SavedAudioRecord;
    .locals 0
    .parameter "filename"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/glass/logging/audio/SavedAudioRecord;->filename:Ljava/lang/String;

    .line 104
    return-object p0
.end method

.method public setRecognized(Ljava/lang/Boolean;)Lcom/google/glass/logging/audio/SavedAudioRecord;
    .locals 0
    .parameter "recognized"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/glass/logging/audio/SavedAudioRecord;->recognized:Ljava/lang/Boolean;

    .line 119
    return-object p0
.end method

.method public setRecognizedCommands(Ljava/lang/String;)Lcom/google/glass/logging/audio/SavedAudioRecord;
    .locals 0
    .parameter "recognizedCommands"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/google/glass/logging/audio/SavedAudioRecord;->recognizedCommands:Ljava/lang/String;

    .line 171
    return-object p0
.end method

.method public setSampleRate(Ljava/lang/Long;)Lcom/google/glass/logging/audio/SavedAudioRecord;
    .locals 0
    .parameter "sampleRate"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/google/glass/logging/audio/SavedAudioRecord;->sampleRate:Ljava/lang/Long;

    .line 179
    return-object p0
.end method

.method public setSynced(Ljava/lang/Boolean;)Lcom/google/glass/logging/audio/SavedAudioRecord;
    .locals 0
    .parameter "synced"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/glass/logging/audio/SavedAudioRecord;->synced:Ljava/lang/Boolean;

    .line 134
    return-object p0
.end method

.method public setTimestamp(Ljava/lang/Long;)Lcom/google/glass/logging/audio/SavedAudioRecord;
    .locals 0
    .parameter "timestamp"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/glass/logging/audio/SavedAudioRecord;->timestamp:Ljava/lang/Long;

    .line 149
    return-object p0
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 37
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 38
    .local v0, values:Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/google/glass/logging/audio/SavedAudioRecord;->filename:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 39
    const-string v1, "filename"

    iget-object v2, p0, Lcom/google/glass/logging/audio/SavedAudioRecord;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/google/glass/logging/audio/SavedAudioRecord;->recognized:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 43
    const-string v1, "is_recognized"

    iget-object v2, p0, Lcom/google/glass/logging/audio/SavedAudioRecord;->recognized:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 46
    :cond_1
    iget-object v1, p0, Lcom/google/glass/logging/audio/SavedAudioRecord;->synced:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 47
    const-string v1, "is_synced"

    iget-object v2, p0, Lcom/google/glass/logging/audio/SavedAudioRecord;->synced:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 50
    :cond_2
    iget-object v1, p0, Lcom/google/glass/logging/audio/SavedAudioRecord;->timestamp:Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 51
    const-string v1, "timestamp"

    iget-object v2, p0, Lcom/google/glass/logging/audio/SavedAudioRecord;->timestamp:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 54
    :cond_3
    iget-object v1, p0, Lcom/google/glass/logging/audio/SavedAudioRecord;->id:Ljava/lang/Long;

    if-eqz v1, :cond_4

    .line 55
    const-string v1, "_id"

    iget-object v2, p0, Lcom/google/glass/logging/audio/SavedAudioRecord;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 58
    :cond_4
    iget-object v1, p0, Lcom/google/glass/logging/audio/SavedAudioRecord;->recognizedCommands:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 59
    const-string v1, "recognized_commands"

    iget-object v2, p0, Lcom/google/glass/logging/audio/SavedAudioRecord;->recognizedCommands:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_5
    iget-object v1, p0, Lcom/google/glass/logging/audio/SavedAudioRecord;->sampleRate:Ljava/lang/Long;

    if-eqz v1, :cond_6

    .line 63
    const-string v1, "sample_rate"

    iget-object v2, p0, Lcom/google/glass/logging/audio/SavedAudioRecord;->sampleRate:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 66
    :cond_6
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SavedAudioRecord [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/logging/audio/SavedAudioRecord;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", filename="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/logging/audio/SavedAudioRecord;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recognized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/logging/audio/SavedAudioRecord;->recognized:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", synced="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/logging/audio/SavedAudioRecord;->synced:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/logging/audio/SavedAudioRecord;->timestamp:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recognizedCommands="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/logging/audio/SavedAudioRecord;->recognizedCommands:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sampleRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/logging/audio/SavedAudioRecord;->sampleRate:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
