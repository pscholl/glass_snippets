.class public Lcom/google/glass/voice/embedded/GlassRecognizerFactory;
.super Lcom/google/glass/voice/RecognizerFactory;
.source "GlassRecognizerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/embedded/GlassRecognizerFactory$FilteredGrecoRecognizer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GlassFactory"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field public static final mirrorCommands:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mirrorHelper:Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;

.field private nativeCommandHelper:Lcom/google/glass/voice/NativeCommandDisambiguationHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    const-string v0, "GlassFactory"

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/embedded/GlassRecognizerFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/glass/voice/embedded/GlassRecognizerFactory;->mirrorCommands:Ljava/util/Map;

    .line 46
    sget-object v0, Lcom/google/glass/voice/embedded/GlassRecognizerFactory;->mirrorCommands:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "post an update"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/google/glass/voice/embedded/GlassRecognizerFactory;->mirrorCommands:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "take a note"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/google/glass/voice/embedded/GlassRecognizerFactory;->mirrorCommands:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "check me in"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/google/glass/voice/embedded/GlassRecognizerFactory;->mirrorCommands:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "add a calendar event"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/google/glass/voice/embedded/GlassRecognizerFactory;->mirrorCommands:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "find a recipe"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/google/glass/voice/embedded/GlassRecognizerFactory;->mirrorCommands:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "find a place"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/google/glass/voice/embedded/GlassRecognizerFactory;->mirrorCommands:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "explore nearby"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;Lcom/google/glass/voice/NativeCommandDisambiguationHelper;)V
    .locals 0
    .parameter "mirrorHelper"
    .parameter "nativeCommandHelper"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/glass/voice/RecognizerFactory;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/google/glass/voice/embedded/GlassRecognizerFactory;->mirrorHelper:Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;

    .line 61
    iput-object p2, p0, Lcom/google/glass/voice/embedded/GlassRecognizerFactory;->nativeCommandHelper:Lcom/google/glass/voice/NativeCommandDisambiguationHelper;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/embedded/GlassRecognizerFactory;Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/glass/voice/embedded/GlassRecognizerFactory;->getCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    return-object v0
.end method

.method private createDisambiguationRecognizer(Landroid/content/Context;ILjava/util/Collection;)Lcom/google/glass/voice/HotwordRecognizer;
    .locals 5
    .parameter "context"
    .parameter "disambiguationCommandType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;)",
            "Lcom/google/glass/voice/HotwordRecognizer;"
        }
    .end annotation

    .prologue
    .line 325
    .local p3, entities:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    iget-object v2, p0, Lcom/google/glass/voice/embedded/GlassRecognizerFactory;->mirrorHelper:Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;

    invoke-virtual {v2, p2}, Lcom/google/glass/voice/MirrorCommandDisambiguationHelper;->getConfig(I)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v1

    .line 326
    .local v1, mirrorConfig:Lcom/google/glass/voice/VoiceConfig;
    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {p0, v1}, Lcom/google/glass/voice/embedded/GlassRecognizerFactory;->getDecoderName(Lcom/google/glass/voice/VoiceConfig;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/glass/voice/VoiceConfig;->getCustomPhrases()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/glass/voice/VoiceConfig;->getCustomTags()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 329
    .local v0, decoderConfig:Lcom/google/glass/voice/VoiceConfig;
    invoke-virtual {p0, p1, v0, p3}, Lcom/google/glass/voice/embedded/GlassRecognizerFactory;->createCustomRecognizer(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;Ljava/util/Collection;)Lcom/google/glass/voice/HotwordRecognizer;

    move-result-object v2

    return-object v2
.end method

.method private createDisambiguationRecognizer(Landroid/content/Context;Ljava/lang/String;)Lcom/google/glass/voice/HotwordRecognizer;
    .locals 5
    .parameter "context"
    .parameter "literal"

    .prologue
    .line 334
    iget-object v2, p0, Lcom/google/glass/voice/embedded/GlassRecognizerFactory;->nativeCommandHelper:Lcom/google/glass/voice/NativeCommandDisambiguationHelper;

    invoke-virtual {v2, p2}, Lcom/google/glass/voice/NativeCommandDisambiguationHelper;->getConfig(Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v1

    .line 335
    .local v1, nativeConfig:Lcom/google/glass/voice/VoiceConfig;
    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {p0, v1}, Lcom/google/glass/voice/embedded/GlassRecognizerFactory;->getDecoderName(Lcom/google/glass/voice/VoiceConfig;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/glass/voice/VoiceConfig;->getCustomPhrases()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/glass/voice/VoiceConfig;->getCustomTags()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 338
    .local v0, decoderConfig:Lcom/google/glass/voice/VoiceConfig;
    invoke-virtual {p0, p1, v0}, Lcom/google/glass/voice/embedded/GlassRecognizerFactory;->createCustomRecognizer(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/HotwordRecognizer;

    move-result-object v2

    return-object v2
.end method

.method private getCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;
    .locals 1
    .parameter "phrase"

    .prologue
    .line 195
    const-string v0, "[hotword_ok_glass]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->OK_GLASS:Lcom/google/glass/voice/VoiceCommand;

    .line 242
    :goto_0
    return-object v0

    .line 197
    :cond_0
    const-string v0, "[hotword_take_a_picture]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->TAKE_PHOTO:Lcom/google/glass/voice/VoiceCommand;

    goto :goto_0

    .line 199
    :cond_1
    const-string v0, "[hotword_record_a_video]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->RECORD_VIDEO:Lcom/google/glass/voice/VoiceCommand;

    goto :goto_0

    .line 201
    :cond_2
    const-string v0, "[hotword_google]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 202
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->GOOGLE:Lcom/google/glass/voice/VoiceCommand;

    goto :goto_0

    .line 203
    :cond_3
    const-string v0, "[hotword_get_directions]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 204
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->NAVIGATION:Lcom/google/glass/voice/VoiceCommand;

    goto :goto_0

    .line 205
    :cond_4
    const-string v0, "[hotword_make_a_video_call]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 206
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->VIDEO_CALL:Lcom/google/glass/voice/VoiceCommand;

    goto :goto_0

    .line 207
    :cond_5
    const-string v0, "[hotword_make_a_call]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 208
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->CALL:Lcom/google/glass/voice/VoiceCommand;

    goto :goto_0

    .line 209
    :cond_6
    const-string v0, "[hotword_send_a_message]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 210
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->SEND_MESSAGE_TO:Lcom/google/glass/voice/VoiceCommand;

    goto :goto_0

    .line 211
    :cond_7
    const-string v0, "[hotword_reply]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 212
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->REPLY:Lcom/google/glass/voice/VoiceCommand;

    goto :goto_0

    .line 213
    :cond_8
    const-string v0, "[hotword_read_aloud]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 214
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->READ_ALOUD:Lcom/google/glass/voice/VoiceCommand;

    goto :goto_0

    .line 215
    :cond_9
    const-string v0, "[hotword_answer_call]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 216
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->ANSWER_CALL:Lcom/google/glass/voice/VoiceCommand;

    goto :goto_0

    .line 217
    :cond_a
    const-string v0, "[hotword_ignore_call]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 218
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->DECLINE_CALL:Lcom/google/glass/voice/VoiceCommand;

    goto :goto_0

    .line 219
    :cond_b
    const-string v0, "[hotword_share_with]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 220
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->SHARE:Lcom/google/glass/voice/VoiceCommand;

    goto/16 :goto_0

    .line 221
    :cond_c
    const-string v0, "[listen_to]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 222
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->LISTEN_TO:Lcom/google/glass/voice/VoiceCommand;

    goto/16 :goto_0

    .line 226
    :cond_d
    const-string v0, "[hotword_take_a_note]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 227
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->TAKE_NOTE:Lcom/google/glass/voice/VoiceCommand;

    goto/16 :goto_0

    .line 228
    :cond_e
    const-string v0, "[hotword_post_an_update]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 229
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->POST_AN_UPDATE:Lcom/google/glass/voice/VoiceCommand;

    goto/16 :goto_0

    .line 230
    :cond_f
    const-string v0, "[hotword_check_me_in]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 231
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->CHECK_ME_IN:Lcom/google/glass/voice/VoiceCommand;

    goto/16 :goto_0

    .line 232
    :cond_10
    const-string v0, "[hotword_add_a_calendar_event]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 233
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->ADD_A_CALENDAR_EVENT:Lcom/google/glass/voice/VoiceCommand;

    goto/16 :goto_0

    .line 234
    :cond_11
    const-string v0, "[hotword_find_a_recipe]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 235
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->FIND_A_RECIPE:Lcom/google/glass/voice/VoiceCommand;

    goto/16 :goto_0

    .line 236
    :cond_12
    const-string v0, "[hotword_find_a_place]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 237
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->FIND_A_PLACE:Lcom/google/glass/voice/VoiceCommand;

    goto/16 :goto_0

    .line 238
    :cond_13
    const-string v0, "[hotword_explore_nearby]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 239
    sget-object v0, Lcom/google/glass/voice/VoiceCommand;->EXPLORE_NEARBY:Lcom/google/glass/voice/VoiceCommand;

    goto/16 :goto_0

    .line 242
    :cond_14
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private declared-synchronized getDecoderName(Lcom/google/glass/voice/VoiceConfig;)Ljava/lang/String;
    .locals 1
    .parameter "config"

    .prologue
    .line 347
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->CONTACTS:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    sget-object v0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;->DYN_1:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    invoke-virtual {v0}, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;->name()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 358
    :goto_0
    monitor-exit p0

    return-object v0

    .line 349
    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->PLUS_SHARE_TARGETS:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    sget-object v0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;->DYN_2:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    invoke-virtual {v0}, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 351
    :cond_1
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->PHOTO_SHARE_TARGETS:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 352
    sget-object v0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;->DYN_3:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    invoke-virtual {v0}, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 353
    :cond_2
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->MAIN_MENU:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 354
    sget-object v0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;->DYN_4:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    invoke-virtual {v0}, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 358
    :cond_3
    sget-object v0, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;->DYN_5:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    invoke-virtual {v0}, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;->name()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private newMainMenuRecognizer(Landroid/content/Context;)Lcom/google/glass/voice/HotwordRecognizer;
    .locals 14
    .parameter "context"

    .prologue
    const/4 v13, 0x0

    .line 143
    const/16 v9, 0x8

    new-array v4, v9, [Lcom/google/glass/voice/VoiceCommand;

    sget-object v9, Lcom/google/glass/voice/VoiceCommand;->GOOGLE:Lcom/google/glass/voice/VoiceCommand;

    aput-object v9, v4, v13

    const/4 v9, 0x1

    sget-object v10, Lcom/google/glass/voice/VoiceCommand;->TAKE_PHOTO:Lcom/google/glass/voice/VoiceCommand;

    aput-object v10, v4, v9

    const/4 v9, 0x2

    sget-object v10, Lcom/google/glass/voice/VoiceCommand;->RECORD_VIDEO:Lcom/google/glass/voice/VoiceCommand;

    aput-object v10, v4, v9

    const/4 v9, 0x3

    sget-object v10, Lcom/google/glass/voice/VoiceCommand;->NAVIGATION:Lcom/google/glass/voice/VoiceCommand;

    aput-object v10, v4, v9

    const/4 v9, 0x4

    sget-object v10, Lcom/google/glass/voice/VoiceCommand;->SEND_MESSAGE_TO:Lcom/google/glass/voice/VoiceCommand;

    aput-object v10, v4, v9

    const/4 v9, 0x5

    sget-object v10, Lcom/google/glass/voice/VoiceCommand;->CALL:Lcom/google/glass/voice/VoiceCommand;

    aput-object v10, v4, v9

    const/4 v9, 0x6

    sget-object v10, Lcom/google/glass/voice/VoiceCommand;->SEND_MESSAGE_TO:Lcom/google/glass/voice/VoiceCommand;

    aput-object v10, v4, v9

    const/4 v9, 0x7

    sget-object v10, Lcom/google/glass/voice/VoiceCommand;->VIDEO_CALL:Lcom/google/glass/voice/VoiceCommand;

    aput-object v10, v4, v9

    .line 155
    .local v4, menu:[Lcom/google/glass/voice/VoiceCommand;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v7, phrases:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v8, tags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, v4

    .local v0, arr$:[Lcom/google/glass/voice/VoiceCommand;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 159
    .local v1, cmd:Lcom/google/glass/voice/VoiceCommand;
    invoke-virtual {v1}, Lcom/google/glass/voice/VoiceCommand;->getLiteral()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    const-string v9, ""

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    .end local v1           #cmd:Lcom/google/glass/voice/VoiceCommand;
    :cond_0
    sget-object v9, Lcom/google/glass/util/Labs$Feature;->NATIVE_APP_VOICE:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v9}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 164
    invoke-static {}, Lcom/google/glass/voice/NativeAppVoiceConfigHelper;->getInstance()Lcom/google/glass/voice/NativeAppVoiceConfigHelper;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/google/glass/voice/NativeAppVoiceConfigHelper;->getNativeAppsConfig(Landroid/content/Context;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v6

    .line 166
    .local v6, nativeConfig:Lcom/google/glass/voice/VoiceConfig;
    if-eqz v6, :cond_1

    .line 167
    invoke-virtual {v6}, Lcom/google/glass/voice/VoiceConfig;->getCustomPhrases()[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 168
    invoke-virtual {v6}, Lcom/google/glass/voice/VoiceConfig;->getCustomTags()[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 173
    .end local v6           #nativeConfig:Lcom/google/glass/voice/VoiceConfig;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/embedded/GlassRecognizerFactory;->createMirrorConfig(Landroid/content/Context;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v5

    .line 174
    .local v5, mirrorConfig:Lcom/google/glass/voice/VoiceConfig;
    if-eqz v5, :cond_2

    .line 175
    invoke-virtual {v5}, Lcom/google/glass/voice/VoiceConfig;->getCustomPhrases()[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 176
    invoke-virtual {v5}, Lcom/google/glass/voice/VoiceConfig;->getCustomTags()[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 179
    :cond_2
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 181
    new-instance v9, Lcom/google/glass/voice/embedded/GlassRecognizerFactory$FilteredGrecoRecognizer;

    sget-object v10, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;->MENU:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    invoke-direct {v9, p0, p1, v10, v4}, Lcom/google/glass/voice/embedded/GlassRecognizerFactory$FilteredGrecoRecognizer;-><init>(Lcom/google/glass/voice/embedded/GlassRecognizerFactory;Landroid/content/Context;Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;[Lcom/google/glass/voice/VoiceCommand;)V

    .line 185
    :goto_1
    return-object v9

    :cond_3
    new-instance v11, Lcom/google/glass/voice/VoiceConfig;

    sget-object v9, Lcom/google/glass/voice/VoiceConfig;->MAIN_MENU:Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {p0, v9}, Lcom/google/glass/voice/embedded/GlassRecognizerFactory;->getDecoderName(Lcom/google/glass/voice/VoiceConfig;)Ljava/lang/String;

    move-result-object v12

    new-array v9, v13, [Ljava/lang/String;

    invoke-interface {v7, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    new-array v10, v13, [Ljava/lang/String;

    invoke-interface {v8, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    invoke-direct {v11, v12, v9, v10}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0, p1, v11}, Lcom/google/glass/voice/embedded/GlassRecognizerFactory;->createCustomRecognizer(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/HotwordRecognizer;

    move-result-object v9

    goto :goto_1
.end method


# virtual methods
.method protected createCustomRecognizer(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;Ljava/util/Collection;)Lcom/google/glass/voice/HotwordRecognizer;
    .locals 7
    .parameter "context"
    .parameter "config"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/glass/voice/VoiceConfig;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;)",
            "Lcom/google/glass/voice/HotwordRecognizer;"
        }
    .end annotation

    .prologue
    .line 249
    .local p3, entities:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-virtual {p2}, Lcom/google/glass/voice/VoiceConfig;->getDisambiguationCommandType()I

    move-result v0

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_0

    .line 250
    invoke-virtual {p2}, Lcom/google/glass/voice/VoiceConfig;->getDisambiguationCommandType()I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/google/glass/voice/embedded/GlassRecognizerFactory;->createDisambiguationRecognizer(Landroid/content/Context;ILjava/util/Collection;)Lcom/google/glass/voice/HotwordRecognizer;

    move-result-object v0

    .line 263
    :goto_0
    return-object v0

    .line 252
    :cond_0
    invoke-virtual {p2}, Lcom/google/glass/voice/VoiceConfig;->getLiteral()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 253
    sget-object v0, Lcom/google/glass/voice/embedded/GlassRecognizerFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "creating disambiguation grammar for literal"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    invoke-virtual {p2}, Lcom/google/glass/voice/VoiceConfig;->getLiteral()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/voice/embedded/GlassRecognizerFactory;->createDisambiguationRecognizer(Landroid/content/Context;Ljava/lang/String;)Lcom/google/glass/voice/HotwordRecognizer;

    move-result-object v0

    goto :goto_0

    .line 257
    :cond_1
    invoke-virtual {p2}, Lcom/google/glass/voice/VoiceConfig;->getVoiceConfigs()[Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_2

    .line 258
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not yet implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_2
    iget-object v0, p2, Lcom/google/glass/voice/VoiceConfig;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;->valueOf(Ljava/lang/String;)Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    move-result-object v3

    .line 263
    .local v3, decoder:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;
    new-instance v0, Lcom/google/glass/voice/embedded/GlassRecognizerFactory$1;

    invoke-virtual {p2}, Lcom/google/glass/voice/VoiceConfig;->getCustomPhrases()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/google/glass/voice/VoiceConfig;->getCustomTags()[Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/voice/embedded/GlassRecognizerFactory$1;-><init>(Lcom/google/glass/voice/embedded/GlassRecognizerFactory;Landroid/content/Context;Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;[Ljava/lang/String;[Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig;)V

    goto :goto_0
.end method

.method public createMirrorConfig(Landroid/content/Context;)Lcom/google/glass/voice/VoiceConfig;
    .locals 13
    .parameter "context"

    .prologue
    const/4 v12, 0x0

    .line 297
    invoke-static {p1}, Lcom/google/glass/voice/EntityUtils;->getMirrorCommandEntities(Landroid/content/Context;)Lcom/google/common/collect/ListMultimap;

    move-result-object v4

    .line 300
    .local v4, mirrorCommandEntities:Lcom/google/common/collect/Multimap;,"Lcom/google/common/collect/Multimap<Ljava/lang/Integer;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v5, phrases:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 303
    .local v6, tags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-class v7, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command$CommandType;

    invoke-static {v7}, Lcom/google/glass/util/ProtoEnumUtils;->getEnumValues(Ljava/lang/Class;)[I

    move-result-object v0

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget v1, v0, v2

    .line 305
    .local v1, commandType:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Lcom/google/common/collect/Multimap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 307
    sget-object v7, Lcom/google/glass/voice/embedded/GlassRecognizerFactory;->mirrorCommands:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 308
    sget-object v7, Lcom/google/glass/voice/embedded/GlassRecognizerFactory;->mirrorCommands:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    const-string v7, ""

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 311
    :cond_1
    sget-object v7, Lcom/google/glass/voice/embedded/GlassRecognizerFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "GlassFactory"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Not a known mirror command: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 316
    .end local v1           #commandType:I
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_3

    .line 317
    const/4 v7, 0x0

    .line 320
    :goto_2
    return-object v7

    :cond_3
    new-instance v9, Lcom/google/glass/voice/VoiceConfig;

    const-string v10, "MIRROR"

    new-array v7, v12, [Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    new-array v8, v12, [Ljava/lang/String;

    invoke-interface {v6, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    invoke-direct {v9, v10, v7, v8}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    move-object v7, v9

    goto :goto_2
.end method

.method protected createSystemRecognizer(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/HotwordRecognizer;
    .locals 10
    .parameter "context"
    .parameter "config"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 93
    sget-object v2, Lcom/google/glass/voice/embedded/GlassRecognizerFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "GlassFactory"

    new-array v4, v8, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Creating system recognizer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->CONTACTS:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v2, p2}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    invoke-direct {p0, p2}, Lcom/google/glass/voice/embedded/GlassRecognizerFactory;->getDecoderName(Lcom/google/glass/voice/VoiceConfig;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/google/glass/voice/EntityUtils;->getContactEntities(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Lcom/google/glass/voice/embedded/GlassRecognizerFactory;->createEntityRecognizer(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;)Lcom/google/glass/voice/HotwordRecognizer;

    move-result-object v2

    .line 136
    :goto_0
    return-object v2

    .line 97
    :cond_0
    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->GUARD:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v2, p2}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    new-instance v2, Lcom/google/glass/voice/embedded/GlassRecognizerFactory$FilteredGrecoRecognizer;

    sget-object v3, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;->GUARD:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    new-array v4, v8, [Lcom/google/glass/voice/VoiceCommand;

    sget-object v5, Lcom/google/glass/voice/VoiceCommand;->OK_GLASS:Lcom/google/glass/voice/VoiceCommand;

    aput-object v5, v4, v7

    invoke-direct {v2, p0, p1, v3, v4}, Lcom/google/glass/voice/embedded/GlassRecognizerFactory$FilteredGrecoRecognizer;-><init>(Lcom/google/glass/voice/embedded/GlassRecognizerFactory;Landroid/content/Context;Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;[Lcom/google/glass/voice/VoiceCommand;)V

    goto :goto_0

    .line 99
    :cond_1
    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->INCOMING_CALL:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v2, p2}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    new-instance v2, Lcom/google/glass/voice/embedded/GlassRecognizerFactory$FilteredGrecoRecognizer;

    sget-object v3, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;->MENU:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    new-array v4, v9, [Lcom/google/glass/voice/VoiceCommand;

    sget-object v5, Lcom/google/glass/voice/VoiceCommand;->ANSWER_CALL:Lcom/google/glass/voice/VoiceCommand;

    aput-object v5, v4, v7

    sget-object v5, Lcom/google/glass/voice/VoiceCommand;->DECLINE_CALL:Lcom/google/glass/voice/VoiceCommand;

    aput-object v5, v4, v8

    invoke-direct {v2, p0, p1, v3, v4}, Lcom/google/glass/voice/embedded/GlassRecognizerFactory$FilteredGrecoRecognizer;-><init>(Lcom/google/glass/voice/embedded/GlassRecognizerFactory;Landroid/content/Context;Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;[Lcom/google/glass/voice/VoiceCommand;)V

    goto :goto_0

    .line 102
    :cond_2
    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->MAIN_MENU:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v2, p2}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 103
    invoke-direct {p0, p1}, Lcom/google/glass/voice/embedded/GlassRecognizerFactory;->newMainMenuRecognizer(Landroid/content/Context;)Lcom/google/glass/voice/HotwordRecognizer;

    move-result-object v2

    goto :goto_0

    .line 104
    :cond_3
    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->NOTIFICATION:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v2, p2}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 105
    new-instance v2, Lcom/google/glass/voice/embedded/GlassRecognizerFactory$FilteredGrecoRecognizer;

    sget-object v3, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;->MENU:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    new-array v4, v9, [Lcom/google/glass/voice/VoiceCommand;

    sget-object v5, Lcom/google/glass/voice/VoiceCommand;->REPLY:Lcom/google/glass/voice/VoiceCommand;

    aput-object v5, v4, v7

    sget-object v5, Lcom/google/glass/voice/VoiceCommand;->READ_ALOUD:Lcom/google/glass/voice/VoiceCommand;

    aput-object v5, v4, v8

    invoke-direct {v2, p0, p1, v3, v4}, Lcom/google/glass/voice/embedded/GlassRecognizerFactory$FilteredGrecoRecognizer;-><init>(Lcom/google/glass/voice/embedded/GlassRecognizerFactory;Landroid/content/Context;Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;[Lcom/google/glass/voice/VoiceCommand;)V

    goto :goto_0

    .line 107
    :cond_4
    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->GUARD_CONSERVATIVE:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v2, p2}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 108
    new-instance v2, Lcom/google/glass/voice/embedded/GlassRecognizerFactory$FilteredGrecoRecognizer;

    sget-object v3, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;->GUARD:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    new-array v4, v8, [Lcom/google/glass/voice/VoiceCommand;

    sget-object v5, Lcom/google/glass/voice/VoiceCommand;->OK_GLASS:Lcom/google/glass/voice/VoiceCommand;

    aput-object v5, v4, v7

    invoke-direct {v2, p0, p1, v3, v4}, Lcom/google/glass/voice/embedded/GlassRecognizerFactory$FilteredGrecoRecognizer;-><init>(Lcom/google/glass/voice/embedded/GlassRecognizerFactory;Landroid/content/Context;Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;[Lcom/google/glass/voice/VoiceCommand;)V

    goto :goto_0

    .line 109
    :cond_5
    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v2, p2}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 110
    invoke-static {p1}, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->getEmbeddedRecognizerController(Landroid/content/Context;)Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;

    move-result-object v2

    sget-object v3, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;->NONE:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    invoke-virtual {v2, v3}, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController;->switchDecoders(Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;)Z

    .line 112
    sget-object v2, Lcom/google/glass/voice/embedded/GlassRecognizerFactory;->NO_OP_RECOGNIZER:Lcom/google/glass/voice/HotwordRecognizer;

    goto/16 :goto_0

    .line 113
    :cond_6
    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->PHOTO_SHARE_TARGETS:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v2, p2}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 114
    const-string v2, "image/jpeg"

    invoke-static {p1, v2}, Lcom/google/glass/voice/EntityUtils;->getShareTargetEntities(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 116
    .local v0, photoShareTargetEntities:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-static {p1, v0}, Lcom/google/glass/voice/embedded/GlassRecognizerFactory;->prependNames(Landroid/content/Context;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 117
    invoke-direct {p0, p2}, Lcom/google/glass/voice/embedded/GlassRecognizerFactory;->getDecoderName(Lcom/google/glass/voice/VoiceConfig;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2, v0}, Lcom/google/glass/voice/embedded/GlassRecognizerFactory;->createEntityRecognizer(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;)Lcom/google/glass/voice/HotwordRecognizer;

    move-result-object v2

    goto/16 :goto_0

    .line 118
    .end local v0           #photoShareTargetEntities:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    :cond_7
    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->VIDEO_SHARE_TARGETS:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v2, p2}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 119
    const-string v2, "video/mp4"

    invoke-static {p1, v2}, Lcom/google/glass/voice/EntityUtils;->getShareTargetEntities(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    .line 121
    .local v1, videoShareTargetEntities:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-static {p1, v1}, Lcom/google/glass/voice/embedded/GlassRecognizerFactory;->prependNames(Landroid/content/Context;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 122
    invoke-direct {p0, p2}, Lcom/google/glass/voice/embedded/GlassRecognizerFactory;->getDecoderName(Lcom/google/glass/voice/VoiceConfig;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2, v1}, Lcom/google/glass/voice/embedded/GlassRecognizerFactory;->createEntityRecognizer(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;)Lcom/google/glass/voice/HotwordRecognizer;

    move-result-object v2

    goto/16 :goto_0

    .line 123
    .end local v1           #videoShareTargetEntities:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    :cond_8
    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->PLUS_SHARE_TARGETS:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v2, p2}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 124
    invoke-direct {p0, p2}, Lcom/google/glass/voice/embedded/GlassRecognizerFactory;->getDecoderName(Lcom/google/glass/voice/VoiceConfig;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/google/glass/voice/EntityUtils;->getPlusShareTargetEntities(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Lcom/google/glass/voice/embedded/GlassRecognizerFactory;->createEntityRecognizer(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;)Lcom/google/glass/voice/HotwordRecognizer;

    move-result-object v2

    goto/16 :goto_0

    .line 126
    :cond_9
    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->PHOTO_REVIEW:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v2, p2}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 127
    new-instance v2, Lcom/google/glass/voice/embedded/GlassRecognizerFactory$FilteredGrecoRecognizer;

    sget-object v3, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;->MENU:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    new-array v4, v8, [Lcom/google/glass/voice/VoiceCommand;

    sget-object v5, Lcom/google/glass/voice/VoiceCommand;->SHARE:Lcom/google/glass/voice/VoiceCommand;

    aput-object v5, v4, v7

    invoke-direct {v2, p0, p1, v3, v4}, Lcom/google/glass/voice/embedded/GlassRecognizerFactory$FilteredGrecoRecognizer;-><init>(Lcom/google/glass/voice/embedded/GlassRecognizerFactory;Landroid/content/Context;Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;[Lcom/google/glass/voice/VoiceCommand;)V

    goto/16 :goto_0

    .line 128
    :cond_a
    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->PHOTO_SHARE:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v2, p2}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 129
    new-instance v2, Lcom/google/glass/voice/embedded/GlassRecognizerFactory$FilteredGrecoRecognizer;

    sget-object v3, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;->MENU:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    new-array v4, v8, [Lcom/google/glass/voice/VoiceCommand;

    sget-object v5, Lcom/google/glass/voice/VoiceCommand;->SHARE:Lcom/google/glass/voice/VoiceCommand;

    aput-object v5, v4, v7

    invoke-direct {v2, p0, p1, v3, v4}, Lcom/google/glass/voice/embedded/GlassRecognizerFactory$FilteredGrecoRecognizer;-><init>(Lcom/google/glass/voice/embedded/GlassRecognizerFactory;Landroid/content/Context;Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;[Lcom/google/glass/voice/VoiceCommand;)V

    goto/16 :goto_0

    .line 130
    :cond_b
    sget-object v2, Lcom/google/glass/voice/VoiceConfig;->DIRECTIONS:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v2, p2}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 131
    new-instance v2, Lcom/google/glass/voice/embedded/GlassRecognizerFactory$FilteredGrecoRecognizer;

    sget-object v3, Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;->MENU:Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;

    new-array v4, v9, [Lcom/google/glass/voice/VoiceCommand;

    sget-object v5, Lcom/google/glass/voice/VoiceCommand;->SHOW_HIDE_ROUTE_OVERVIEW:Lcom/google/glass/voice/VoiceCommand;

    aput-object v5, v4, v7

    sget-object v5, Lcom/google/glass/voice/VoiceCommand;->STOP_DIRECTIONS:Lcom/google/glass/voice/VoiceCommand;

    aput-object v5, v4, v8

    invoke-direct {v2, p0, p1, v3, v4}, Lcom/google/glass/voice/embedded/GlassRecognizerFactory$FilteredGrecoRecognizer;-><init>(Lcom/google/glass/voice/embedded/GlassRecognizerFactory;Landroid/content/Context;Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;[Lcom/google/glass/voice/VoiceCommand;)V

    goto/16 :goto_0

    .line 135
    :cond_c
    sget-object v2, Lcom/google/glass/voice/embedded/GlassRecognizerFactory;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "GlassFactory"

    new-array v4, v8, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Glass recognizer not found for system config: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    sget-object v2, Lcom/google/glass/voice/embedded/GlassRecognizerFactory;->NO_OP_RECOGNIZER:Lcom/google/glass/voice/HotwordRecognizer;

    goto/16 :goto_0
.end method
