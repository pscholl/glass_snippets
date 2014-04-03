.class public final Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "RecognitionContextProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/common/proto/RecognitionContextProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognitionContext"
.end annotation


# static fields
.field public static final APPLICATION_NAME_FIELD_NUMBER:I = 0x1

.field public static final CANONICAL_LANGUAGE_FIELD_NUMBER:I = 0x15

.field public static final CLIENT_APPLICATION_ID_FIELD_NUMBER:I = 0x13

.field public static final CLIENT_ID_FIELD_NUMBER:I = 0xb

.field public static final ENABLED_KEYBOARD_LANGUAGE_FIELD_NUMBER:I = 0xe

.field public static final FIELD_ID_FIELD_NUMBER:I = 0x3

.field public static final FIELD_NAME_FIELD_NUMBER:I = 0x2

.field public static final HARDWARE_FIELD_NUMBER:I = 0x12

.field public static final HAS_GRXML_GRAMMAR_FIELD_NUMBER:I = 0xc

.field public static final HINT_FIELD_NUMBER:I = 0x6

.field public static final IME_OPTIONS_FIELD_NUMBER:I = 0x8

.field public static final INPUT_TYPE_FIELD_NUMBER:I = 0x7

.field public static final LABEL_FIELD_NUMBER:I = 0x5

.field public static final LANGUAGE_FIELD_NUMBER:I = 0xa

.field public static final LANGUAGE_MODEL_FIELD_NUMBER:I = 0x9

.field public static final RAW_LANGUAGE_FIELD_NUMBER:I = 0x14

.field public static final REFERER_FIELD_NUMBER:I = 0x10

.field public static final SELECTED_KEYBOARD_LANGUAGE_FIELD_NUMBER:I = 0xd

.field public static final SINGLE_LINE_FIELD_NUMBER:I = 0x4

.field public static final USER_AGENT_FIELD_NUMBER:I = 0x11

.field public static final VOICE_SEARCH_LANGUAGE_FIELD_NUMBER:I = 0xf


# instance fields
.field private applicationName_:Ljava/lang/String;

.field private cachedSize:I

.field private canonicalLanguage_:Ljava/lang/String;

.field private clientApplicationId_:Ljava/lang/String;

.field private clientId_:Ljava/lang/String;

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

.field private hardware_:Ljava/lang/String;

.field private hasApplicationName:Z

.field private hasCanonicalLanguage:Z

.field private hasClientApplicationId:Z

.field private hasClientId:Z

.field private hasFieldId:Z

.field private hasFieldName:Z

.field private hasGrxmlGrammar_:Z

.field private hasHardware:Z

.field private hasHasGrxmlGrammar:Z

.field private hasHint:Z

.field private hasImeOptions:Z

.field private hasInputType:Z

.field private hasLabel:Z

.field private hasLanguage:Z

.field private hasLanguageModel:Z

.field private hasRawLanguage:Z

.field private hasReferer:Z

.field private hasSelectedKeyboardLanguage:Z

.field private hasSingleLine:Z

.field private hasUserAgent:Z

.field private hasVoiceSearchLanguage:Z

.field private hint_:Ljava/lang/String;

.field private imeOptions_:I

.field private inputType_:I

.field private label_:Ljava/lang/String;

.field private languageModel_:Ljava/lang/String;

.field private language_:Ljava/lang/String;

.field private rawLanguage_:Ljava/lang/String;

.field private referer_:Ljava/lang/String;

.field private selectedKeyboardLanguage_:Ljava/lang/String;

.field private singleLine_:Z

.field private userAgent_:Ljava/lang/String;

.field private voiceSearchLanguage_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->applicationName_:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->fieldName_:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->fieldId_:Ljava/lang/String;

    .line 66
    iput-boolean v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->singleLine_:Z

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->label_:Ljava/lang/String;

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hint_:Ljava/lang/String;

    .line 117
    iput v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->inputType_:I

    .line 134
    iput v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->imeOptions_:I

    .line 151
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->languageModel_:Ljava/lang/String;

    .line 168
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->rawLanguage_:Ljava/lang/String;

    .line 185
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->canonicalLanguage_:Ljava/lang/String;

    .line 202
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->language_:Ljava/lang/String;

    .line 219
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->clientId_:Ljava/lang/String;

    .line 236
    iput-boolean v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasGrxmlGrammar_:Z

    .line 253
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->selectedKeyboardLanguage_:Ljava/lang/String;

    .line 269
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->enabledKeyboardLanguage_:Ljava/util/List;

    .line 303
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->voiceSearchLanguage_:Ljava/lang/String;

    .line 320
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->referer_:Ljava/lang/String;

    .line 337
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->userAgent_:Ljava/lang/String;

    .line 354
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hardware_:Ljava/lang/String;

    .line 371
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->clientApplicationId_:Ljava/lang/String;

    .line 483
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->cachedSize:I

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 700
    new-instance v0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    invoke-direct {v0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 694
    new-instance v0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    invoke-direct {v0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    check-cast v0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    return-object v0
.end method


# virtual methods
.method public addEnabledKeyboardLanguage(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1
    .parameter "value"

    .prologue
    .line 286
    if-nez p1, :cond_0

    .line 287
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->enabledKeyboardLanguage_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->enabledKeyboardLanguage_:Ljava/util/List;

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->enabledKeyboardLanguage_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    return-object p0
.end method

.method public final clear()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->clearApplicationName()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    .line 387
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->clearFieldName()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    .line 388
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->clearFieldId()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    .line 389
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->clearSingleLine()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    .line 390
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->clearLabel()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    .line 391
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->clearHint()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    .line 392
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->clearInputType()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    .line 393
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->clearImeOptions()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    .line 394
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->clearLanguageModel()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    .line 395
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->clearRawLanguage()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    .line 396
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->clearCanonicalLanguage()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    .line 397
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->clearLanguage()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    .line 398
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->clearClientId()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    .line 399
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->clearHasGrxmlGrammar()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    .line 400
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->clearSelectedKeyboardLanguage()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    .line 401
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->clearEnabledKeyboardLanguage()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    .line 402
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->clearVoiceSearchLanguage()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    .line 403
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->clearReferer()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    .line 404
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->clearUserAgent()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    .line 405
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->clearHardware()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    .line 406
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->clearClientApplicationId()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    .line 407
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->cachedSize:I

    .line 408
    return-object p0
.end method

.method public clearApplicationName()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasApplicationName:Z

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->applicationName_:Ljava/lang/String;

    .line 26
    return-object p0
.end method

.method public clearCanonicalLanguage()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasCanonicalLanguage:Z

    .line 195
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->canonicalLanguage_:Ljava/lang/String;

    .line 196
    return-object p0
.end method

.method public clearClientApplicationId()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1

    .prologue
    .line 380
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasClientApplicationId:Z

    .line 381
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->clientApplicationId_:Ljava/lang/String;

    .line 382
    return-object p0
.end method

.method public clearClientId()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasClientId:Z

    .line 229
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->clientId_:Ljava/lang/String;

    .line 230
    return-object p0
.end method

.method public clearEnabledKeyboardLanguage()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1

    .prologue
    .line 296
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->enabledKeyboardLanguage_:Ljava/util/List;

    .line 297
    return-object p0
.end method

.method public clearFieldId()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasFieldId:Z

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->fieldId_:Ljava/lang/String;

    .line 60
    return-object p0
.end method

.method public clearFieldName()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasFieldName:Z

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->fieldName_:Ljava/lang/String;

    .line 43
    return-object p0
.end method

.method public clearHardware()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1

    .prologue
    .line 363
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasHardware:Z

    .line 364
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hardware_:Ljava/lang/String;

    .line 365
    return-object p0
.end method

.method public clearHasGrxmlGrammar()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 245
    iput-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasHasGrxmlGrammar:Z

    .line 246
    iput-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasGrxmlGrammar_:Z

    .line 247
    return-object p0
.end method

.method public clearHint()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasHint:Z

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hint_:Ljava/lang/String;

    .line 111
    return-object p0
.end method

.method public clearImeOptions()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 143
    iput-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasImeOptions:Z

    .line 144
    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->imeOptions_:I

    .line 145
    return-object p0
.end method

.method public clearInputType()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasInputType:Z

    .line 127
    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->inputType_:I

    .line 128
    return-object p0
.end method

.method public clearLabel()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasLabel:Z

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->label_:Ljava/lang/String;

    .line 94
    return-object p0
.end method

.method public clearLanguage()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasLanguage:Z

    .line 212
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->language_:Ljava/lang/String;

    .line 213
    return-object p0
.end method

.method public clearLanguageModel()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasLanguageModel:Z

    .line 161
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->languageModel_:Ljava/lang/String;

    .line 162
    return-object p0
.end method

.method public clearRawLanguage()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasRawLanguage:Z

    .line 178
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->rawLanguage_:Ljava/lang/String;

    .line 179
    return-object p0
.end method

.method public clearReferer()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1

    .prologue
    .line 329
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasReferer:Z

    .line 330
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->referer_:Ljava/lang/String;

    .line 331
    return-object p0
.end method

.method public clearSelectedKeyboardLanguage()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasSelectedKeyboardLanguage:Z

    .line 263
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->selectedKeyboardLanguage_:Ljava/lang/String;

    .line 264
    return-object p0
.end method

.method public clearSingleLine()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasSingleLine:Z

    .line 76
    iput-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->singleLine_:Z

    .line 77
    return-object p0
.end method

.method public clearUserAgent()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasUserAgent:Z

    .line 347
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->userAgent_:Ljava/lang/String;

    .line 348
    return-object p0
.end method

.method public clearVoiceSearchLanguage()Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasVoiceSearchLanguage:Z

    .line 313
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->voiceSearchLanguage_:Ljava/lang/String;

    .line 314
    return-object p0
.end method

.method public getApplicationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->applicationName_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 486
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->cachedSize:I

    if-gez v0, :cond_0

    .line 488
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->getSerializedSize()I

    .line 490
    :cond_0
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->cachedSize:I

    return v0
.end method

.method public getCanonicalLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->canonicalLanguage_:Ljava/lang/String;

    return-object v0
.end method

.method public getClientApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->clientApplicationId_:Ljava/lang/String;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->clientId_:Ljava/lang/String;

    return-object v0
.end method

.method public getEnabledKeyboardLanguage(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->enabledKeyboardLanguage_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEnabledKeyboardLanguageCount()I
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->enabledKeyboardLanguage_:Ljava/util/List;

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
    .line 272
    iget-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->enabledKeyboardLanguage_:Ljava/util/List;

    return-object v0
.end method

.method public getFieldId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->fieldId_:Ljava/lang/String;

    return-object v0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->fieldName_:Ljava/lang/String;

    return-object v0
.end method

.method public getHardware()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hardware_:Ljava/lang/String;

    return-object v0
.end method

.method public getHasGrxmlGrammar()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasGrxmlGrammar_:Z

    return v0
.end method

.method public getHint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hint_:Ljava/lang/String;

    return-object v0
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->imeOptions_:I

    return v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->inputType_:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->label_:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->language_:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->languageModel_:Ljava/lang/String;

    return-object v0
.end method

.method public getRawLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->rawLanguage_:Ljava/lang/String;

    return-object v0
.end method

.method public getReferer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->referer_:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedKeyboardLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->selectedKeyboardLanguage_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 495
    const/4 v3, 0x0

    .line 496
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasApplicationName()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 497
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->getApplicationName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 500
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasFieldName()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 501
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->getFieldName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 504
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasFieldId()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 505
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->getFieldId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 508
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasSingleLine()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 509
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->getSingleLine()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 512
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasLabel()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 513
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 516
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasHint()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 517
    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->getHint()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 520
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasInputType()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 521
    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->getInputType()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 524
    :cond_6
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasImeOptions()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 525
    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->getImeOptions()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 528
    :cond_7
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasLanguageModel()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 529
    const/16 v4, 0x9

    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->getLanguageModel()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 532
    :cond_8
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasLanguage()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 533
    const/16 v4, 0xa

    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 536
    :cond_9
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasClientId()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 537
    const/16 v4, 0xb

    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->getClientId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 540
    :cond_a
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasHasGrxmlGrammar()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 541
    const/16 v4, 0xc

    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->getHasGrxmlGrammar()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 544
    :cond_b
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasSelectedKeyboardLanguage()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 545
    const/16 v4, 0xd

    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->getSelectedKeyboardLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 549
    :cond_c
    const/4 v0, 0x0

    .line 550
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->getEnabledKeyboardLanguageList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 551
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 554
    .end local v1           #element:Ljava/lang/String;
    :cond_d
    add-int/2addr v3, v0

    .line 555
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->getEnabledKeyboardLanguageList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 557
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasVoiceSearchLanguage()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 558
    const/16 v4, 0xf

    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->getVoiceSearchLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 561
    :cond_e
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasReferer()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 562
    const/16 v4, 0x10

    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->getReferer()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 565
    :cond_f
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasUserAgent()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 566
    const/16 v4, 0x11

    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->getUserAgent()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 569
    :cond_10
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasHardware()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 570
    const/16 v4, 0x12

    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->getHardware()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 573
    :cond_11
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasClientApplicationId()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 574
    const/16 v4, 0x13

    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->getClientApplicationId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 577
    :cond_12
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasRawLanguage()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 578
    const/16 v4, 0x14

    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->getRawLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 581
    :cond_13
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasCanonicalLanguage()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 582
    const/16 v4, 0x15

    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->getCanonicalLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 585
    :cond_14
    iput v3, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->cachedSize:I

    .line 586
    return v3
.end method

.method public getSingleLine()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->singleLine_:Z

    return v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->userAgent_:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceSearchLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->voiceSearchLanguage_:Ljava/lang/String;

    return-object v0
.end method

.method public hasApplicationName()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasApplicationName:Z

    return v0
.end method

.method public hasCanonicalLanguage()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasCanonicalLanguage:Z

    return v0
.end method

.method public hasClientApplicationId()Z
    .locals 1

    .prologue
    .line 373
    iget-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasClientApplicationId:Z

    return v0
.end method

.method public hasClientId()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasClientId:Z

    return v0
.end method

.method public hasFieldId()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasFieldId:Z

    return v0
.end method

.method public hasFieldName()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasFieldName:Z

    return v0
.end method

.method public hasHardware()Z
    .locals 1

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasHardware:Z

    return v0
.end method

.method public hasHasGrxmlGrammar()Z
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasHasGrxmlGrammar:Z

    return v0
.end method

.method public hasHint()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasHint:Z

    return v0
.end method

.method public hasImeOptions()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasImeOptions:Z

    return v0
.end method

.method public hasInputType()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasInputType:Z

    return v0
.end method

.method public hasLabel()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasLabel:Z

    return v0
.end method

.method public hasLanguage()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasLanguage:Z

    return v0
.end method

.method public hasLanguageModel()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasLanguageModel:Z

    return v0
.end method

.method public hasRawLanguage()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasRawLanguage:Z

    return v0
.end method

.method public hasReferer()Z
    .locals 1

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasReferer:Z

    return v0
.end method

.method public hasSelectedKeyboardLanguage()Z
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasSelectedKeyboardLanguage:Z

    return v0
.end method

.method public hasSingleLine()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasSingleLine:Z

    return v0
.end method

.method public hasUserAgent()Z
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasUserAgent:Z

    return v0
.end method

.method public hasVoiceSearchLanguage()Z
    .locals 1

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasVoiceSearchLanguage:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 412
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
    invoke-virtual {p0, p1}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 594
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 595
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 599
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 600
    :sswitch_0
    return-object p0

    .line 605
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->setApplicationName(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    goto :goto_0

    .line 609
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->setFieldName(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    goto :goto_0

    .line 613
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->setFieldId(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    goto :goto_0

    .line 617
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->setSingleLine(Z)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    goto :goto_0

    .line 621
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->setLabel(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    goto :goto_0

    .line 625
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->setHint(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    goto :goto_0

    .line 629
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->setInputType(I)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    goto :goto_0

    .line 633
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->setImeOptions(I)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    goto :goto_0

    .line 637
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->setLanguageModel(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    goto :goto_0

    .line 641
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->setLanguage(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    goto :goto_0

    .line 645
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->setClientId(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    goto :goto_0

    .line 649
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->setHasGrxmlGrammar(Z)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    goto :goto_0

    .line 653
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->setSelectedKeyboardLanguage(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    goto :goto_0

    .line 657
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->addEnabledKeyboardLanguage(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    goto :goto_0

    .line 661
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->setVoiceSearchLanguage(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    goto/16 :goto_0

    .line 665
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->setReferer(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    goto/16 :goto_0

    .line 669
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->setUserAgent(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    goto/16 :goto_0

    .line 673
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->setHardware(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    goto/16 :goto_0

    .line 677
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->setClientApplicationId(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    goto/16 :goto_0

    .line 681
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->setRawLanguage(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    goto/16 :goto_0

    .line 685
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->setCanonicalLanguage(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;

    goto/16 :goto_0

    .line 595
    nop

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
        0x60 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x7a -> :sswitch_f
        0x82 -> :sswitch_10
        0x8a -> :sswitch_11
        0x92 -> :sswitch_12
        0x9a -> :sswitch_13
        0xa2 -> :sswitch_14
        0xaa -> :sswitch_15
    .end sparse-switch
.end method

.method public setApplicationName(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1
    .parameter "value"

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasApplicationName:Z

    .line 20
    iput-object p1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->applicationName_:Ljava/lang/String;

    .line 21
    return-object p0
.end method

.method public setCanonicalLanguage(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1
    .parameter "value"

    .prologue
    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasCanonicalLanguage:Z

    .line 190
    iput-object p1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->canonicalLanguage_:Ljava/lang/String;

    .line 191
    return-object p0
.end method

.method public setClientApplicationId(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1
    .parameter "value"

    .prologue
    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasClientApplicationId:Z

    .line 376
    iput-object p1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->clientApplicationId_:Ljava/lang/String;

    .line 377
    return-object p0
.end method

.method public setClientId(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1
    .parameter "value"

    .prologue
    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasClientId:Z

    .line 224
    iput-object p1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->clientId_:Ljava/lang/String;

    .line 225
    return-object p0
.end method

.method public setEnabledKeyboardLanguage(ILjava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 279
    if-nez p2, :cond_0

    .line 280
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->enabledKeyboardLanguage_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 283
    return-object p0
.end method

.method public setFieldId(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1
    .parameter "value"

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasFieldId:Z

    .line 54
    iput-object p1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->fieldId_:Ljava/lang/String;

    .line 55
    return-object p0
.end method

.method public setFieldName(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1
    .parameter "value"

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasFieldName:Z

    .line 37
    iput-object p1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->fieldName_:Ljava/lang/String;

    .line 38
    return-object p0
.end method

.method public setHardware(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1
    .parameter "value"

    .prologue
    .line 358
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasHardware:Z

    .line 359
    iput-object p1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hardware_:Ljava/lang/String;

    .line 360
    return-object p0
.end method

.method public setHasGrxmlGrammar(Z)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1
    .parameter "value"

    .prologue
    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasHasGrxmlGrammar:Z

    .line 241
    iput-boolean p1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasGrxmlGrammar_:Z

    .line 242
    return-object p0
.end method

.method public setHint(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1
    .parameter "value"

    .prologue
    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasHint:Z

    .line 105
    iput-object p1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hint_:Ljava/lang/String;

    .line 106
    return-object p0
.end method

.method public setImeOptions(I)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1
    .parameter "value"

    .prologue
    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasImeOptions:Z

    .line 139
    iput p1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->imeOptions_:I

    .line 140
    return-object p0
.end method

.method public setInputType(I)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1
    .parameter "value"

    .prologue
    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasInputType:Z

    .line 122
    iput p1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->inputType_:I

    .line 123
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1
    .parameter "value"

    .prologue
    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasLabel:Z

    .line 88
    iput-object p1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->label_:Ljava/lang/String;

    .line 89
    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1
    .parameter "value"

    .prologue
    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasLanguage:Z

    .line 207
    iput-object p1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->language_:Ljava/lang/String;

    .line 208
    return-object p0
.end method

.method public setLanguageModel(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1
    .parameter "value"

    .prologue
    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasLanguageModel:Z

    .line 156
    iput-object p1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->languageModel_:Ljava/lang/String;

    .line 157
    return-object p0
.end method

.method public setRawLanguage(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1
    .parameter "value"

    .prologue
    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasRawLanguage:Z

    .line 173
    iput-object p1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->rawLanguage_:Ljava/lang/String;

    .line 174
    return-object p0
.end method

.method public setReferer(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1
    .parameter "value"

    .prologue
    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasReferer:Z

    .line 325
    iput-object p1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->referer_:Ljava/lang/String;

    .line 326
    return-object p0
.end method

.method public setSelectedKeyboardLanguage(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1
    .parameter "value"

    .prologue
    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasSelectedKeyboardLanguage:Z

    .line 258
    iput-object p1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->selectedKeyboardLanguage_:Ljava/lang/String;

    .line 259
    return-object p0
.end method

.method public setSingleLine(Z)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1
    .parameter "value"

    .prologue
    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasSingleLine:Z

    .line 71
    iput-boolean p1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->singleLine_:Z

    .line 72
    return-object p0
.end method

.method public setUserAgent(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1
    .parameter "value"

    .prologue
    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasUserAgent:Z

    .line 342
    iput-object p1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->userAgent_:Ljava/lang/String;

    .line 343
    return-object p0
.end method

.method public setVoiceSearchLanguage(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;
    .locals 1
    .parameter "value"

    .prologue
    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasVoiceSearchLanguage:Z

    .line 308
    iput-object p1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->voiceSearchLanguage_:Ljava/lang/String;

    .line 309
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
    .line 418
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasApplicationName()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 419
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->getApplicationName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 421
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasFieldName()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 422
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 424
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasFieldId()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 425
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->getFieldId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 427
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasSingleLine()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 428
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->getSingleLine()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 430
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasLabel()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 431
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 433
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasHint()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 434
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->getHint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 436
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasInputType()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 437
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->getInputType()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 439
    :cond_6
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasImeOptions()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 440
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->getImeOptions()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 442
    :cond_7
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasLanguageModel()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 443
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->getLanguageModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 445
    :cond_8
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasLanguage()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 446
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 448
    :cond_9
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasClientId()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 449
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 451
    :cond_a
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasHasGrxmlGrammar()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 452
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->getHasGrxmlGrammar()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 454
    :cond_b
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasSelectedKeyboardLanguage()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 455
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->getSelectedKeyboardLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 457
    :cond_c
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->getEnabledKeyboardLanguageList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 458
    .local v0, element:Ljava/lang/String;
    const/16 v2, 0xe

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 460
    .end local v0           #element:Ljava/lang/String;
    :cond_d
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasVoiceSearchLanguage()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 461
    const/16 v2, 0xf

    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->getVoiceSearchLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 463
    :cond_e
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasReferer()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 464
    const/16 v2, 0x10

    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->getReferer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 466
    :cond_f
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasUserAgent()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 467
    const/16 v2, 0x11

    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 469
    :cond_10
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasHardware()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 470
    const/16 v2, 0x12

    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->getHardware()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 472
    :cond_11
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasClientApplicationId()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 473
    const/16 v2, 0x13

    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->getClientApplicationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 475
    :cond_12
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasRawLanguage()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 476
    const/16 v2, 0x14

    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->getRawLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 478
    :cond_13
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->hasCanonicalLanguage()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 479
    const/16 v2, 0x15

    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RecognitionContext;->getCanonicalLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 481
    :cond_14
    return-void
.end method
