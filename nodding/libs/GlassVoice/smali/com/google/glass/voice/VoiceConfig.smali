.class public Lcom/google/glass/voice/VoiceConfig;
.super Ljava/lang/Object;
.source "VoiceConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/VoiceConfig$Type;
    }
.end annotation


# static fields
.field public static final CONTACTS:Lcom/google/glass/voice/VoiceConfig;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/glass/voice/VoiceConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIRECTIONS:Lcom/google/glass/voice/VoiceConfig;

.field public static final GUARD:Lcom/google/glass/voice/VoiceConfig;

.field public static final GUARD_CONSERVATIVE:Lcom/google/glass/voice/VoiceConfig;

.field public static final INCOMING_CALL:Lcom/google/glass/voice/VoiceConfig;

.field public static final MAIN_MENU:Lcom/google/glass/voice/VoiceConfig;

.field public static final NAVIGATION:Lcom/google/glass/voice/VoiceConfig;

.field public static final NOTIFICATION:Lcom/google/glass/voice/VoiceConfig;

.field public static final OFF:Lcom/google/glass/voice/VoiceConfig;

.field public static final PHOTO_REVIEW:Lcom/google/glass/voice/VoiceConfig;

.field public static final PHOTO_SHARE:Lcom/google/glass/voice/VoiceConfig;

.field public static final PHOTO_SHARE_TARGETS:Lcom/google/glass/voice/VoiceConfig;

.field public static final PLUS_SHARE_TARGETS:Lcom/google/glass/voice/VoiceConfig;

.field public static final SOUND_SEARCH:Lcom/google/glass/voice/VoiceConfig;

.field public static final VIDEO_SHARE_TARGETS:Lcom/google/glass/voice/VoiceConfig;

.field public static final VOICE_CORRECTION:Lcom/google/glass/voice/VoiceConfig;

.field public static final VOICE_CORRECTION_HOTWORD:Lcom/google/glass/voice/VoiceConfig;

.field public static final VOICE_RECORD:Lcom/google/glass/voice/VoiceConfig;

.field public static final VOICE_SEARCH:Lcom/google/glass/voice/VoiceConfig;

.field private static final systemConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/glass/voice/VoiceConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final customPhrases:[Ljava/lang/String;

.field private final customTags:[Ljava/lang/String;

.field private final disambiguationCommandType:I

.field private final literal:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final shouldSaveAudio:Z

.field private final systemConfigs:[Lcom/google/glass/voice/VoiceConfig;

.field public final type:Lcom/google/glass/voice/VoiceConfig$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->systemConfigMap:Ljava/util/Map;

    .line 68
    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    const-string v1, "OFF"

    sget-object v2, Lcom/google/glass/voice/VoiceConfig$Type;->NONE:Lcom/google/glass/voice/VoiceConfig$Type;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig$Type;Z)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    .line 71
    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    const-string v1, "GUARD"

    sget-object v2, Lcom/google/glass/voice/VoiceConfig$Type;->HOTWORD:Lcom/google/glass/voice/VoiceConfig$Type;

    invoke-direct {v0, v1, v2, v7}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig$Type;Z)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->GUARD:Lcom/google/glass/voice/VoiceConfig;

    .line 74
    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    const-string v1, "MAIN_MENU"

    sget-object v2, Lcom/google/glass/voice/VoiceConfig$Type;->HOTWORD:Lcom/google/glass/voice/VoiceConfig$Type;

    invoke-direct {v0, v1, v2, v7}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig$Type;Z)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->MAIN_MENU:Lcom/google/glass/voice/VoiceConfig;

    .line 81
    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    const-string v1, "GUARD_CONSERVATIVE"

    sget-object v2, Lcom/google/glass/voice/VoiceConfig$Type;->HOTWORD:Lcom/google/glass/voice/VoiceConfig$Type;

    invoke-direct {v0, v1, v2, v7}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig$Type;Z)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->GUARD_CONSERVATIVE:Lcom/google/glass/voice/VoiceConfig;

    .line 85
    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    const-string v1, "CONTACTS"

    sget-object v2, Lcom/google/glass/voice/VoiceConfig$Type;->HOTWORD:Lcom/google/glass/voice/VoiceConfig$Type;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig$Type;Z)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->CONTACTS:Lcom/google/glass/voice/VoiceConfig;

    .line 88
    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    const-string v1, "PLUS_SHARE_TARGETS"

    sget-object v2, Lcom/google/glass/voice/VoiceConfig$Type;->HOTWORD:Lcom/google/glass/voice/VoiceConfig$Type;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig$Type;Z)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->PLUS_SHARE_TARGETS:Lcom/google/glass/voice/VoiceConfig;

    .line 92
    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    const-string v1, "PHOTO_SHARE_TARGETS"

    sget-object v2, Lcom/google/glass/voice/VoiceConfig$Type;->HOTWORD:Lcom/google/glass/voice/VoiceConfig$Type;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig$Type;Z)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->PHOTO_SHARE_TARGETS:Lcom/google/glass/voice/VoiceConfig;

    .line 96
    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    const-string v1, "VIDEO_SHARE_TARGETS"

    sget-object v2, Lcom/google/glass/voice/VoiceConfig$Type;->HOTWORD:Lcom/google/glass/voice/VoiceConfig$Type;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig$Type;Z)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->VIDEO_SHARE_TARGETS:Lcom/google/glass/voice/VoiceConfig;

    .line 100
    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    const-string v1, "NOTIFICATION"

    sget-object v2, Lcom/google/glass/voice/VoiceConfig$Type;->HOTWORD:Lcom/google/glass/voice/VoiceConfig$Type;

    invoke-direct {v0, v1, v2, v7}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig$Type;Z)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->NOTIFICATION:Lcom/google/glass/voice/VoiceConfig;

    .line 107
    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    const-string v1, "PHOTO_REVIEW"

    sget-object v2, Lcom/google/glass/voice/VoiceConfig$Type;->HOTWORD:Lcom/google/glass/voice/VoiceConfig$Type;

    invoke-direct {v0, v1, v2, v7}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig$Type;Z)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->PHOTO_REVIEW:Lcom/google/glass/voice/VoiceConfig;

    .line 114
    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    const-string v1, "PHOTO_SHARE"

    sget-object v2, Lcom/google/glass/voice/VoiceConfig$Type;->HOTWORD:Lcom/google/glass/voice/VoiceConfig$Type;

    invoke-direct {v0, v1, v2, v7}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig$Type;Z)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->PHOTO_SHARE:Lcom/google/glass/voice/VoiceConfig;

    .line 121
    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    const-string v1, "DIRECTIONS"

    sget-object v2, Lcom/google/glass/voice/VoiceConfig$Type;->HOTWORD:Lcom/google/glass/voice/VoiceConfig$Type;

    invoke-direct {v0, v1, v2, v7}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig$Type;Z)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->DIRECTIONS:Lcom/google/glass/voice/VoiceConfig;

    .line 124
    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    const-string v1, "INCOMING_CALL"

    sget-object v2, Lcom/google/glass/voice/VoiceConfig$Type;->HOTWORD:Lcom/google/glass/voice/VoiceConfig$Type;

    invoke-direct {v0, v1, v2, v7}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig$Type;Z)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->INCOMING_CALL:Lcom/google/glass/voice/VoiceConfig;

    .line 128
    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    const-string v1, "VOICE_SEARCH"

    sget-object v2, Lcom/google/glass/voice/VoiceConfig$Type;->SEARCH:Lcom/google/glass/voice/VoiceConfig$Type;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig$Type;Z)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->VOICE_SEARCH:Lcom/google/glass/voice/VoiceConfig;

    .line 132
    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    const-string v1, "SOUND_SEARCH"

    sget-object v2, Lcom/google/glass/voice/VoiceConfig$Type;->SEARCH:Lcom/google/glass/voice/VoiceConfig$Type;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig$Type;Z)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->SOUND_SEARCH:Lcom/google/glass/voice/VoiceConfig;

    .line 136
    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    const-string v1, "NAVIGATION"

    sget-object v2, Lcom/google/glass/voice/VoiceConfig$Type;->SEARCH:Lcom/google/glass/voice/VoiceConfig$Type;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig$Type;Z)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->NAVIGATION:Lcom/google/glass/voice/VoiceConfig;

    .line 139
    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    const-string v1, "VOICE_RECORD"

    sget-object v2, Lcom/google/glass/voice/VoiceConfig$Type;->DICTATION:Lcom/google/glass/voice/VoiceConfig$Type;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig$Type;Z)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->VOICE_RECORD:Lcom/google/glass/voice/VoiceConfig;

    .line 143
    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    const-string v1, "VOICE_CORRECTION_HOTWORD"

    sget-object v2, Lcom/google/glass/voice/VoiceConfig$Type;->HOTWORD:Lcom/google/glass/voice/VoiceConfig$Type;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "confirm"

    aput-object v6, v5, v3

    const-string v6, "replace"

    aput-object v6, v5, v7

    const/4 v6, 0x2

    const-string v7, "delete"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "next"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "previous"

    aput-object v7, v5, v6

    const/high16 v7, -0x8000

    move-object v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig$Type;Z[Lcom/google/glass/voice/VoiceConfig;[Ljava/lang/String;[Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->VOICE_CORRECTION_HOTWORD:Lcom/google/glass/voice/VoiceConfig;

    .line 149
    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    const-string v1, "VOICE_CORRECTION"

    sget-object v2, Lcom/google/glass/voice/VoiceConfig$Type;->DICTATION:Lcom/google/glass/voice/VoiceConfig$Type;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig$Type;Z)V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->VOICE_CORRECTION:Lcom/google/glass/voice/VoiceConfig;

    .line 437
    new-instance v0, Lcom/google/glass/voice/VoiceConfig$1;

    invoke-direct {v0}, Lcom/google/glass/voice/VoiceConfig$1;-><init>()V

    sput-object v0, Lcom/google/glass/voice/VoiceConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lcom/google/glass/voice/VoiceConfig;->name:Ljava/lang/String;

    .line 155
    sget-object v0, Lcom/google/glass/voice/VoiceConfig$Type;->NONE:Lcom/google/glass/voice/VoiceConfig$Type;

    iput-object v0, p0, Lcom/google/glass/voice/VoiceConfig;->type:Lcom/google/glass/voice/VoiceConfig$Type;

    .line 156
    iput-boolean v1, p0, Lcom/google/glass/voice/VoiceConfig;->shouldSaveAudio:Z

    .line 157
    new-array v0, v1, [Lcom/google/glass/voice/VoiceConfig;

    iput-object v0, p0, Lcom/google/glass/voice/VoiceConfig;->systemConfigs:[Lcom/google/glass/voice/VoiceConfig;

    .line 158
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/glass/voice/VoiceConfig;->customPhrases:[Ljava/lang/String;

    .line 159
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/glass/voice/VoiceConfig;->customTags:[Ljava/lang/String;

    .line 160
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/glass/voice/VoiceConfig;->disambiguationCommandType:I

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceConfig;->literal:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 8
    .parameter "name"
    .parameter "disambiguationCommandType"

    .prologue
    const/4 v4, 0x0

    .line 279
    sget-object v2, Lcom/google/glass/voice/VoiceConfig$Type;->HOTWORD:Lcom/google/glass/voice/VoiceConfig$Type;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    move-object v6, v4

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig$Type;Z[Lcom/google/glass/voice/VoiceConfig;[Ljava/lang/String;[Ljava/lang/String;I)V

    .line 280
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig$Type;Z)V
    .locals 3
    .parameter "name"
    .parameter "type"
    .parameter "shouldSaveAudio"

    .prologue
    const/4 v1, 0x0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p1, p0, Lcom/google/glass/voice/VoiceConfig;->name:Ljava/lang/String;

    .line 167
    iput-object p2, p0, Lcom/google/glass/voice/VoiceConfig;->type:Lcom/google/glass/voice/VoiceConfig$Type;

    .line 168
    iput-boolean p3, p0, Lcom/google/glass/voice/VoiceConfig;->shouldSaveAudio:Z

    .line 169
    new-array v0, v1, [Lcom/google/glass/voice/VoiceConfig;

    iput-object v0, p0, Lcom/google/glass/voice/VoiceConfig;->systemConfigs:[Lcom/google/glass/voice/VoiceConfig;

    .line 170
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/glass/voice/VoiceConfig;->customPhrases:[Ljava/lang/String;

    .line 171
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/glass/voice/VoiceConfig;->customTags:[Ljava/lang/String;

    .line 172
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/glass/voice/VoiceConfig;->disambiguationCommandType:I

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceConfig;->literal:Ljava/lang/String;

    .line 175
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->systemConfigMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "System config names must be unique.  Cannot create: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_0
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->systemConfigMap:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig$Type;Z[Lcom/google/glass/voice/VoiceConfig;[Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 9
    .parameter "name"
    .parameter "type"
    .parameter "shouldSaveAudio"
    .parameter "systemConfigs"
    .parameter "customPhrases"
    .parameter "customTags"
    .parameter "disambiguationCommandType"

    .prologue
    .line 221
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig$Type;Z[Lcom/google/glass/voice/VoiceConfig;[Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;)V

    .line 223
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig$Type;Z[Lcom/google/glass/voice/VoiceConfig;[Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "name"
    .parameter "type"
    .parameter "shouldSaveAudio"
    .parameter "systemConfigs"
    .parameter "customPhrases"
    .parameter "customTags"
    .parameter "disambiguationCommandType"
    .parameter "literal"

    .prologue
    const/4 v0, 0x0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object p1, p0, Lcom/google/glass/voice/VoiceConfig;->name:Ljava/lang/String;

    .line 200
    iput-object p2, p0, Lcom/google/glass/voice/VoiceConfig;->type:Lcom/google/glass/voice/VoiceConfig$Type;

    .line 201
    iput-boolean p3, p0, Lcom/google/glass/voice/VoiceConfig;->shouldSaveAudio:Z

    .line 203
    if-nez p4, :cond_0

    new-array p4, v0, [Lcom/google/glass/voice/VoiceConfig;

    .end local p4
    :cond_0
    iput-object p4, p0, Lcom/google/glass/voice/VoiceConfig;->systemConfigs:[Lcom/google/glass/voice/VoiceConfig;

    .line 204
    if-nez p5, :cond_1

    new-array p5, v0, [Ljava/lang/String;

    .end local p5
    :cond_1
    iput-object p5, p0, Lcom/google/glass/voice/VoiceConfig;->customPhrases:[Ljava/lang/String;

    .line 205
    if-nez p6, :cond_2

    new-array p6, v0, [Ljava/lang/String;

    .end local p6
    :cond_2
    iput-object p6, p0, Lcom/google/glass/voice/VoiceConfig;->customTags:[Ljava/lang/String;

    .line 206
    iput p7, p0, Lcom/google/glass/voice/VoiceConfig;->disambiguationCommandType:I

    .line 207
    iput-object p8, p0, Lcom/google/glass/voice/VoiceConfig;->literal:Ljava/lang/String;

    .line 209
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->isValid()Z

    move-result v0

    if-nez v0, :cond_3

    .line 210
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid voice configuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "name"
    .parameter "literal"

    .prologue
    const/4 v4, 0x0

    .line 275
    sget-object v2, Lcom/google/glass/voice/VoiceConfig$Type;->HOTWORD:Lcom/google/glass/voice/VoiceConfig$Type;

    const/4 v3, 0x0

    const/high16 v7, -0x8000

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    move-object v6, v4

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig$Type;Z[Lcom/google/glass/voice/VoiceConfig;[Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;)V

    .line 276
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Lcom/google/glass/voice/VoiceConfig;)V
    .locals 2
    .parameter "name"
    .parameter "voiceConfigs"

    .prologue
    const/4 v1, 0x0

    .line 289
    new-array v0, v1, [Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;[Lcom/google/glass/voice/VoiceConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Lcom/google/glass/voice/VoiceConfig;[Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "voiceConfigs"
    .parameter "customPhrases"

    .prologue
    .line 304
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;[Lcom/google/glass/voice/VoiceConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Lcom/google/glass/voice/VoiceConfig;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .parameter "name"
    .parameter "voiceConfigs"
    .parameter "customPhrases"
    .parameter "customTags"

    .prologue
    .line 271
    sget-object v2, Lcom/google/glass/voice/VoiceConfig$Type;->HOTWORD:Lcom/google/glass/voice/VoiceConfig$Type;

    const/4 v3, 0x0

    const/high16 v7, -0x8000

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig$Type;Z[Lcom/google/glass/voice/VoiceConfig;[Ljava/lang/String;[Ljava/lang/String;I)V

    .line 272
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "customPhrases"

    .prologue
    .line 296
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "customPhrases"
    .parameter "customTags"

    .prologue
    .line 314
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/glass/voice/VoiceConfig;-><init>(Ljava/lang/String;[Lcom/google/glass/voice/VoiceConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->systemConfigMap:Ljava/util/Map;

    return-object v0
.end method

.method private getSystemConfigNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 393
    iget-object v2, p0, Lcom/google/glass/voice/VoiceConfig;->systemConfigs:[Lcom/google/glass/voice/VoiceConfig;

    array-length v2, v2

    new-array v1, v2, [Ljava/lang/String;

    .line 394
    .local v1, names:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/glass/voice/VoiceConfig;->systemConfigs:[Lcom/google/glass/voice/VoiceConfig;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 395
    iget-object v2, p0, Lcom/google/glass/voice/VoiceConfig;->systemConfigs:[Lcom/google/glass/voice/VoiceConfig;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/google/glass/voice/VoiceConfig;->name:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 394
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 397
    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 398
    return-object v1
.end method

.method public static isSystemConfig(Lcom/google/glass/voice/VoiceConfig;)Z
    .locals 1
    .parameter "config"

    .prologue
    .line 184
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->systemConfigMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 418
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 330
    if-ne p0, p1, :cond_1

    .line 358
    :cond_0
    :goto_0
    return v1

    .line 333
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 334
    goto :goto_0

    .line 336
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 337
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 339
    check-cast v0, Lcom/google/glass/voice/VoiceConfig;

    .line 340
    .local v0, other:Lcom/google/glass/voice/VoiceConfig;
    iget-object v3, p0, Lcom/google/glass/voice/VoiceConfig;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/voice/VoiceConfig;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 341
    goto :goto_0

    .line 343
    :cond_4
    iget-object v3, p0, Lcom/google/glass/voice/VoiceConfig;->type:Lcom/google/glass/voice/VoiceConfig$Type;

    iget-object v4, v0, Lcom/google/glass/voice/VoiceConfig;->type:Lcom/google/glass/voice/VoiceConfig$Type;

    invoke-virtual {v3, v4}, Lcom/google/glass/voice/VoiceConfig$Type;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 344
    goto :goto_0

    .line 346
    :cond_5
    iget-object v3, p0, Lcom/google/glass/voice/VoiceConfig;->customPhrases:[Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/voice/VoiceConfig;->customPhrases:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 347
    goto :goto_0

    .line 349
    :cond_6
    iget-object v3, p0, Lcom/google/glass/voice/VoiceConfig;->customTags:[Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/voice/VoiceConfig;->customTags:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 350
    goto :goto_0

    .line 352
    :cond_7
    iget v3, p0, Lcom/google/glass/voice/VoiceConfig;->disambiguationCommandType:I

    iget v4, v0, Lcom/google/glass/voice/VoiceConfig;->disambiguationCommandType:I

    if-eq v3, v4, :cond_8

    move v1, v2

    .line 353
    goto :goto_0

    .line 355
    :cond_8
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceConfig;->getSystemConfigNames()[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0}, Lcom/google/glass/voice/VoiceConfig;->getSystemConfigNames()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 356
    goto :goto_0
.end method

.method public getCustomPhrases()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/google/glass/voice/VoiceConfig;->customPhrases:[Ljava/lang/String;

    return-object v0
.end method

.method public getCustomTags()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/google/glass/voice/VoiceConfig;->customTags:[Ljava/lang/String;

    return-object v0
.end method

.method public getDisambiguationCommandType()I
    .locals 1

    .prologue
    .line 408
    iget v0, p0, Lcom/google/glass/voice/VoiceConfig;->disambiguationCommandType:I

    return v0
.end method

.method public getLiteral()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/google/glass/voice/VoiceConfig;->literal:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceConfigs()[Lcom/google/glass/voice/VoiceConfig;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/google/glass/voice/VoiceConfig;->systemConfigs:[Lcom/google/glass/voice/VoiceConfig;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 319
    const/16 v0, 0x1f

    .line 320
    .local v0, prime:I
    const/4 v1, 0x1

    .line 321
    .local v1, result:I
    iget-object v2, p0, Lcom/google/glass/voice/VoiceConfig;->customPhrases:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 322
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/glass/voice/VoiceConfig;->customTags:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 323
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/google/glass/voice/VoiceConfig;->disambiguationCommandType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    add-int v1, v2, v3

    .line 324
    mul-int/lit8 v2, v1, 0x1f

    invoke-direct {p0}, Lcom/google/glass/voice/VoiceConfig;->getSystemConfigNames()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 325
    return v1
.end method

.method public isValid()Z
    .locals 10

    .prologue
    const/high16 v9, -0x8000

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 226
    invoke-static {p0}, Lcom/google/glass/voice/VoiceConfig;->isSystemConfig(Lcom/google/glass/voice/VoiceConfig;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 258
    :cond_0
    :goto_0
    return v5

    .line 230
    :cond_1
    iget-object v7, p0, Lcom/google/glass/voice/VoiceConfig;->name:Ljava/lang/String;

    if-eqz v7, :cond_2

    const-string v7, ""

    iget-object v8, p0, Lcom/google/glass/voice/VoiceConfig;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    move v5, v6

    .line 231
    goto :goto_0

    .line 234
    :cond_3
    iget-object v7, p0, Lcom/google/glass/voice/VoiceConfig;->systemConfigs:[Lcom/google/glass/voice/VoiceConfig;

    array-length v7, v7

    if-ne v7, v5, :cond_4

    iget-object v7, p0, Lcom/google/glass/voice/VoiceConfig;->customPhrases:[Ljava/lang/String;

    array-length v7, v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/google/glass/voice/VoiceConfig;->customTags:[Ljava/lang/String;

    array-length v7, v7

    if-nez v7, :cond_4

    iget v7, p0, Lcom/google/glass/voice/VoiceConfig;->disambiguationCommandType:I

    if-ne v7, v9, :cond_4

    iget-object v7, p0, Lcom/google/glass/voice/VoiceConfig;->literal:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v5, v6

    .line 238
    goto :goto_0

    .line 241
    :cond_4
    const/4 v0, 0x1

    .line 242
    .local v0, allHotwordConfigs:Z
    iget-object v1, p0, Lcom/google/glass/voice/VoiceConfig;->systemConfigs:[Lcom/google/glass/voice/VoiceConfig;

    .local v1, arr$:[Lcom/google/glass/voice/VoiceConfig;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_6

    aget-object v2, v1, v3

    .line 243
    .local v2, config:Lcom/google/glass/voice/VoiceConfig;
    invoke-static {v2}, Lcom/google/glass/voice/VoiceConfig;->isSystemConfig(Lcom/google/glass/voice/VoiceConfig;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, v2, Lcom/google/glass/voice/VoiceConfig;->type:Lcom/google/glass/voice/VoiceConfig$Type;

    sget-object v8, Lcom/google/glass/voice/VoiceConfig$Type;->HOTWORD:Lcom/google/glass/voice/VoiceConfig$Type;

    if-eq v7, v8, :cond_5

    .line 244
    const/4 v0, 0x0

    .line 242
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 248
    .end local v2           #config:Lcom/google/glass/voice/VoiceConfig;
    :cond_6
    iget-object v7, p0, Lcom/google/glass/voice/VoiceConfig;->systemConfigs:[Lcom/google/glass/voice/VoiceConfig;

    array-length v7, v7

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/google/glass/voice/VoiceConfig;->customPhrases:[Ljava/lang/String;

    array-length v7, v7

    if-nez v7, :cond_7

    iget v7, p0, Lcom/google/glass/voice/VoiceConfig;->disambiguationCommandType:I

    if-ne v7, v9, :cond_7

    iget-object v7, p0, Lcom/google/glass/voice/VoiceConfig;->literal:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    move v5, v6

    .line 251
    goto :goto_0

    .line 254
    :cond_7
    iget-object v7, p0, Lcom/google/glass/voice/VoiceConfig;->customPhrases:[Ljava/lang/String;

    array-length v7, v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/google/glass/voice/VoiceConfig;->systemConfigs:[Lcom/google/glass/voice/VoiceConfig;

    array-length v7, v7

    if-le v7, v5, :cond_0

    :cond_8
    if-nez v0, :cond_0

    move v5, v6

    .line 255
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 363
    invoke-static {p0}, Lcom/google/glass/voice/VoiceConfig;->isSystemConfig(Lcom/google/glass/voice/VoiceConfig;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 364
    iget-object v2, p0, Lcom/google/glass/voice/VoiceConfig;->name:Ljava/lang/String;

    .line 375
    :goto_0
    return-object v2

    .line 367
    :cond_0
    const-string v1, ""

    .line 368
    .local v1, systemConfigNames:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/google/glass/voice/VoiceConfig;->systemConfigs:[Lcom/google/glass/voice/VoiceConfig;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 369
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/voice/VoiceConfig;->systemConfigs:[Lcom/google/glass/voice/VoiceConfig;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/google/glass/voice/VoiceConfig;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 370
    iget-object v2, p0, Lcom/google/glass/voice/VoiceConfig;->systemConfigs:[Lcom/google/glass/voice/VoiceConfig;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 371
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 368
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 375
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/glass/voice/VoiceConfig;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[systemConfigs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", customPhrases="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/voice/VoiceConfig;->customPhrases:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", customTags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/voice/VoiceConfig;->customTags:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", disambiguationCommandType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/glass/voice/VoiceConfig;->disambiguationCommandType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", literal="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/voice/VoiceConfig;->literal:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 423
    invoke-static {p0}, Lcom/google/glass/voice/VoiceConfig;->isSystemConfig(Lcom/google/glass/voice/VoiceConfig;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    iget-object v3, p0, Lcom/google/glass/voice/VoiceConfig;->name:Ljava/lang/String;

    aput-object v3, v0, v2

    .line 426
    .local v0, names:[Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/google/glass/voice/VoiceConfig;->name:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 427
    iget-object v3, p0, Lcom/google/glass/voice/VoiceConfig;->type:Lcom/google/glass/voice/VoiceConfig$Type;

    invoke-virtual {v3}, Lcom/google/glass/voice/VoiceConfig$Type;->ordinal()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    iget-boolean v3, p0, Lcom/google/glass/voice/VoiceConfig;->shouldSaveAudio:Z

    if-eqz v3, :cond_1

    :goto_1
    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 429
    iget-object v1, p0, Lcom/google/glass/voice/VoiceConfig;->customPhrases:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 430
    iget-object v1, p0, Lcom/google/glass/voice/VoiceConfig;->customTags:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 432
    iget v1, p0, Lcom/google/glass/voice/VoiceConfig;->disambiguationCommandType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 433
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 434
    iget-object v1, p0, Lcom/google/glass/voice/VoiceConfig;->literal:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 435
    return-void

    .line 423
    .end local v0           #names:[Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceConfig;->getSystemConfigNames()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .restart local v0       #names:[Ljava/lang/String;
    :cond_1
    move v1, v2

    .line 428
    goto :goto_1
.end method
