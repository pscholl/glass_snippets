.class public final Lcom/google/glass/companion/Proto$GlassSetupResponse;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlassSetupResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/Proto$GlassSetupResponse$SetupStatus;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$GlassSetupResponse;


# instance fields
.field private cachedSize:I

.field public setupStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3505
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$GlassSetupResponse;

    sput-object v0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$GlassSetupResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3506
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 3514
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->setupStatus:I

    .line 3543
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->cachedSize:I

    .line 3506
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassSetupResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3596
    new-instance v0, Lcom/google/glass/companion/Proto$GlassSetupResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$GlassSetupResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$GlassSetupResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassSetupResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$GlassSetupResponse;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3590
    new-instance v0, Lcom/google/glass/companion/Proto$GlassSetupResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$GlassSetupResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$GlassSetupResponse;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/glass/companion/Proto$GlassSetupResponse;
    .locals 1

    .prologue
    .line 3517
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->setupStatus:I

    .line 3518
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->cachedSize:I

    .line 3519
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3524
    if-ne p1, p0, :cond_1

    .line 3527
    :cond_0
    :goto_0
    return v1

    .line 3525
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$GlassSetupResponse;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 3526
    check-cast v0, Lcom/google/glass/companion/Proto$GlassSetupResponse;

    .line 3527
    .local v0, other:Lcom/google/glass/companion/Proto$GlassSetupResponse;
    iget v3, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->setupStatus:I

    iget v4, v0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->setupStatus:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3546
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 3548
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$GlassSetupResponse;->getSerializedSize()I

    .line 3550
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 3555
    const/4 v0, 0x0

    .line 3556
    .local v0, size:I
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->setupStatus:I

    const/high16 v2, -0x8000

    if-eq v1, v2, :cond_0

    .line 3557
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->setupStatus:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3560
    :cond_0
    iput v0, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->cachedSize:I

    .line 3561
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 3531
    const/16 v0, 0x11

    .line 3532
    .local v0, result:I
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->setupStatus:I

    add-int/lit16 v0, v1, 0x20f

    .line 3533
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassSetupResponse;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3569
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3570
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 3574
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3575
    :sswitch_0
    return-object p0

    .line 3580
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 3581
    .local v1, temp:I
    iput v1, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->setupStatus:I

    goto :goto_0

    .line 3570
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    .line 3502
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$GlassSetupResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassSetupResponse;

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
    .line 3538
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->setupStatus:I

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_0

    .line 3539
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse;->setupStatus:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3541
    :cond_0
    return-void
.end method
