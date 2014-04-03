.class public final Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "GstaticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/voicesearch/proto/GstaticConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Language"
.end annotation


# static fields
.field public static final DIALECT_FIELD_NUMBER:I = 0x2

.field public static final DISPLAY_NAME_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private dialect_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;",
            ">;"
        }
    .end annotation
.end field

.field private displayName_:Ljava/lang/String;

.field private hasDisplayName:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3284
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3289
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->displayName_:Ljava/lang/String;

    .line 3305
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->dialect_:Ljava/util/List;

    .line 3358
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->cachedSize:I

    .line 3284
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3420
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 3414
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    return-object v0
.end method


# virtual methods
.method public addDialect(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .locals 1
    .parameter "value"

    .prologue
    .line 3322
    if-nez p1, :cond_0

    .line 3323
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3325
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->dialect_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->dialect_:Ljava/util/List;

    .line 3328
    :cond_1
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->dialect_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3329
    return-object p0
.end method

.method public final clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .locals 1

    .prologue
    .line 3337
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->clearDisplayName()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    .line 3338
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->clearDialect()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    .line 3339
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->cachedSize:I

    .line 3340
    return-object p0
.end method

.method public clearDialect()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .locals 1

    .prologue
    .line 3332
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->dialect_:Ljava/util/List;

    .line 3333
    return-object p0
.end method

.method public clearDisplayName()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .locals 1

    .prologue
    .line 3298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->hasDisplayName:Z

    .line 3299
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->displayName_:Ljava/lang/String;

    .line 3300
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3361
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->cachedSize:I

    if-gez v0, :cond_0

    .line 3363
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->getSerializedSize()I

    .line 3365
    :cond_0
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->cachedSize:I

    return v0
.end method

.method public getDialect(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    .locals 1
    .parameter "index"

    .prologue
    .line 3312
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->dialect_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    return-object v0
.end method

.method public getDialectCount()I
    .locals 1

    .prologue
    .line 3310
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->dialect_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDialectList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3308
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->dialect_:Ljava/util/List;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3290
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->displayName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 3370
    const/4 v2, 0x0

    .line 3371
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->hasDisplayName()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3372
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3375
    :cond_0
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->getDialectList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    .line 3376
    .local v0, element:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 3379
    .end local v0           #element:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    :cond_1
    iput v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->cachedSize:I

    .line 3380
    return v2
.end method

.method public hasDisplayName()Z
    .locals 1

    .prologue
    .line 3291
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->hasDisplayName:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3344
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3281
    invoke-virtual {p0, p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3388
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3389
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 3393
    invoke-virtual {p0, p1, v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3394
    :sswitch_0
    return-object p0

    .line 3399
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->setDisplayName(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    goto :goto_0

    .line 3403
    :sswitch_2
    new-instance v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    invoke-direct {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;-><init>()V

    .line 3404
    .local v1, value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 3405
    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->addDialect(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;

    goto :goto_0

    .line 3389
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setDialect(ILcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3315
    if-nez p2, :cond_0

    .line 3316
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3318
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->dialect_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3319
    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;
    .locals 1
    .parameter "value"

    .prologue
    .line 3293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->hasDisplayName:Z

    .line 3294
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->displayName_:Ljava/lang/String;

    .line 3295
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3350
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->hasDisplayName()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3351
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3353
    :cond_0
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Language;->getDialectList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;

    .line 3354
    .local v0, element:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 3356
    .end local v0           #element:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Dialect;
    :cond_1
    return-void
.end method
