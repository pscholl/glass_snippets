.class public interface abstract Lcom/x/google/common/io/PersistentStore;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/x/google/common/io/PersistentStore$PersistentStoreException;
    }
.end annotation


# static fields
.field public static final PERSISTENT_STORE_FULL:I = -0x2

.field public static final PERSISTENT_STORE_WRITE_FAILED:I = -0x1


# virtual methods
.method public abstract clearPreferences()V
.end method

.method public abstract deleteAllBlocks(Ljava/lang/String;)V
.end method

.method public abstract deleteBlock(Ljava/lang/String;)Z
.end method

.method public abstract deleteBlockX(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/x/google/common/io/PersistentStore$PersistentStoreException;
        }
    .end annotation
.end method

.method public abstract getBlockSize(Ljava/lang/String;)I
.end method

.method public abstract getDataSize(Ljava/lang/String;)I
.end method

.method public abstract getFreeSpace(Ljava/lang/String;)J
.end method

.method public abstract listBlocks(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract readBlock(Ljava/lang/String;)[B
.end method

.method public abstract readPreference(Ljava/lang/String;)[B
.end method

.method public abstract refreshPreferencesCache(Z)V
.end method

.method public abstract savePreferences()V
.end method

.method public abstract setPreference(Ljava/lang/String;[B)Z
.end method

.method public abstract writeBlock([BLjava/lang/String;)I
.end method

.method public abstract writeBlockX([BLjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/x/google/common/io/PersistentStore$PersistentStoreException;
        }
    .end annotation
.end method
