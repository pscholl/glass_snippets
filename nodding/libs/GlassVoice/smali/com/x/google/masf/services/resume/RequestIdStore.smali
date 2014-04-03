.class public Lcom/x/google/masf/services/resume/RequestIdStore;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/x/google/masf/services/resume/RequestIdStore$ClientIdInfo;
    }
.end annotation


# static fields
.field public static final KEY_RESUMABLE_IDS:Ljava/lang/String; = "MasfResumableIds"

.field private static final MAX_ID_LIFE_SPAN_MS:J = 0x2932e000L

.field private static final MAX_NUMBER_OF_ID_PAIRS:I = 0x40


# instance fields
.field private clientIdsArray:[Ljava/lang/String;

.field private clientIdsMap:Ljava/util/Hashtable;

.field private store:Lcom/x/google/common/io/PersistentStore;


# direct methods
.method public constructor <init>(Lcom/x/google/common/io/PersistentStore;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/x/google/masf/services/resume/RequestIdStore;->store:Lcom/x/google/common/io/PersistentStore;

    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/x/google/masf/services/resume/RequestIdStore;->clientIdsArray:[Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/x/google/masf/services/resume/RequestIdStore;->clientIdsMap:Ljava/util/Hashtable;

    invoke-direct {p0}, Lcom/x/google/masf/services/resume/RequestIdStore;->loadFromStore()V

    return-void
.end method

.method private getTimeStamp(Ljava/lang/String;)J
    .locals 2

    iget-object v0, p0, Lcom/x/google/masf/services/resume/RequestIdStore;->clientIdsMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/x/google/masf/services/resume/RequestIdStore;->clientIdsMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/x/google/masf/services/resume/RequestIdStore$ClientIdInfo;

    invoke-virtual {v0}, Lcom/x/google/masf/services/resume/RequestIdStore$ClientIdInfo;->getTimestamp()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private loadFromStore()V
    .locals 12

    iget-object v0, p0, Lcom/x/google/masf/services/resume/RequestIdStore;->store:Lcom/x/google/common/io/PersistentStore;

    const-string v1, "MasfResumableIds"

    invoke-interface {v0, v1}, Lcom/x/google/common/io/PersistentStore;->readPreference(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    :try_start_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_1

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    const-wide/32 v10, 0x2932e000

    add-long/2addr v10, v8

    cmp-long v10, v10, v3

    if-gez v10, :cond_2

    :cond_1
    invoke-static {v2}, Lcom/x/google/common/io/IoUtil;->closeInputStream(Ljava/io/InputStream;)V

    invoke-static {v1}, Lcom/x/google/common/io/IoUtil;->closeInputStream(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v10, p0, Lcom/x/google/masf/services/resume/RequestIdStore;->clientIdsMap:Ljava/util/Hashtable;

    new-instance v11, Lcom/x/google/masf/services/resume/RequestIdStore$ClientIdInfo;

    invoke-direct {v11, v7, v8, v9}, Lcom/x/google/masf/services/resume/RequestIdStore$ClientIdInfo;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v10, v6, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/x/google/masf/services/resume/RequestIdStore;->clientIdsArray:[Ljava/lang/String;

    aput-object v6, v7, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v0, p0, Lcom/x/google/masf/services/resume/RequestIdStore;->clientIdsMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/x/google/masf/services/resume/RequestIdStore;->clientIdsArray:[Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2}, Lcom/x/google/common/io/IoUtil;->closeInputStream(Ljava/io/InputStream;)V

    invoke-static {v1}, Lcom/x/google/common/io/IoUtil;->closeInputStream(Ljava/io/InputStream;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/x/google/common/io/IoUtil;->closeInputStream(Ljava/io/InputStream;)V

    invoke-static {v1}, Lcom/x/google/common/io/IoUtil;->closeInputStream(Ljava/io/InputStream;)V

    throw v0
.end method

.method private removeClientIdNoSave(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/x/google/masf/services/resume/RequestIdStore;->clientIdsMap:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/x/google/masf/services/resume/RequestIdStore;->clientIdsArray:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/x/google/masf/services/resume/RequestIdStore;->clientIdsArray:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/x/google/masf/services/resume/RequestIdStore;->clientIdsArray:[Ljava/lang/String;

    iget-object v4, p0, Lcom/x/google/masf/services/resume/RequestIdStore;->clientIdsMap:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->size()I

    move-result v4

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/x/google/masf/services/resume/RequestIdStore;->clientIdsMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private removeExpiredIdsNoSave()V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v0, p0, Lcom/x/google/masf/services/resume/RequestIdStore;->clientIdsMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v3, p0, Lcom/x/google/masf/services/resume/RequestIdStore;->clientIdsArray:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-direct {p0, v3}, Lcom/x/google/masf/services/resume/RequestIdStore;->getTimeStamp(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/32 v5, 0x2932e000

    add-long/2addr v3, v5

    cmp-long v3, v3, v1

    if-gez v3, :cond_0

    iget-object v3, p0, Lcom/x/google/masf/services/resume/RequestIdStore;->clientIdsMap:Ljava/util/Hashtable;

    iget-object v4, p0, Lcom/x/google/masf/services/resume/RequestIdStore;->clientIdsArray:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/x/google/masf/services/resume/RequestIdStore;->clientIdsArray:[Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private saveToStore()V
    .locals 5

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-direct {p0}, Lcom/x/google/masf/services/resume/RequestIdStore;->removeExpiredIdsNoSave()V

    iget-object v0, p0, Lcom/x/google/masf/services/resume/RequestIdStore;->clientIdsMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/x/google/masf/services/resume/RequestIdStore;->clientIdsMap:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/x/google/masf/services/resume/RequestIdStore;->clientIdsArray:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/x/google/masf/services/resume/RequestIdStore;->clientIdsArray:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Lcom/x/google/masf/services/resume/RequestIdStore;->getServerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/x/google/masf/services/resume/RequestIdStore;->clientIdsArray:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-direct {p0, v3}, Lcom/x/google/masf/services/resume/RequestIdStore;->getTimeStamp(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/x/google/masf/services/resume/RequestIdStore;->store:Lcom/x/google/common/io/PersistentStore;

    const-string v3, "MasfResumableIds"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/x/google/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z

    iget-object v0, p0, Lcom/x/google/masf/services/resume/RequestIdStore;->store:Lcom/x/google/common/io/PersistentStore;

    invoke-interface {v0}, Lcom/x/google/common/io/PersistentStore;->savePreferences()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v2}, Lcom/x/google/common/io/IoUtil;->closeOutputStream(Ljava/io/OutputStream;)V

    invoke-static {v1}, Lcom/x/google/common/io/IoUtil;->closeOutputStream(Ljava/io/OutputStream;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {v2}, Lcom/x/google/common/io/IoUtil;->closeOutputStream(Ljava/io/OutputStream;)V

    invoke-static {v1}, Lcom/x/google/common/io/IoUtil;->closeOutputStream(Ljava/io/OutputStream;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/x/google/common/io/IoUtil;->closeOutputStream(Ljava/io/OutputStream;)V

    invoke-static {v1}, Lcom/x/google/common/io/IoUtil;->closeOutputStream(Ljava/io/OutputStream;)V

    throw v0
.end method


# virtual methods
.method public getClientIds()[Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/x/google/masf/services/resume/RequestIdStore;->clientIdsMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/x/google/masf/services/resume/RequestIdStore;->clientIdsArray:[Ljava/lang/String;

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public getServerId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/x/google/masf/services/resume/RequestIdStore;->clientIdsMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/x/google/masf/services/resume/RequestIdStore;->clientIdsMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/x/google/masf/services/resume/RequestIdStore$ClientIdInfo;

    invoke-virtual {v0}, Lcom/x/google/masf/services/resume/RequestIdStore$ClientIdInfo;->getServerId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeClientId(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/x/google/masf/services/resume/RequestIdStore;->removeClientIdNoSave(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/x/google/masf/services/resume/RequestIdStore;->saveToStore()V

    return-void
.end method

.method public setServerId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/16 v2, 0x3f

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/x/google/masf/services/resume/RequestIdStore;->clientIdsMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/x/google/masf/services/resume/RequestIdStore;->removeClientIdNoSave(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/x/google/masf/services/resume/RequestIdStore;->clientIdsArray:[Ljava/lang/String;

    iget-object v1, p0, Lcom/x/google/masf/services/resume/RequestIdStore;->clientIdsArray:[Ljava/lang/String;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/x/google/masf/services/resume/RequestIdStore;->clientIdsMap:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/x/google/masf/services/resume/RequestIdStore;->clientIdsArray:[Ljava/lang/String;

    aput-object p1, v0, v4

    iget-object v0, p0, Lcom/x/google/masf/services/resume/RequestIdStore;->clientIdsMap:Ljava/util/Hashtable;

    new-instance v1, Lcom/x/google/masf/services/resume/RequestIdStore$ClientIdInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, p2, v2, v3}, Lcom/x/google/masf/services/resume/RequestIdStore$ClientIdInfo;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/x/google/masf/services/resume/RequestIdStore;->saveToStore()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/x/google/masf/services/resume/RequestIdStore;->clientIdsMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/x/google/masf/services/resume/RequestIdStore;->clientIdsMap:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/x/google/masf/services/resume/RequestIdStore;->clientIdsArray:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/x/google/masf/services/resume/RequestIdStore;->clientIdsArray:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "RequestIdStore["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/x/google/masf/services/resume/RequestIdStore;->getClientIds()[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\', \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {p0, v4}, Lcom/x/google/masf/services/resume/RequestIdStore;->getServerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\', "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-direct {p0, v4}, Lcom/x/google/masf/services/resume/RequestIdStore;->getTimeStamp(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
