.class public final Lcom/google/glass/companion/Proto$GlassSetupRequest;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlassSetupRequest"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$GlassSetupRequest;


# instance fields
.field private cachedSize:I

.field public setupString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3413
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$GlassSetupRequest;

    sput-object v0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$GlassSetupRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3414
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 3445
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->cachedSize:I

    .line 3414
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassSetupRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3497
    new-instance v0, Lcom/google/glass/companion/Proto$GlassSetupRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$GlassSetupRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$GlassSetupRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassSetupRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$GlassSetupRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3491
    new-instance v0, Lcom/google/glass/companion/Proto$GlassSetupRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$GlassSetupRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$GlassSetupRequest;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/glass/companion/Proto$GlassSetupRequest;
    .locals 1

    .prologue
    .line 3419
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->setupString:Ljava/lang/String;

    .line 3420
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->cachedSize:I

    .line 3421
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3426
    if-ne p1, p0, :cond_1

    .line 3429
    :cond_0
    :goto_0
    return v1

    .line 3427
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$GlassSetupRequest;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 3428
    check-cast v0, Lcom/google/glass/companion/Proto$GlassSetupRequest;

    .line 3429
    .local v0, other:Lcom/google/glass/companion/Proto$GlassSetupRequest;
    iget-object v3, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->setupString:Ljava/lang/String;

    if-nez v3, :cond_3

    iget-object v3, v0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->setupString:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->setupString:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->setupString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3448
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->cachedSize:I

    if-gez v0, :cond_0

    .line 3450
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$GlassSetupRequest;->getSerializedSize()I

    .line 3452
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 3457
    const/4 v0, 0x0

    .line 3458
    .local v0, size:I
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->setupString:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3459
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->setupString:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3462
    :cond_0
    iput v0, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->cachedSize:I

    .line 3463
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 3433
    const/16 v0, 0x11

    .line 3434
    .local v0, result:I
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->setupString:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 3435
    return v0

    .line 3434
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->setupString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassSetupRequest;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3471
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3472
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 3476
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3477
    :sswitch_0
    return-object p0

    .line 3482
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->setupString:Ljava/lang/String;

    goto :goto_0

    .line 3472
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3410
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$GlassSetupRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassSetupRequest;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3440
    iget-object v0, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->setupString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3441
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassSetupRequest;->setupString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3443
    :cond_0
    return-void
.end method
