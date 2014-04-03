.class public Lcom/google/glass/timeline/AttachmentHelper;
.super Ljava/lang/Object;
.source "AttachmentHelper.java"


# static fields
.field private static final ATTACHMENT_COPY_MARGIN_BYTES:I = 0x400000

.field public static final EMPTY_ATTACHMENT:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment; = null

.field private static final PARSER:Lcom/google/glass/net/ProtoParser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/net/ProtoParser",
            "<",
            "Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final PHOTOS_SERVICE_ID_PREFIX:Ljava/lang/String; = "ps:"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 44
    new-instance v0, Lcom/google/glass/net/ProtoParser;

    new-instance v1, Lcom/google/glass/timeline/AttachmentHelper$1;

    invoke-direct {v1}, Lcom/google/glass/timeline/AttachmentHelper$1;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/glass/net/ProtoParser;-><init>(Lcom/google/glass/net/ProtoParser$Provider;)V

    sput-object v0, Lcom/google/glass/timeline/AttachmentHelper;->PARSER:Lcom/google/glass/net/ProtoParser;

    .line 57
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;-><init>()V

    sput-object v0, Lcom/google/glass/timeline/AttachmentHelper;->EMPTY_ATTACHMENT:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/google/glass/timeline/AttachmentHelper;->context:Landroid/content/Context;

    .line 72
    return-void
.end method

.method private static attachmentCreatedOnDevice(Ljava/lang/String;)Z
    .locals 1
    .parameter "source"

    .prologue
    .line 328
    if-eqz p0, :cond_0

    const-string v0, "device:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static clone(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 4
    .parameter "original"

    .prologue
    .line 386
    if-eqz p0, :cond_0

    .line 388
    :try_start_0
    invoke-static {p0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 396
    :goto_0
    return-object v1

    .line 389
    :catch_0
    move-exception v0

    .line 392
    .local v0, e:Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    sget-object v1, Lcom/google/glass/timeline/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Couldn\'t clone attachment"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t clone attachment"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 396
    .end local v0           #e:Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getAttachmentSource(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "item"
    .parameter "attachment"

    .prologue
    .line 376
    invoke-static {p2}, Lcom/google/glass/timeline/AttachmentHelper;->isPhotosServiceAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    new-instance v0, Lcom/google/glass/util/SettingsSecure;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    invoke-static {v0}, Lcom/google/glass/timeline/TimelineHelper;->getLocalTimelineItemSource(Lcom/google/glass/util/SettingsSecure;)Ljava/lang/String;

    move-result-object v0

    .line 380
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getFileForAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Lcom/google/glass/util/CachedFilesManager;)Ljava/io/File;
    .locals 4
    .parameter "attachment"
    .parameter "cachedFilesManager"

    .prologue
    .line 209
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 211
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->clientCachePath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 212
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->clientCachePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 228
    .end local v0           #file:Ljava/io/File;
    :cond_0
    :goto_0
    return-object v0

    .line 218
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->id:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 219
    sget-object v2, Lcom/google/glass/util/CachedFilesManager$Type;->ATTACHMENT:Lcom/google/glass/util/CachedFilesManager$Type;

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->id:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, filename:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 221
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 222
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 228
    .end local v0           #file:Ljava/io/File;
    .end local v1           #filename:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPhotosServiceAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Z
    .locals 3
    .parameter "attachment"

    .prologue
    const/4 v0, 0x1

    .line 337
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->id:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->id:Ljava/lang/String;

    const-string v2, "ps:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 347
    :cond_0
    :goto_0
    return v0

    .line 342
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->clientCachePath:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->clientCachePath:Ljava/lang/String;

    sget-object v2, Lcom/google/glass/app/GlassApplication;->DCIM_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->source:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/glass/timeline/AttachmentHelper;->attachmentCreatedOnDevice(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 347
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static mergeAttachments(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    .local p0, attachments1:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;>;"
    .local p1, attachments2:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 247
    .local v3, mergedAttachments:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 248
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 249
    .local v0, attachment1:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 253
    .local v1, attachment2:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    sget-object v4, Lcom/google/glass/timeline/AttachmentHelper;->EMPTY_ATTACHMENT:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    if-eq v0, v4, :cond_0

    sget-object v4, Lcom/google/glass/timeline/AttachmentHelper;->EMPTY_ATTACHMENT:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    if-ne v1, v4, :cond_1

    .line 247
    .end local v0           #attachment1:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 256
    .restart local v0       #attachment1:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    :cond_1
    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->id:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .end local v0           #attachment1:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    :goto_2
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .restart local v0       #attachment1:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    :cond_2
    move-object v0, v1

    goto :goto_2

    .line 258
    .end local v0           #attachment1:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .end local v1           #attachment2:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 259
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p1, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 264
    :cond_4
    :goto_3
    sget-object v4, Lcom/google/glass/timeline/AttachmentHelper;->EMPTY_ATTACHMENT:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 265
    sget-object v4, Lcom/google/glass/timeline/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Removed one instance of an empty attachment."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 260
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-le v4, v5, :cond_4

    .line 261
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p0, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 267
    :cond_6
    return-object v3
.end method

.method public static shouldDeleteLocalAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Z
    .locals 2
    .parameter "item"
    .parameter "attachment"

    .prologue
    .line 361
    iget-object v0, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->clientCachePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->clientCachePath:Ljava/lang/String;

    sget-object v1, Lcom/google/glass/app/GlassApplication;->DCIM_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->source:Ljava/lang/String;

    const-string v1, "device:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cloneAttachments(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 32
    .parameter "item"

    .prologue
    .line 131
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 132
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_0

    .line 133
    const/16 v26, 0x1

    .line 200
    :goto_0
    return v26

    .line 136
    :cond_0
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v14

    .line 139
    .local v14, cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;
    const/16 v21, 0x0

    .line 140
    .local v21, numToCopy:I
    const-wide/16 v8, 0x0

    .line 141
    .local v8, bytesRequired:J
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .local v3, arr$:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    array-length v0, v3

    move/from16 v19, v0

    .local v19, len$:I
    const/16 v18, 0x0

    .local v18, i$:I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    aget-object v4, v3, v18

    .line 142
    .local v4, attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    invoke-static {v4}, Lcom/google/glass/timeline/AttachmentHelper;->isPhotosServiceAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Z

    move-result v26

    if-nez v26, :cond_1

    .line 143
    invoke-static {v4, v14}, Lcom/google/glass/timeline/AttachmentHelper;->getFileForAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Lcom/google/glass/util/CachedFilesManager;)Ljava/io/File;

    move-result-object v15

    .line 144
    .local v15, file:Ljava/io/File;
    if-eqz v15, :cond_1

    .line 145
    add-int/lit8 v21, v21, 0x1

    .line 146
    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v26

    add-long v8, v8, v26

    .line 141
    .end local v15           #file:Ljava/io/File;
    :cond_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 151
    .end local v4           #attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    :cond_2
    new-instance v25, Lcom/google/glass/util/StorageHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/timeline/AttachmentHelper;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Lcom/google/glass/util/StorageHelper;-><init>(Landroid/content/Context;)V

    .line 152
    .local v25, storageHelper:Lcom/google/glass/util/StorageHelper;
    const-wide/32 v26, 0x400000

    add-long v10, v8, v26

    .line 153
    .local v10, bytesToReserve:J
    invoke-virtual/range {v25 .. v25}, Lcom/google/glass/util/StorageHelper;->getAvailableBytesInExternalStorage()J

    move-result-wide v6

    .line 154
    .local v6, bytesFree:J
    cmp-long v26, v6, v10

    if-gez v26, :cond_3

    .line 155
    sub-long v12, v10, v6

    .line 156
    .local v12, bytesToTrim:J
    sget-object v26, Lcom/google/glass/timeline/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v27, "Trying to trim %s bytes from CachedFilesManager"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-interface/range {v26 .. v28}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    invoke-virtual {v14, v12, v13}, Lcom/google/glass/util/CachedFilesManager;->trimBySize(J)Z

    move-result v26

    if-nez v26, :cond_3

    .line 158
    sget-object v26, Lcom/google/glass/timeline/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v27, "Insufficient space to copy %s bytes of attachments for item %s, Free bytes: %s"

    const/16 v28, 0x3

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id:Ljava/lang/String;

    move-object/from16 v30, v0

    aput-object v30, v28, v29

    const/16 v29, 0x2

    invoke-virtual/range {v25 .. v25}, Lcom/google/glass/util/StorageHelper;->getAvailableBytesInExternalStorage()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-interface/range {v26 .. v28}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    invoke-virtual/range {v25 .. v25}, Lcom/google/glass/util/StorageHelper;->showFullStorageDialog()V

    .line 161
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 166
    .end local v12           #bytesToTrim:J
    :cond_3
    sget-object v26, Lcom/google/glass/timeline/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v27, "Copying %s attachments, %s bytes for %s"

    const/16 v28, 0x3

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x2

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id:Ljava/lang/String;

    move-object/from16 v30, v0

    aput-object v30, v28, v29

    invoke-interface/range {v26 .. v28}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v23

    .line 171
    .local v23, startTime:J
    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 172
    .local v5, attachments:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;>;"
    const/16 v16, 0x0

    .local v16, i:I
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v16

    move/from16 v1, v26

    if-ge v0, v1, :cond_7

    .line 173
    move/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 174
    .restart local v4       #attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    invoke-static {v4}, Lcom/google/glass/timeline/AttachmentHelper;->isPhotosServiceAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 175
    sget-object v26, Lcom/google/glass/timeline/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v27, "Not copying photo service attachment %s"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    iget-object v0, v4, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->id:Ljava/lang/String;

    move-object/from16 v30, v0

    aput-object v30, v28, v29

    invoke-interface/range {v26 .. v28}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 177
    :cond_4
    invoke-static {v4, v14}, Lcom/google/glass/timeline/AttachmentHelper;->getFileForAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Lcom/google/glass/util/CachedFilesManager;)Ljava/io/File;

    move-result-object v15

    .line 178
    .restart local v15       #file:Ljava/io/File;
    if-eqz v15, :cond_6

    .line 180
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "-"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 181
    .local v20, name:Ljava/lang/String;
    sget-object v26, Lcom/google/glass/util/CachedFilesManager$Type;->SHARE:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-static {v15}, Lcom/google/glass/util/FileSaver;->newSaver(Ljava/io/File;)Lcom/google/glass/util/FileSaver$Saver;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    move-object/from16 v2, v27

    invoke-virtual {v14, v0, v1, v2}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    move-result v26

    if-eqz v26, :cond_5

    .line 182
    sget-object v26, Lcom/google/glass/util/CachedFilesManager$Type;->SHARE:Lcom/google/glass/util/CachedFilesManager$Type;

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 183
    .local v22, pathToCopy:Ljava/lang/String;
    move-object/from16 v0, v22

    iput-object v0, v4, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->clientCachePath:Ljava/lang/String;

    .line 186
    const/16 v26, 0x0

    move-object/from16 v0, v26

    iput-object v0, v4, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->id:Ljava/lang/String;

    goto :goto_3

    .line 188
    .end local v22           #pathToCopy:Ljava/lang/String;
    :cond_5
    sget-object v26, Lcom/google/glass/timeline/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v27, "Failed to copy attachment %s on %s"

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    iget-object v0, v4, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->id:Ljava/lang/String;

    move-object/from16 v30, v0

    aput-object v30, v28, v29

    const/16 v29, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id:Ljava/lang/String;

    move-object/from16 v30, v0

    aput-object v30, v28, v29

    invoke-interface/range {v26 .. v28}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    add-int/lit8 v17, v16, -0x1

    .end local v16           #i:I
    .local v17, i:I
    move/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .end local v20           #name:Ljava/lang/String;
    :goto_4
    move/from16 v16, v17

    .end local v17           #i:I
    .restart local v16       #i:I
    goto :goto_3

    .line 192
    :cond_6
    sget-object v26, Lcom/google/glass/timeline/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v27, "Could not find attachment %s on %s"

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    iget-object v0, v4, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->id:Ljava/lang/String;

    move-object/from16 v30, v0

    aput-object v30, v28, v29

    const/16 v29, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->id:Ljava/lang/String;

    move-object/from16 v30, v0

    aput-object v30, v28, v29

    invoke-interface/range {v26 .. v28}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    add-int/lit8 v17, v16, -0x1

    .end local v16           #i:I
    .restart local v17       #i:I
    move/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 197
    .end local v4           #attachment:Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .end local v15           #file:Ljava/io/File;
    .end local v17           #i:I
    .restart local v16       #i:I
    :cond_7
    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 199
    sget-object v26, Lcom/google/glass/timeline/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v27, "Copied attachments in %s ms"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v30

    sub-long v30, v30, v23

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-interface/range {v26 .. v28}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    const/16 v26, 0x1

    goto/16 :goto_0
.end method

.method public getAttachmentBytes(Ljava/lang/String;Lcom/google/glass/util/CachedFilesManager$Type;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)[B
    .locals 9
    .parameter "fileName"
    .parameter "type"
    .parameter "attachment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 284
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 289
    iget-object v4, p3, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->clientCachePath:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/io/File;

    iget-object v5, p3, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->clientCachePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 291
    iget-object v2, p3, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->clientCachePath:Ljava/lang/String;

    .line 315
    .local v2, filePath:Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 316
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v3

    new-instance v4, Lcom/google/glass/util/CachedFilesManager$ByteArrayLoader;

    invoke-direct {v4}, Lcom/google/glass/util/CachedFilesManager$ByteArrayLoader;-><init>()V

    invoke-virtual {v3, v2, v4}, Lcom/google/glass/util/CachedFilesManager;->load(Ljava/lang/String;Lcom/google/glass/util/CachedFilesManager$Loader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 318
    .end local v2           #filePath:Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v3

    .line 294
    :cond_1
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v0

    .line 295
    .local v0, cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;
    invoke-virtual {v0, p2, p1}, Lcom/google/glass/util/CachedFilesManager;->contains(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 297
    iget-object v4, p3, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->id:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 302
    iget-object v4, p3, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->id:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/google/glass/timeline/AttachmentHelper;->getAttachmentFromServer(Ljava/lang/String;)[B

    move-result-object v1

    .line 303
    .local v1, content:[B
    if-eqz v1, :cond_3

    array-length v4, v1

    if-lez v4, :cond_3

    .line 304
    invoke-static {v1}, Lcom/google/glass/util/FileSaver;->newSaver([B)Lcom/google/glass/util/FileSaver$Saver;

    move-result-object v4

    invoke-virtual {v0, p2, p1, v4}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    .line 311
    .end local v1           #content:[B
    :cond_2
    iget-object v4, p3, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->id:Ljava/lang/String;

    invoke-virtual {v0, p2, v4}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #filePath:Ljava/lang/String;
    goto :goto_0

    .line 306
    .end local v2           #filePath:Ljava/lang/String;
    .restart local v1       #content:[B
    :cond_3
    sget-object v4, Lcom/google/glass/timeline/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Failed to get attachment from server: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p3, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->id:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public getAttachmentFromServer(Ljava/lang/String;)[B
    .locals 12
    .parameter "attachmentId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 84
    sget-object v7, Lcom/google/glass/timeline/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Requesting attachment %s from server."

    new-array v9, v11, [Ljava/lang/Object;

    aput-object p1, v9, v10

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    new-instance v3, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;-><init>()V

    .line 88
    .local v3, request:Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;
    iput-object p1, v3, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;->attachmentId:Ljava/lang/String;

    .line 90
    iget-object v7, p0, Lcom/google/glass/timeline/AttachmentHelper;->context:Landroid/content/Context;

    const-string v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 91
    .local v6, windowService:Landroid/view/WindowManager;
    if-eqz v6, :cond_0

    .line 92
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 93
    .local v2, display:Landroid/view/Display;
    new-instance v1, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;

    invoke-direct {v1}, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;-><init>()V

    .line 95
    .local v1, dimensions:Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v1, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->widthPixels:Ljava/lang/Integer;

    .line 96
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v1, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;->heightPixels:Ljava/lang/Integer;

    .line 97
    iput-object v1, v3, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest;->screenDimensions:Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;

    .line 101
    .end local v1           #dimensions:Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetRequest$ScreenDimensions;
    .end local v2           #display:Landroid/view/Display;
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/timeline/AttachmentHelper;->getRequestDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v7

    sget-object v8, Lcom/google/glass/net/ServerConstants$Action;->ATTACHMENT_GET:Lcom/google/glass/net/ServerConstants$Action;

    sget-object v9, Lcom/google/glass/timeline/AttachmentHelper;->PARSER:Lcom/google/glass/net/ProtoParser;

    invoke-virtual {v7, v8, v3, v9}, Lcom/google/glass/net/ProtoRequestDispatcher;->blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;Lcom/google/glass/net/ProtoParser;)Lcom/google/glass/net/ProtoResponse;

    move-result-object v4

    .line 105
    .local v4, response:Lcom/google/glass/net/ProtoResponse;,"Lcom/google/glass/net/ProtoResponse<Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;>;"
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/google/glass/net/ProtoResponse;->isSuccess()Z

    move-result v7

    if-nez v7, :cond_2

    .line 118
    :cond_1
    :goto_0
    return-object v0

    .line 111
    :cond_2
    invoke-virtual {v4}, Lcom/google/glass/net/ProtoResponse;->getResponseProto()Lcom/google/protobuf/nano/MessageNano;

    move-result-object v5

    check-cast v5, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;

    .line 112
    .local v5, responseProto:Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;
    iget v7, v5, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->responseCode:I

    if-nez v7, :cond_1

    .line 113
    iget-object v0, v5, Lcom/google/googlex/glass/common/proto/SyncNano$AttachmentGetResponse;->content:[B

    .line 114
    .local v0, content:[B
    sget-object v7, Lcom/google/glass/timeline/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Successfully get attachment from server: %s, %s bytes."

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p1, v9, v10

    invoke-static {v0}, Lcom/google/glass/util/ArrayUtils;->length([B)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method getRequestDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/glass/timeline/AttachmentHelper;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getPooledRequestDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v0

    return-object v0
.end method
