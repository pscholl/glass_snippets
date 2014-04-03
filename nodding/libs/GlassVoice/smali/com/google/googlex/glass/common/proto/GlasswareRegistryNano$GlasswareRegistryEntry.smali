.class public final Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;
.super Lcom/google/protobuf/nano/MessageNano;
.source "GlasswareRegistryNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlasswareRegistryEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry$Visibility;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;


# instance fields
.field public authUrl:Ljava/lang/String;

.field private cachedSize:I

.field public feedbackUrl:Ljava/lang/String;

.field public iconGlass160Url:Ljava/lang/String;

.field public iconGlass30Url:Ljava/lang/String;

.field public iconGlass50Url:Ljava/lang/String;

.field public iconWeb40Url:Ljava/lang/String;

.field public iconWeb85Url:Ljava/lang/String;

.field public internalGlassware:Ljava/lang/Integer;

.field public messages:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;

.field public moreInfoUrl:Ljava/lang/String;

.field public nameTextColor:Ljava/lang/String;

.field public projectId:Ljava/lang/Long;

.field public settingsUrl:Ljava/lang/String;

.field public visibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;

    sput-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 40
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->messages:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;

    .line 55
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->visibility:I

    .line 169
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->cachedSize:I

    .line 17
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    new-instance v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 336
    new-instance v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->projectId:Ljava/lang/Long;

    .line 59
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconGlass30Url:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconGlass50Url:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconGlass160Url:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconWeb40Url:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconWeb85Url:Ljava/lang/String;

    .line 64
    sget-object v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->messages:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;

    .line 65
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->authUrl:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->settingsUrl:Ljava/lang/String;

    .line 67
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->moreInfoUrl:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->feedbackUrl:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->internalGlassware:Ljava/lang/Integer;

    .line 70
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->nameTextColor:Ljava/lang/String;

    .line 71
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->visibility:I

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->cachedSize:I

    .line 73
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 78
    if-ne p1, p0, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v1

    .line 79
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 80
    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;

    .line 81
    .local v0, other:Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->projectId:Ljava/lang/Long;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->projectId:Ljava/lang/Long;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconGlass30Url:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconGlass30Url:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconGlass50Url:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconGlass50Url:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconGlass160Url:Ljava/lang/String;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconGlass160Url:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconWeb40Url:Ljava/lang/String;

    if-nez v3, :cond_8

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconWeb40Url:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconWeb85Url:Ljava/lang/String;

    if-nez v3, :cond_9

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconWeb85Url:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->messages:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->messages:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->authUrl:Ljava/lang/String;

    if-nez v3, :cond_a

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->authUrl:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->settingsUrl:Ljava/lang/String;

    if-nez v3, :cond_b

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->settingsUrl:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_8
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->moreInfoUrl:Ljava/lang/String;

    if-nez v3, :cond_c

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->moreInfoUrl:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_9
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->feedbackUrl:Ljava/lang/String;

    if-nez v3, :cond_d

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->feedbackUrl:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_a
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->internalGlassware:Ljava/lang/Integer;

    if-nez v3, :cond_e

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->internalGlassware:Ljava/lang/Integer;

    if-nez v3, :cond_3

    :goto_b
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->nameTextColor:Ljava/lang/String;

    if-nez v3, :cond_f

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->nameTextColor:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_c
    iget v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->visibility:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->visibility:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->projectId:Ljava/lang/Long;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->projectId:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconGlass30Url:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconGlass30Url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconGlass50Url:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconGlass50Url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconGlass160Url:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconGlass160Url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconWeb40Url:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconWeb40Url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_5

    :cond_9
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconWeb85Url:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconWeb85Url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_6

    :cond_a
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->authUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->authUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_7

    :cond_b
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->settingsUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->settingsUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_8

    :cond_c
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->moreInfoUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->moreInfoUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_9

    :cond_d
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->feedbackUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->feedbackUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_a

    :cond_e
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->internalGlassware:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->internalGlassware:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_b

    :cond_f
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->nameTextColor:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->nameTextColor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_c
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->cachedSize:I

    if-gez v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->getSerializedSize()I

    .line 176
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    .line 181
    const/4 v4, 0x0

    .line 182
    .local v4, size:I
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->projectId:Ljava/lang/Long;

    if-eqz v5, :cond_0

    .line 183
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->projectId:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    .line 186
    :cond_0
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconGlass30Url:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 187
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconGlass30Url:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 190
    :cond_1
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconGlass50Url:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 191
    const/4 v5, 0x3

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconGlass50Url:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 194
    :cond_2
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconGlass160Url:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 195
    const/4 v5, 0x4

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconGlass160Url:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 198
    :cond_3
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->messages:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;

    if-eqz v5, :cond_4

    .line 199
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->messages:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v1, v0, v2

    .line 200
    .local v1, element:Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;
    const/4 v5, 0x5

    invoke-static {v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    .line 199
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 204
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_4
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->authUrl:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 205
    const/4 v5, 0x6

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->authUrl:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 208
    :cond_5
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->settingsUrl:Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 209
    const/4 v5, 0x7

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->settingsUrl:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 212
    :cond_6
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->moreInfoUrl:Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 213
    const/16 v5, 0x8

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->moreInfoUrl:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 216
    :cond_7
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->internalGlassware:Ljava/lang/Integer;

    if-eqz v5, :cond_8

    .line 217
    const/16 v5, 0x9

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->internalGlassware:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 220
    :cond_8
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->nameTextColor:Ljava/lang/String;

    if-eqz v5, :cond_9

    .line 221
    const/16 v5, 0xb

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->nameTextColor:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 224
    :cond_9
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconWeb40Url:Ljava/lang/String;

    if-eqz v5, :cond_a

    .line 225
    const/16 v5, 0xc

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconWeb40Url:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 228
    :cond_a
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconWeb85Url:Ljava/lang/String;

    if-eqz v5, :cond_b

    .line 229
    const/16 v5, 0xd

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconWeb85Url:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 232
    :cond_b
    iget v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->visibility:I

    const/high16 v6, -0x8000

    if-eq v5, v6, :cond_c

    .line 233
    const/16 v5, 0xe

    iget v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->visibility:I

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 236
    :cond_c
    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->feedbackUrl:Ljava/lang/String;

    if-eqz v5, :cond_d

    .line 237
    const/16 v5, 0xf

    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->feedbackUrl:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 240
    :cond_d
    iput v4, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->cachedSize:I

    .line 241
    return v4
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 98
    const/16 v1, 0x11

    .line 99
    .local v1, result:I
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->projectId:Ljava/lang/Long;

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    add-int/lit16 v1, v2, 0x20f

    .line 100
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconGlass30Url:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 101
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconGlass50Url:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 102
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconGlass160Url:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    .line 103
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconWeb40Url:Ljava/lang/String;

    if-nez v2, :cond_5

    move v2, v3

    :goto_4
    add-int v1, v4, v2

    .line 104
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconWeb85Url:Ljava/lang/String;

    if-nez v2, :cond_6

    move v2, v3

    :goto_5
    add-int v1, v4, v2

    .line 105
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->messages:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;

    if-nez v2, :cond_7

    mul-int/lit8 v1, v1, 0x1f

    .line 111
    :cond_0
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->authUrl:Ljava/lang/String;

    if-nez v2, :cond_9

    move v2, v3

    :goto_6
    add-int v1, v4, v2

    .line 112
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->settingsUrl:Ljava/lang/String;

    if-nez v2, :cond_a

    move v2, v3

    :goto_7
    add-int v1, v4, v2

    .line 113
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->moreInfoUrl:Ljava/lang/String;

    if-nez v2, :cond_b

    move v2, v3

    :goto_8
    add-int v1, v4, v2

    .line 114
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->feedbackUrl:Ljava/lang/String;

    if-nez v2, :cond_c

    move v2, v3

    :goto_9
    add-int v1, v4, v2

    .line 115
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->internalGlassware:Ljava/lang/Integer;

    if-nez v2, :cond_d

    move v2, v3

    :goto_a
    add-int v1, v4, v2

    .line 116
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->nameTextColor:Ljava/lang/String;

    if-nez v4, :cond_e

    :goto_b
    add-int v1, v2, v3

    .line 117
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->visibility:I

    add-int v1, v2, v3

    .line 118
    return v1

    .line 99
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->projectId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->projectId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/16 v2, 0x20

    ushr-long/2addr v6, v2

    xor-long/2addr v4, v6

    long-to-int v2, v4

    goto/16 :goto_0

    .line 100
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconGlass30Url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1

    .line 101
    :cond_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconGlass50Url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 102
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconGlass160Url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 103
    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconWeb40Url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    .line 104
    :cond_6
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconWeb85Url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    .line 107
    :cond_7
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->messages:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 108
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->messages:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;

    aget-object v2, v2, v0

    if-nez v2, :cond_8

    move v2, v3

    :goto_d
    add-int v1, v4, v2

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 108
    :cond_8
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->messages:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;->hashCode()I

    move-result v2

    goto :goto_d

    .line 111
    .end local v0           #i:I
    :cond_9
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->authUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_6

    .line 112
    :cond_a
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->settingsUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_7

    .line 113
    :cond_b
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->moreInfoUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_8

    .line 114
    :cond_c
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->feedbackUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_9

    .line 115
    :cond_d
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->internalGlassware:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto/16 :goto_a

    .line 116
    :cond_e
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->nameTextColor:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_b
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;
    .locals 8
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 249
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 250
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 254
    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 255
    :sswitch_0
    return-object p0

    .line 260
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->projectId:Ljava/lang/Long;

    goto :goto_0

    .line 264
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconGlass30Url:Ljava/lang/String;

    goto :goto_0

    .line 268
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconGlass50Url:Ljava/lang/String;

    goto :goto_0

    .line 272
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconGlass160Url:Ljava/lang/String;

    goto :goto_0

    .line 276
    :sswitch_5
    const/16 v6, 0x2a

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 277
    .local v0, arrayLength:I
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->messages:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;

    if-nez v6, :cond_2

    move v1, v5

    .line 278
    .local v1, i:I
    :goto_1
    add-int v6, v1, v0

    new-array v2, v6, [Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;

    .line 279
    .local v2, newArray:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->messages:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;

    if-eqz v6, :cond_1

    .line 280
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->messages:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 282
    :cond_1
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->messages:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;

    .line 283
    :goto_2
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->messages:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_3

    .line 284
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->messages:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;

    new-instance v7, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;-><init>()V

    aput-object v7, v6, v1

    .line 285
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->messages:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 286
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 283
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 277
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;
    :cond_2
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->messages:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;

    array-length v1, v6

    goto :goto_1

    .line 289
    .restart local v1       #i:I
    .restart local v2       #newArray:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;
    :cond_3
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->messages:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;

    new-instance v7, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;

    invoke-direct {v7}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;-><init>()V

    aput-object v7, v6, v1

    .line 290
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->messages:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;

    aget-object v6, v6, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 294
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v2           #newArray:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->authUrl:Ljava/lang/String;

    goto :goto_0

    .line 298
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->settingsUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 302
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->moreInfoUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 306
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->internalGlassware:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 310
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->nameTextColor:Ljava/lang/String;

    goto/16 :goto_0

    .line 314
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconWeb40Url:Ljava/lang/String;

    goto/16 :goto_0

    .line 318
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconWeb85Url:Ljava/lang/String;

    goto/16 :goto_0

    .line 322
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    .line 323
    .local v4, temp:I
    iput v4, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->visibility:I

    goto/16 :goto_0

    .line 327
    .end local v4           #temp:I
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->feedbackUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 250
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x48 -> :sswitch_9
        0x5a -> :sswitch_a
        0x62 -> :sswitch_b
        0x6a -> :sswitch_c
        0x70 -> :sswitch_d
        0x7a -> :sswitch_e
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
    .line 13
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->projectId:Ljava/lang/Long;

    if-eqz v4, :cond_0

    .line 124
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->projectId:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p1, v4, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 126
    :cond_0
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconGlass30Url:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 127
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconGlass30Url:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 129
    :cond_1
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconGlass50Url:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 130
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconGlass50Url:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 132
    :cond_2
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconGlass160Url:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 133
    const/4 v4, 0x4

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconGlass160Url:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 135
    :cond_3
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->messages:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;

    if-eqz v4, :cond_4

    .line 136
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->messages:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;

    .local v0, arr$:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v1, v0, v2

    .line 137
    .local v1, element:Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;
    const/4 v4, 0x5

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 136
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 140
    .end local v0           #arr$:[Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;
    .end local v1           #element:Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareMessages;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_4
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->authUrl:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 141
    const/4 v4, 0x6

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->authUrl:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 143
    :cond_5
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->settingsUrl:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 144
    const/4 v4, 0x7

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->settingsUrl:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 146
    :cond_6
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->moreInfoUrl:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 147
    const/16 v4, 0x8

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->moreInfoUrl:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 149
    :cond_7
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->internalGlassware:Ljava/lang/Integer;

    if-eqz v4, :cond_8

    .line 150
    const/16 v4, 0x9

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->internalGlassware:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 152
    :cond_8
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->nameTextColor:Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 153
    const/16 v4, 0xb

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->nameTextColor:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 155
    :cond_9
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconWeb40Url:Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 156
    const/16 v4, 0xc

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconWeb40Url:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 158
    :cond_a
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconWeb85Url:Ljava/lang/String;

    if-eqz v4, :cond_b

    .line 159
    const/16 v4, 0xd

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->iconWeb85Url:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 161
    :cond_b
    iget v4, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->visibility:I

    const/high16 v5, -0x8000

    if-eq v4, v5, :cond_c

    .line 162
    const/16 v4, 0xe

    iget v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->visibility:I

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 164
    :cond_c
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->feedbackUrl:Ljava/lang/String;

    if-eqz v4, :cond_d

    .line 165
    const/16 v4, 0xf

    iget-object v5, p0, Lcom/google/googlex/glass/common/proto/GlasswareRegistryNano$GlasswareRegistryEntry;->feedbackUrl:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 167
    :cond_d
    return-void
.end method
