.class public final Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "GstaticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/voicesearch/proto/GstaticConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VoiceSearch"
.end annotation


# static fields
.field public static final ACTION_COUNT_DOWN_MSEC_FIELD_NUMBER:I = 0x2

.field public static final EMBEDDED_RECOGNIZER_FALLBACK_TIMEOUT_FIELD_NUMBER:I = 0x3

.field public static final ENDPOINTER_PARAMS_FIELD_NUMBER:I = 0x1


# instance fields
.field private actionCountDownMsec_:I

.field private cachedSize:I

.field private embeddedRecognizerFallbackTimeout_:I

.field private endpointerParams_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

.field private hasActionCountDownMsec:Z

.field private hasEmbeddedRecognizerFallbackTimeout:Z

.field private hasEndpointerParams:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3022
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3027
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->endpointerParams_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    .line 3047
    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->actionCountDownMsec_:I

    .line 3064
    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->embeddedRecognizerFallbackTimeout_:I

    .line 3104
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->cachedSize:I

    .line 3022
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3174
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 3168
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;
    .locals 1

    .prologue
    .line 3079
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->clearEndpointerParams()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;

    .line 3080
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->clearActionCountDownMsec()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;

    .line 3081
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->clearEmbeddedRecognizerFallbackTimeout()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;

    .line 3082
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->cachedSize:I

    .line 3083
    return-object p0
.end method

.method public clearActionCountDownMsec()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3056
    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->hasActionCountDownMsec:Z

    .line 3057
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->actionCountDownMsec_:I

    .line 3058
    return-object p0
.end method

.method public clearEmbeddedRecognizerFallbackTimeout()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3073
    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->hasEmbeddedRecognizerFallbackTimeout:Z

    .line 3074
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->embeddedRecognizerFallbackTimeout_:I

    .line 3075
    return-object p0
.end method

.method public clearEndpointerParams()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;
    .locals 1

    .prologue
    .line 3039
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->hasEndpointerParams:Z

    .line 3040
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->endpointerParams_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    .line 3041
    return-object p0
.end method

.method public getActionCountDownMsec()I
    .locals 1

    .prologue
    .line 3048
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->actionCountDownMsec_:I

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3107
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->cachedSize:I

    if-gez v0, :cond_0

    .line 3109
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->getSerializedSize()I

    .line 3111
    :cond_0
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->cachedSize:I

    return v0
.end method

.method public getEmbeddedRecognizerFallbackTimeout()I
    .locals 1

    .prologue
    .line 3065
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->embeddedRecognizerFallbackTimeout_:I

    return v0
.end method

.method public getEndpointerParams()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    .locals 1

    .prologue
    .line 3029
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->endpointerParams_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 3116
    const/4 v0, 0x0

    .line 3117
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->hasEndpointerParams()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3118
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->getEndpointerParams()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3121
    :cond_0
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->hasActionCountDownMsec()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3122
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->getActionCountDownMsec()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3125
    :cond_1
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->hasEmbeddedRecognizerFallbackTimeout()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3126
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->getEmbeddedRecognizerFallbackTimeout()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3129
    :cond_2
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->cachedSize:I

    .line 3130
    return v0
.end method

.method public hasActionCountDownMsec()Z
    .locals 1

    .prologue
    .line 3049
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->hasActionCountDownMsec:Z

    return v0
.end method

.method public hasEmbeddedRecognizerFallbackTimeout()Z
    .locals 1

    .prologue
    .line 3066
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->hasEmbeddedRecognizerFallbackTimeout:Z

    return v0
.end method

.method public hasEndpointerParams()Z
    .locals 1

    .prologue
    .line 3028
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->hasEndpointerParams:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3087
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
    .line 3019
    invoke-virtual {p0, p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3138
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3139
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 3143
    invoke-virtual {p0, p1, v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3144
    :sswitch_0
    return-object p0

    .line 3149
    :sswitch_1
    new-instance v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    invoke-direct {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;-><init>()V

    .line 3150
    .local v1, value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 3151
    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->setEndpointerParams(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;

    goto :goto_0

    .line 3155
    .end local v1           #value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->setActionCountDownMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;

    goto :goto_0

    .line 3159
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->setEmbeddedRecognizerFallbackTimeout(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;

    goto :goto_0

    .line 3139
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public setActionCountDownMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;
    .locals 1
    .parameter "value"

    .prologue
    .line 3051
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->hasActionCountDownMsec:Z

    .line 3052
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->actionCountDownMsec_:I

    .line 3053
    return-object p0
.end method

.method public setEmbeddedRecognizerFallbackTimeout(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;
    .locals 1
    .parameter "value"

    .prologue
    .line 3068
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->hasEmbeddedRecognizerFallbackTimeout:Z

    .line 3069
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->embeddedRecognizerFallbackTimeout_:I

    .line 3070
    return-object p0
.end method

.method public setEndpointerParams(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;
    .locals 1
    .parameter "value"

    .prologue
    .line 3031
    if-nez p1, :cond_0

    .line 3032
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3034
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->hasEndpointerParams:Z

    .line 3035
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->endpointerParams_:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    .line 3036
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3093
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->hasEndpointerParams()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3094
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->getEndpointerParams()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 3096
    :cond_0
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->hasActionCountDownMsec()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3097
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->getActionCountDownMsec()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 3099
    :cond_1
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->hasEmbeddedRecognizerFallbackTimeout()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3100
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->getEmbeddedRecognizerFallbackTimeout()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 3102
    :cond_2
    return-void
.end method
