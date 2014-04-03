.class public final Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EmbeddedAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/voicesearch/proto/EmbeddedAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EmbeddedActionContact"
.end annotation


# static fields
.field public static final GRAMMAR_WEIGHT_FIELD_NUMBER:I = 0x1

.field public static final MERGED_FIELD_NUMBER:I = 0x3

.field public static final SYNCED_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private grammarWeight_:D

.field private hasGrammarWeight:Z

.field private hasMerged:Z

.field private hasSynced:Z

.field private merged_:Z

.field private synced_:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;->grammarWeight_:D

    .line 32
    iput-boolean v2, p0, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;->synced_:Z

    .line 49
    iput-boolean v2, p0, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;->merged_:Z

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;->cachedSize:I

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    new-instance v0, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 151
    new-instance v0, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;

    check-cast v0, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;->clearGrammarWeight()Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;

    .line 65
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;->clearSynced()Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;

    .line 66
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;->clearMerged()Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;->cachedSize:I

    .line 68
    return-object p0
.end method

.method public clearGrammarWeight()Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;
    .locals 2

    .prologue
    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;->hasGrammarWeight:Z

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;->grammarWeight_:D

    .line 26
    return-object p0
.end method

.method public clearMerged()Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;->hasMerged:Z

    .line 59
    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;->merged_:Z

    .line 60
    return-object p0
.end method

.method public clearSynced()Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;->hasSynced:Z

    .line 42
    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;->synced_:Z

    .line 43
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;->cachedSize:I

    if-gez v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;->getSerializedSize()I

    .line 96
    :cond_0
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;->cachedSize:I

    return v0
.end method

.method public getGrammarWeight()D
    .locals 2

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;->grammarWeight_:D

    return-wide v0
.end method

.method public getMerged()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;->merged_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;->hasGrammarWeight()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;->getGrammarWeight()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;->hasSynced()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;->getSynced()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 110
    :cond_1
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;->hasMerged()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 111
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;->getMerged()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 114
    :cond_2
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;->cachedSize:I

    .line 115
    return v0
.end method

.method public getSynced()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;->synced_:Z

    return v0
.end method

.method public hasGrammarWeight()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;->hasGrammarWeight:Z

    return v0
.end method

.method public hasMerged()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;->hasMerged:Z

    return v0
.end method

.method public hasSynced()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;->hasSynced:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 72
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 124
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 128
    invoke-virtual {p0, p1, v0}, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    :sswitch_0
    return-object p0

    .line 134
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readDouble()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;->setGrammarWeight(D)Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;

    goto :goto_0

    .line 138
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;->setSynced(Z)Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;

    goto :goto_0

    .line 142
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;->setMerged(Z)Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;

    goto :goto_0

    .line 124
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public setGrammarWeight(D)Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;
    .locals 1
    .parameter "value"

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;->hasGrammarWeight:Z

    .line 20
    iput-wide p1, p0, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;->grammarWeight_:D

    .line 21
    return-object p0
.end method

.method public setMerged(Z)Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;
    .locals 1
    .parameter "value"

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;->hasMerged:Z

    .line 54
    iput-boolean p1, p0, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;->merged_:Z

    .line 55
    return-object p0
.end method

.method public setSynced(Z)Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;
    .locals 1
    .parameter "value"

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;->hasSynced:Z

    .line 37
    iput-boolean p1, p0, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;->synced_:Z

    .line 38
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;->hasGrammarWeight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;->getGrammarWeight()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeDouble(ID)V

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;->hasSynced()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;->getSynced()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;->hasMerged()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/EmbeddedAction$EmbeddedActionContact;->getMerged()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 87
    :cond_2
    return-void
.end method
