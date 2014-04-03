.class public final Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
.super Lcom/google/protobuf/nano/MessageNano;
.source "TimelineNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Command"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command$InvocationMode;,
        Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command$InputType;,
        Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command$CommandType;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;


# instance fields
.field private cachedSize:I

.field public completionLabel:Ljava/lang/String;

.field public inputType:I

.field public invocationMode:I

.field public isVoiceEnabled:Ljava/lang/Boolean;

.field public pendingLabel:Ljava/lang/String;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1848
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, -0x8000

    .line 1849
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 1875
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->type:I

    .line 1880
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->inputType:I

    .line 1887
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->invocationMode:I

    .line 1946
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->cachedSize:I

    .line 1849
    return-void
.end method


# virtual methods
.method public final clear()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/high16 v0, -0x8000

    .line 1890
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->type:I

    .line 1891
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->isVoiceEnabled:Ljava/lang/Boolean;

    .line 1892
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->inputType:I

    .line 1893
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->pendingLabel:Ljava/lang/String;

    .line 1894
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->completionLabel:Ljava/lang/String;

    .line 1895
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->invocationMode:I

    .line 1896
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->cachedSize:I

    .line 1897
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1902
    if-ne p1, p0, :cond_1

    .line 1905
    :cond_0
    :goto_0
    return v1

    .line 1903
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1904
    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    .line 1905
    .local v0, other:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->type:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->type:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->isVoiceEnabled:Ljava/lang/Boolean;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->isVoiceEnabled:Ljava/lang/Boolean;

    if-nez v3, :cond_3

    :goto_1
    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->inputType:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->inputType:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->pendingLabel:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->pendingLabel:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->completionLabel:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->completionLabel:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_3
    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->invocationMode:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->invocationMode:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->isVoiceEnabled:Ljava/lang/Boolean;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->isVoiceEnabled:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->pendingLabel:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->pendingLabel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->completionLabel:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->completionLabel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1949
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->cachedSize:I

    if-gez v0, :cond_0

    .line 1951
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->getSerializedSize()I

    .line 1953
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/high16 v3, -0x8000

    .line 1958
    const/4 v0, 0x0

    .line 1959
    .local v0, size:I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->type:I

    if-eq v1, v3, :cond_0

    .line 1960
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->type:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1963
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->isVoiceEnabled:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 1964
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->isVoiceEnabled:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1967
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->inputType:I

    if-eq v1, v3, :cond_2

    .line 1968
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->inputType:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1971
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->pendingLabel:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1972
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->pendingLabel:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1975
    :cond_3
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->completionLabel:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 1976
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->completionLabel:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1979
    :cond_4
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->invocationMode:I

    if-eq v1, v3, :cond_5

    .line 1980
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->invocationMode:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1983
    :cond_5
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->cachedSize:I

    .line 1984
    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1914
    const/16 v0, 0x11

    .line 1915
    .local v0, result:I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->type:I

    add-int/lit16 v0, v1, 0x20f

    .line 1916
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->isVoiceEnabled:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int v0, v3, v1

    .line 1917
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->inputType:I

    add-int v0, v1, v3

    .line 1918
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->pendingLabel:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 1919
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->completionLabel:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_2
    add-int v0, v1, v2

    .line 1920
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->invocationMode:I

    add-int v0, v1, v2

    .line 1921
    return v0

    .line 1916
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->isVoiceEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    .line 1918
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->pendingLabel:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    .line 1919
    :cond_3
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->completionLabel:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1992
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1993
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1997
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1998
    :sswitch_0
    return-object p0

    .line 2003
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 2004
    .local v1, temp:I
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->type:I

    goto :goto_0

    .line 2008
    .end local v1           #temp:I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->isVoiceEnabled:Ljava/lang/Boolean;

    goto :goto_0

    .line 2012
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 2013
    .restart local v1       #temp:I
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->inputType:I

    goto :goto_0

    .line 2017
    .end local v1           #temp:I
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->pendingLabel:Ljava/lang/String;

    goto :goto_0

    .line 2021
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->completionLabel:Ljava/lang/String;

    goto :goto_0

    .line 2025
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 2026
    .restart local v1       #temp:I
    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->invocationMode:I

    goto :goto_0

    .line 1993
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
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
    .line 1845
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2041
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2035
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;-><init>()V

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v2, -0x8000

    .line 1926
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->type:I

    if-eq v0, v2, :cond_0

    .line 1927
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->type:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1929
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->isVoiceEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 1930
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->isVoiceEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1932
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->inputType:I

    if-eq v0, v2, :cond_2

    .line 1933
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->inputType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1935
    :cond_2
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->pendingLabel:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1936
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->pendingLabel:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1938
    :cond_3
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->completionLabel:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1939
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->completionLabel:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1941
    :cond_4
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->invocationMode:I

    if-eq v0, v2, :cond_5

    .line 1942
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->invocationMode:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1944
    :cond_5
    return-void
.end method
