.class public final Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "RecognizerOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/RecognizerOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognizerContextLog"
.end annotation


# static fields
.field public static final ENABLED_KEYBOARD_LANGUAGE_FIELD_NUMBER:I = 0xb

.field public static final FIELD_ID_FIELD_NUMBER:I = 0x3

.field public static final FIELD_NAME_FIELD_NUMBER:I = 0x2

.field public static final HINT_FIELD_NUMBER:I = 0x6

.field public static final IME_OPTIONS_FIELD_NUMBER:I = 0x8

.field public static final INPUT_TYPE_FIELD_NUMBER:I = 0x7

.field public static final LABEL_FIELD_NUMBER:I = 0x5

.field public static final LANGUAGE_MODEL_FIELD_NUMBER:I = 0x9

.field public static final SELECTED_KEYBOARD_LANGUAGE_FIELD_NUMBER:I = 0xa

.field public static final SINGLE_LINE_FIELD_NUMBER:I = 0x4

.field public static final VOICE_SEARCH_LANGUAGE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private enabledKeyboardLanguage_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fieldId_:Ljava/lang/String;

.field private fieldName_:Ljava/lang/String;

.field private hasFieldId:Z

.field private hasFieldName:Z

.field private hasHint:Z

.field private hasImeOptions:Z

.field private hasInputType:Z

.field private hasLabel:Z

.field private hasLanguageModel:Z

.field private hasSelectedKeyboardLanguage:Z

.field private hasSingleLine:Z

.field private hasVoiceSearchLanguage:Z

.field private hint_:Ljava/lang/String;

.field private imeOptions_:I

.field private inputType_:I

.field private label_:Ljava/lang/String;

.field private languageModel_:Ljava/lang/String;

.field private selectedKeyboardLanguage_:Ljava/lang/String;

.field private singleLine_:Z

.field private voiceSearchLanguage_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1943
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1948
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->voiceSearchLanguage_:Ljava/lang/String;

    .line 1965
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->fieldName_:Ljava/lang/String;

    .line 1982
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->fieldId_:Ljava/lang/String;

    .line 1999
    iput-boolean v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->singleLine_:Z

    .line 2016
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->label_:Ljava/lang/String;

    .line 2033
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hint_:Ljava/lang/String;

    .line 2050
    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->inputType_:I

    .line 2067
    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->imeOptions_:I

    .line 2084
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->languageModel_:Ljava/lang/String;

    .line 2101
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->selectedKeyboardLanguage_:Ljava/lang/String;

    .line 2117
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->enabledKeyboardLanguage_:Ljava/util/List;

    .line 2206
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->cachedSize:I

    .line 1943
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2343
    new-instance v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    invoke-direct {v0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 2337
    new-instance v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    invoke-direct {v0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    check-cast v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    return-object v0
.end method


# virtual methods
.method public addEnabledKeyboardLanguage(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 2134
    if-nez p1, :cond_0

    .line 2135
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2137
    :cond_0
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->enabledKeyboardLanguage_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->enabledKeyboardLanguage_:Ljava/util/List;

    .line 2140
    :cond_1
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->enabledKeyboardLanguage_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2141
    return-object p0
.end method

.method public final clear()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1

    .prologue
    .line 2149
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->clearVoiceSearchLanguage()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    .line 2150
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->clearFieldName()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    .line 2151
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->clearFieldId()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    .line 2152
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->clearSingleLine()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    .line 2153
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->clearLabel()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    .line 2154
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->clearHint()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    .line 2155
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->clearInputType()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    .line 2156
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->clearImeOptions()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    .line 2157
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->clearLanguageModel()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    .line 2158
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->clearSelectedKeyboardLanguage()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    .line 2159
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->clearEnabledKeyboardLanguage()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    .line 2160
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->cachedSize:I

    .line 2161
    return-object p0
.end method

.method public clearEnabledKeyboardLanguage()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1

    .prologue
    .line 2144
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->enabledKeyboardLanguage_:Ljava/util/List;

    .line 2145
    return-object p0
.end method

.method public clearFieldId()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1

    .prologue
    .line 1991
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasFieldId:Z

    .line 1992
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->fieldId_:Ljava/lang/String;

    .line 1993
    return-object p0
.end method

.method public clearFieldName()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1

    .prologue
    .line 1974
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasFieldName:Z

    .line 1975
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->fieldName_:Ljava/lang/String;

    .line 1976
    return-object p0
.end method

.method public clearHint()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1

    .prologue
    .line 2042
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasHint:Z

    .line 2043
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hint_:Ljava/lang/String;

    .line 2044
    return-object p0
.end method

.method public clearImeOptions()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2076
    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasImeOptions:Z

    .line 2077
    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->imeOptions_:I

    .line 2078
    return-object p0
.end method

.method public clearInputType()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2059
    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasInputType:Z

    .line 2060
    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->inputType_:I

    .line 2061
    return-object p0
.end method

.method public clearLabel()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1

    .prologue
    .line 2025
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasLabel:Z

    .line 2026
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->label_:Ljava/lang/String;

    .line 2027
    return-object p0
.end method

.method public clearLanguageModel()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1

    .prologue
    .line 2093
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasLanguageModel:Z

    .line 2094
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->languageModel_:Ljava/lang/String;

    .line 2095
    return-object p0
.end method

.method public clearSelectedKeyboardLanguage()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1

    .prologue
    .line 2110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasSelectedKeyboardLanguage:Z

    .line 2111
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->selectedKeyboardLanguage_:Ljava/lang/String;

    .line 2112
    return-object p0
.end method

.method public clearSingleLine()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2008
    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasSingleLine:Z

    .line 2009
    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->singleLine_:Z

    .line 2010
    return-object p0
.end method

.method public clearVoiceSearchLanguage()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1

    .prologue
    .line 1957
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasVoiceSearchLanguage:Z

    .line 1958
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->voiceSearchLanguage_:Ljava/lang/String;

    .line 1959
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2209
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->cachedSize:I

    if-gez v0, :cond_0

    .line 2211
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->getSerializedSize()I

    .line 2213
    :cond_0
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->cachedSize:I

    return v0
.end method

.method public getEnabledKeyboardLanguage(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 2124
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->enabledKeyboardLanguage_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEnabledKeyboardLanguageCount()I
    .locals 1

    .prologue
    .line 2122
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->enabledKeyboardLanguage_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEnabledKeyboardLanguageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2120
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->enabledKeyboardLanguage_:Ljava/util/List;

    return-object v0
.end method

.method public getFieldId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1983
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->fieldId_:Ljava/lang/String;

    return-object v0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1966
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->fieldName_:Ljava/lang/String;

    return-object v0
.end method

.method public getHint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2034
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hint_:Ljava/lang/String;

    return-object v0
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    .line 2068
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->imeOptions_:I

    return v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 2051
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->inputType_:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2017
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->label_:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2085
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->languageModel_:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedKeyboardLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2102
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->selectedKeyboardLanguage_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 2218
    const/4 v3, 0x0

    .line 2219
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasVoiceSearchLanguage()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2220
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->getVoiceSearchLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2223
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasFieldName()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2224
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->getFieldName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2227
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasFieldId()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2228
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->getFieldId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2231
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasSingleLine()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2232
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->getSingleLine()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2235
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasLabel()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2236
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2239
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasHint()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2240
    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->getHint()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2243
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasInputType()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2244
    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->getInputType()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2247
    :cond_6
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasImeOptions()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2248
    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->getImeOptions()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2251
    :cond_7
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasLanguageModel()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2252
    const/16 v4, 0x9

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->getLanguageModel()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2255
    :cond_8
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasSelectedKeyboardLanguage()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2256
    const/16 v4, 0xa

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->getSelectedKeyboardLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2260
    :cond_9
    const/4 v0, 0x0

    .line 2261
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->getEnabledKeyboardLanguageList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2262
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 2265
    .end local v1           #element:Ljava/lang/String;
    :cond_a
    add-int/2addr v3, v0

    .line 2266
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->getEnabledKeyboardLanguageList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 2268
    iput v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->cachedSize:I

    .line 2269
    return v3
.end method

.method public getSingleLine()Z
    .locals 1

    .prologue
    .line 2000
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->singleLine_:Z

    return v0
.end method

.method public getVoiceSearchLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1949
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->voiceSearchLanguage_:Ljava/lang/String;

    return-object v0
.end method

.method public hasFieldId()Z
    .locals 1

    .prologue
    .line 1984
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasFieldId:Z

    return v0
.end method

.method public hasFieldName()Z
    .locals 1

    .prologue
    .line 1967
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasFieldName:Z

    return v0
.end method

.method public hasHint()Z
    .locals 1

    .prologue
    .line 2035
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasHint:Z

    return v0
.end method

.method public hasImeOptions()Z
    .locals 1

    .prologue
    .line 2069
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasImeOptions:Z

    return v0
.end method

.method public hasInputType()Z
    .locals 1

    .prologue
    .line 2052
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasInputType:Z

    return v0
.end method

.method public hasLabel()Z
    .locals 1

    .prologue
    .line 2018
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasLabel:Z

    return v0
.end method

.method public hasLanguageModel()Z
    .locals 1

    .prologue
    .line 2086
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasLanguageModel:Z

    return v0
.end method

.method public hasSelectedKeyboardLanguage()Z
    .locals 1

    .prologue
    .line 2103
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasSelectedKeyboardLanguage:Z

    return v0
.end method

.method public hasSingleLine()Z
    .locals 1

    .prologue
    .line 2001
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasSingleLine:Z

    return v0
.end method

.method public hasVoiceSearchLanguage()Z
    .locals 1

    .prologue
    .line 1950
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasVoiceSearchLanguage:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2165
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
    .line 1940
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2277
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2278
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2282
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2283
    :sswitch_0
    return-object p0

    .line 2288
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->setVoiceSearchLanguage(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    goto :goto_0

    .line 2292
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->setFieldName(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    goto :goto_0

    .line 2296
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->setFieldId(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    goto :goto_0

    .line 2300
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->setSingleLine(Z)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    goto :goto_0

    .line 2304
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->setLabel(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    goto :goto_0

    .line 2308
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->setHint(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    goto :goto_0

    .line 2312
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->setInputType(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    goto :goto_0

    .line 2316
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->setImeOptions(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    goto :goto_0

    .line 2320
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->setLanguageModel(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    goto :goto_0

    .line 2324
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->setSelectedKeyboardLanguage(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    goto :goto_0

    .line 2328
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->addEnabledKeyboardLanguage(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    goto :goto_0

    .line 2278
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
    .end sparse-switch
.end method

.method public setEnabledKeyboardLanguage(ILjava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2127
    if-nez p2, :cond_0

    .line 2128
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2130
    :cond_0
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->enabledKeyboardLanguage_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2131
    return-object p0
.end method

.method public setFieldId(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 1986
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasFieldId:Z

    .line 1987
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->fieldId_:Ljava/lang/String;

    .line 1988
    return-object p0
.end method

.method public setFieldName(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 1969
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasFieldName:Z

    .line 1970
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->fieldName_:Ljava/lang/String;

    .line 1971
    return-object p0
.end method

.method public setHint(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 2037
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasHint:Z

    .line 2038
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hint_:Ljava/lang/String;

    .line 2039
    return-object p0
.end method

.method public setImeOptions(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 2071
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasImeOptions:Z

    .line 2072
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->imeOptions_:I

    .line 2073
    return-object p0
.end method

.method public setInputType(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 2054
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasInputType:Z

    .line 2055
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->inputType_:I

    .line 2056
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 2020
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasLabel:Z

    .line 2021
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->label_:Ljava/lang/String;

    .line 2022
    return-object p0
.end method

.method public setLanguageModel(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 2088
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasLanguageModel:Z

    .line 2089
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->languageModel_:Ljava/lang/String;

    .line 2090
    return-object p0
.end method

.method public setSelectedKeyboardLanguage(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 2105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasSelectedKeyboardLanguage:Z

    .line 2106
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->selectedKeyboardLanguage_:Ljava/lang/String;

    .line 2107
    return-object p0
.end method

.method public setSingleLine(Z)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 2003
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasSingleLine:Z

    .line 2004
    iput-boolean p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->singleLine_:Z

    .line 2005
    return-object p0
.end method

.method public setVoiceSearchLanguage(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 1952
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasVoiceSearchLanguage:Z

    .line 1953
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->voiceSearchLanguage_:Ljava/lang/String;

    .line 1954
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
    .line 2171
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasVoiceSearchLanguage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2172
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->getVoiceSearchLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2174
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasFieldName()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2175
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2177
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasFieldId()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2178
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->getFieldId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2180
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasSingleLine()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2181
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->getSingleLine()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2183
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasLabel()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2184
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2186
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasHint()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2187
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->getHint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2189
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasInputType()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2190
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->getInputType()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2192
    :cond_6
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasImeOptions()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2193
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->getImeOptions()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2195
    :cond_7
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasLanguageModel()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2196
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->getLanguageModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2198
    :cond_8
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasSelectedKeyboardLanguage()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2199
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->getSelectedKeyboardLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2201
    :cond_9
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->getEnabledKeyboardLanguageList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2202
    .local v0, element:Ljava/lang/String;
    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 2204
    .end local v0           #element:Ljava/lang/String;
    :cond_a
    return-void
.end method
