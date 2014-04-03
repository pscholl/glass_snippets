.class public Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SavedAudioDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper$Columns;
    }
.end annotation


# static fields
.field private static final SAVED_AUDIO_TABLE_CREATE_STATEMENT:Ljava/lang/String; = "CREATE TABLE saved_audio (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, filename TEXT, is_recognized INTEGER DEFAULT 0, is_synced INTEGER DEFAULT 0, timestamp LONG, recognized_commands TEXT, sample_rate LONG);"

.field private static final SAVED_AUDIO_TABLE_NAME:Ljava/lang/String; = "saved_audio"

.field private static final TAG:Ljava/lang/String; = null

.field private static final VERSION:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 54
    const-string v0, "saved_audio"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 55
    return-void
.end method

.method private static booleanClause(ZLjava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 2
    .parameter "empty"
    .parameter "column"
    .parameter "value"

    .prologue
    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, " AND "

    goto :goto_0

    :cond_1
    const-string v0, "0"

    goto :goto_1
.end method

.method private listRestricted(Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/util/List;
    .locals 10
    .parameter "recognized"
    .parameter "synced"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/logging/audio/SavedAudioRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 98
    .local v9, results:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/logging/audio/SavedAudioRecord;>;"
    const/4 v8, 0x0

    .line 100
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "saved_audio"

    invoke-static {}, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper$Columns;->access$000()[Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p2}, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;->whereProperties(Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "timestamp ASC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 107
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 117
    if-eqz v8, :cond_0

    .line 118
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v9

    .line 111
    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 112
    invoke-static {v8}, Lcom/google/glass/logging/audio/SavedAudioRecord;->fromCursor(Landroid/database/Cursor;)Lcom/google/glass/logging/audio/SavedAudioRecord;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 117
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 118
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 117
    :cond_3
    if-eqz v8, :cond_0

    .line 118
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private static whereIdIs(J)Ljava/lang/String;
    .locals 2
    .parameter "id"

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static whereProperties(Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 3
    .parameter "recognized"
    .parameter "synced"

    .prologue
    .line 124
    const/4 v0, 0x1

    .line 125
    .local v0, empty:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .local v1, whereClause:Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    .line 128
    const-string v2, "is_recognized"

    invoke-static {v0, v2, p0}, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;->booleanClause(ZLjava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const/4 v0, 0x0

    .line 132
    :cond_0
    if-eqz p1, :cond_1

    .line 133
    const-string v2, "is_synced"

    invoke-static {v0, v2, p1}, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;->booleanClause(ZLjava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const/4 v0, 0x0

    .line 137
    :cond_1
    if-eqz v0, :cond_2

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public delete(Lcom/google/glass/logging/audio/SavedAudioRecord;)V
    .locals 4
    .parameter "savedAudioRecord"

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "saved_audio"

    invoke-virtual {p1}, Lcom/google/glass/logging/audio/SavedAudioRecord;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;->whereIdIs(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 157
    return-void
.end method

.method public deleteAll(Ljava/util/Collection;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/glass/logging/audio/SavedAudioRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, savedAudioRecords:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/glass/logging/audio/SavedAudioRecord;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/logging/audio/SavedAudioRecord;

    .line 161
    .local v1, savedAudioRecord:Lcom/google/glass/logging/audio/SavedAudioRecord;
    invoke-virtual {p0, v1}, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;->delete(Lcom/google/glass/logging/audio/SavedAudioRecord;)V

    goto :goto_0

    .line 163
    .end local v1           #savedAudioRecord:Lcom/google/glass/logging/audio/SavedAudioRecord;
    :cond_0
    return-void
.end method

.method public insert(Lcom/google/glass/logging/audio/SavedAudioRecord;)V
    .locals 4
    .parameter "record"

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "saved_audio"

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/glass/logging/audio/SavedAudioRecord;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 81
    return-void
.end method

.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/logging/audio/SavedAudioRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, v0, v0}, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;->listRestricted(Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public list(ZZ)Ljava/util/List;
    .locals 2
    .parameter "recognized"
    .parameter "synced"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/logging/audio/SavedAudioRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;->listRestricted(Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 59
    const-string v0, "CREATE TABLE saved_audio (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, filename TEXT, is_recognized INTEGER DEFAULT 0, is_synced INTEGER DEFAULT 0, timestamp LONG, recognized_commands TEXT, sample_rate LONG);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 72
    sget-object v0, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string v0, "DROP TABLE IF EXISTS saved_audio"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, p1}, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 76
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 64
    sget-object v0, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const-string v0, "DROP TABLE IF EXISTS saved_audio"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, p1}, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 68
    return-void
.end method

.method public update(Lcom/google/glass/logging/audio/SavedAudioRecord;)V
    .locals 5
    .parameter "savedAudioRecord"

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "saved_audio"

    invoke-virtual {p1}, Lcom/google/glass/logging/audio/SavedAudioRecord;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/glass/logging/audio/SavedAudioRecord;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/glass/logging/audio/SavedAudioDatabaseHelper;->whereIdIs(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 148
    return-void
.end method
