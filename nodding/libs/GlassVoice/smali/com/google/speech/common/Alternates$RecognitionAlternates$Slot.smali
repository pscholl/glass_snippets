.class public final Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Alternates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/common/Alternates$RecognitionAlternates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Slot"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
    }
.end annotation


# static fields
.field public static final ALTERNATE_FIELD_NUMBER:I = 0x4

.field public static final FIRST_WORD_FIELD_NUMBER:I = 0x2

.field public static final ORIGINAL_PHRASE_CONFIDENCE_FIELD_NUMBER:I = 0x7

.field public static final PHRASE_LENGTH_FIELD_NUMBER:I = 0x3


# instance fields
.field private alternate_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private firstWord_:I

.field private hasFirstWord:Z

.field private hasOriginalPhraseConfidence:Z

.field private hasPhraseLength:Z

.field private originalPhraseConfidence_:F

.field private phraseLength_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 685
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 818
    iput v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->firstWord_:I

    .line 835
    iput v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->phraseLength_:I

    .line 851
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->alternate_:Ljava/util/List;

    .line 885
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->originalPhraseConfidence_:F

    .line 935
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->cachedSize:I

    .line 685
    return-void
.end method


# virtual methods
.method public addAlternate(Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;)Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;
    .locals 1
    .parameter "value"

    .prologue
    .line 868
    if-nez p1, :cond_0

    .line 869
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 871
    :cond_0
    iget-object v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->alternate_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 872
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->alternate_:Ljava/util/List;

    .line 874
    :cond_1
    iget-object v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->alternate_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 875
    return-object p0
.end method

.method public final clear()Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;
    .locals 1

    .prologue
    .line 900
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->clearFirstWord()Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;

    .line 901
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->clearPhraseLength()Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;

    .line 902
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->clearAlternate()Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;

    .line 903
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->clearOriginalPhraseConfidence()Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;

    .line 904
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->cachedSize:I

    .line 905
    return-object p0
.end method

.method public clearAlternate()Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;
    .locals 1

    .prologue
    .line 878
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->alternate_:Ljava/util/List;

    .line 879
    return-object p0
.end method

.method public clearFirstWord()Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 827
    iput-boolean v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->hasFirstWord:Z

    .line 828
    iput v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->firstWord_:I

    .line 829
    return-object p0
.end method

.method public clearOriginalPhraseConfidence()Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;
    .locals 1

    .prologue
    .line 894
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->hasOriginalPhraseConfidence:Z

    .line 895
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->originalPhraseConfidence_:F

    .line 896
    return-object p0
.end method

.method public clearPhraseLength()Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 844
    iput-boolean v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->hasPhraseLength:Z

    .line 845
    iput v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->phraseLength_:I

    .line 846
    return-object p0
.end method

.method public getAlternate(I)Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
    .locals 1
    .parameter "index"

    .prologue
    .line 858
    iget-object v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->alternate_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    return-object v0
.end method

.method public getAlternateCount()I
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->alternate_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAlternateList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 854
    iget-object v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->alternate_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 938
    iget v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->cachedSize:I

    if-gez v0, :cond_0

    .line 940
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->getSerializedSize()I

    .line 942
    :cond_0
    iget v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->cachedSize:I

    return v0
.end method

.method public getFirstWord()I
    .locals 1

    .prologue
    .line 819
    iget v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->firstWord_:I

    return v0
.end method

.method public getOriginalPhraseConfidence()F
    .locals 1

    .prologue
    .line 886
    iget v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->originalPhraseConfidence_:F

    return v0
.end method

.method public getPhraseLength()I
    .locals 1

    .prologue
    .line 836
    iget v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->phraseLength_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 947
    const/4 v2, 0x0

    .line 948
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->hasFirstWord()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 949
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->getFirstWord()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 952
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->hasPhraseLength()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 953
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->getPhraseLength()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 956
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->getAlternateList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    .line 957
    .local v0, element:Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeGroupSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 960
    .end local v0           #element:Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->hasOriginalPhraseConfidence()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 961
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->getOriginalPhraseConfidence()F

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v3

    add-int/2addr v2, v3

    .line 964
    :cond_3
    iput v2, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->cachedSize:I

    .line 965
    return v2
.end method

.method public hasFirstWord()Z
    .locals 1

    .prologue
    .line 820
    iget-boolean v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->hasFirstWord:Z

    return v0
.end method

.method public hasOriginalPhraseConfidence()Z
    .locals 1

    .prologue
    .line 887
    iget-boolean v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->hasOriginalPhraseConfidence:Z

    return v0
.end method

.method public hasPhraseLength()Z
    .locals 1

    .prologue
    .line 837
    iget-boolean v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->hasPhraseLength:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 909
    iget-boolean v3, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->hasFirstWord:Z

    if-nez v3, :cond_1

    .line 915
    :cond_0
    :goto_0
    return v2

    .line 910
    :cond_1
    iget-boolean v3, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->hasPhraseLength:Z

    if-eqz v3, :cond_0

    .line 911
    iget-boolean v3, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->hasOriginalPhraseConfidence:Z

    if-eqz v3, :cond_0

    .line 912
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->getAlternateList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    .line 913
    .local v0, element:Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
    invoke-virtual {v0}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 915
    .end local v0           #element:Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
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
    .line 682
    invoke-virtual {p0, p1}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 973
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 974
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 978
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 979
    :sswitch_0
    return-object p0

    .line 984
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->setFirstWord(I)Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;

    goto :goto_0

    .line 988
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->setPhraseLength(I)Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;

    goto :goto_0

    .line 992
    :sswitch_3
    new-instance v1, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    invoke-direct {v1}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;-><init>()V

    .line 993
    .local v1, value:Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readGroup(Lcom/google/protobuf/micro/MessageMicro;I)V

    .line 994
    invoke-virtual {p0, v1}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->addAlternate(Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;)Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;

    goto :goto_0

    .line 998
    .end local v1           #value:Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->setOriginalPhraseConfidence(F)Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;

    goto :goto_0

    .line 974
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10 -> :sswitch_1
        0x18 -> :sswitch_2
        0x23 -> :sswitch_3
        0x3d -> :sswitch_4
    .end sparse-switch
.end method

.method public parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1013
    new-instance v0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;

    invoke-direct {v0}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([B)Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1007
    new-instance v0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;

    invoke-direct {v0}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;

    check-cast v0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;

    return-object v0
.end method

.method public setAlternate(ILcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;)Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 861
    if-nez p2, :cond_0

    .line 862
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 864
    :cond_0
    iget-object v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->alternate_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 865
    return-object p0
.end method

.method public setFirstWord(I)Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;
    .locals 1
    .parameter "value"

    .prologue
    .line 822
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->hasFirstWord:Z

    .line 823
    iput p1, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->firstWord_:I

    .line 824
    return-object p0
.end method

.method public setOriginalPhraseConfidence(F)Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;
    .locals 1
    .parameter "value"

    .prologue
    .line 889
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->hasOriginalPhraseConfidence:Z

    .line 890
    iput p1, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->originalPhraseConfidence_:F

    .line 891
    return-object p0
.end method

.method public setPhraseLength(I)Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;
    .locals 1
    .parameter "value"

    .prologue
    .line 839
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->hasPhraseLength:Z

    .line 840
    iput p1, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->phraseLength_:I

    .line 841
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
    .line 921
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->hasFirstWord()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 922
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->getFirstWord()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 924
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->hasPhraseLength()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 925
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->getPhraseLength()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 927
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->getAlternateList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    .line 928
    .local v0, element:Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeGroup(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 930
    .end local v0           #element:Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->hasOriginalPhraseConfidence()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 931
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;->getOriginalPhraseConfidence()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 933
    :cond_3
    return-void
.end method
