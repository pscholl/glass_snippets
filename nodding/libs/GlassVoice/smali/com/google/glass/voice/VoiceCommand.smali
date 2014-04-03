.class public Lcom/google/glass/voice/VoiceCommand;
.super Ljava/lang/Object;
.source "VoiceCommand.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ADD_A_CALENDAR_EVENT:Lcom/google/glass/voice/VoiceCommand; = null

.field public static final ADD_CAPTION:Lcom/google/glass/voice/VoiceCommand; = null

.field public static final ANSWER_CALL:Lcom/google/glass/voice/VoiceCommand; = null

.field public static final CALL:Lcom/google/glass/voice/VoiceCommand; = null

.field public static final CHECK_ME_IN:Lcom/google/glass/voice/VoiceCommand; = null

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/glass/voice/VoiceCommand;",
            ">;"
        }
    .end annotation
.end field

.field public static final DECLINE_CALL:Lcom/google/glass/voice/VoiceCommand; = null

.field public static final EXPLORE_NEARBY:Lcom/google/glass/voice/VoiceCommand; = null

.field public static final FIND_A_PLACE:Lcom/google/glass/voice/VoiceCommand; = null

.field public static final FIND_A_RECIPE:Lcom/google/glass/voice/VoiceCommand; = null

.field public static final GOOGLE:Lcom/google/glass/voice/VoiceCommand; = null

.field public static final LISTEN_TO:Lcom/google/glass/voice/VoiceCommand; = null

.field public static final NAVIGATION:Lcom/google/glass/voice/VoiceCommand; = null

.field public static final OK_GLASS:Lcom/google/glass/voice/VoiceCommand; = null

.field public static final PLAY_PAUSE_VIDEO:Lcom/google/glass/voice/VoiceCommand; = null

.field public static final POST_AN_UPDATE:Lcom/google/glass/voice/VoiceCommand; = null

.field public static final READ_ALOUD:Lcom/google/glass/voice/VoiceCommand; = null

.field public static final RECORD_VIDEO:Lcom/google/glass/voice/VoiceCommand; = null

.field public static final REPLY:Lcom/google/glass/voice/VoiceCommand; = null

.field private static final SEMANTIC_TAG_PATTERN:Ljava/util/regex/Pattern; = null

.field public static final SEMANTIC_TAG_PREFIX:Ljava/lang/String; = "_tag_"

.field public static final SEND_MESSAGE_TO:Lcom/google/glass/voice/VoiceCommand;

.field public static final SHARE:Lcom/google/glass/voice/VoiceCommand;

.field public static final SHOW_HIDE_ROUTE_OVERVIEW:Lcom/google/glass/voice/VoiceCommand;

.field public static final STOP_DIRECTIONS:Lcom/google/glass/voice/VoiceCommand;

.field public static final TAKE_NOTE:Lcom/google/glass/voice/VoiceCommand;

.field public static final TAKE_PHOTO:Lcom/google/glass/voice/VoiceCommand;

.field public static final VIDEO_CALL:Lcom/google/glass/voice/VoiceCommand;

.field public static final mirrorApiCommands:Lcom/google/common/collect/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BiMap",
            "<",
            "Lcom/google/glass/voice/VoiceCommand;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final staticCommands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/VoiceCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final literal:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->staticCommands:Ljava/util/List;

    .line 27
    invoke-static {}, Lcom/google/common/collect/HashBiMap;->create()Lcom/google/common/collect/HashBiMap;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->mirrorApiCommands:Lcom/google/common/collect/BiMap;

    .line 30
    const-string v0, "ok glass"

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->newStaticCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->OK_GLASS:Lcom/google/glass/voice/VoiceCommand;

    .line 33
    const-string v0, "google"

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->newStaticCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->GOOGLE:Lcom/google/glass/voice/VoiceCommand;

    .line 34
    const-string v0, "take a picture"

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->newStaticCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->TAKE_PHOTO:Lcom/google/glass/voice/VoiceCommand;

    .line 35
    const-string v0, "record video"

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->newStaticCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->RECORD_VIDEO:Lcom/google/glass/voice/VoiceCommand;

    .line 36
    const-string v0, "get directions to"

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->newStaticCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->NAVIGATION:Lcom/google/glass/voice/VoiceCommand;

    .line 37
    const-string v0, "send message to"

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->newStaticCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->SEND_MESSAGE_TO:Lcom/google/glass/voice/VoiceCommand;

    .line 38
    const-string v0, "make a call"

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->newStaticCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->CALL:Lcom/google/glass/voice/VoiceCommand;

    .line 39
    const-string v0, "make a video call"

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->newStaticCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->VIDEO_CALL:Lcom/google/glass/voice/VoiceCommand;

    .line 42
    const-string v0, "read aloud"

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->newStaticCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->READ_ALOUD:Lcom/google/glass/voice/VoiceCommand;

    .line 43
    const-string v0, "reply"

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->newStaticCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->REPLY:Lcom/google/glass/voice/VoiceCommand;

    .line 44
    const-string v0, "video"

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->newStaticCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->PLAY_PAUSE_VIDEO:Lcom/google/glass/voice/VoiceCommand;

    .line 47
    const-string v0, "share with"

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->newStaticCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->SHARE:Lcom/google/glass/voice/VoiceCommand;

    .line 50
    const-string v0, "add a caption"

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->newStaticCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->ADD_CAPTION:Lcom/google/glass/voice/VoiceCommand;

    .line 53
    const-string v0, "answer call"

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->newStaticCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->ANSWER_CALL:Lcom/google/glass/voice/VoiceCommand;

    .line 54
    const-string v0, "decline call"

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->newStaticCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->DECLINE_CALL:Lcom/google/glass/voice/VoiceCommand;

    .line 57
    const-string v0, "show route overview"

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->newStaticCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->SHOW_HIDE_ROUTE_OVERVIEW:Lcom/google/glass/voice/VoiceCommand;

    .line 59
    const-string v0, "stop directions"

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->newStaticCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->STOP_DIRECTIONS:Lcom/google/glass/voice/VoiceCommand;

    .line 65
    const-string v0, "take a note"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/voice/VoiceCommand;->newStaticSecondaryCommand(Ljava/lang/String;I)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->TAKE_NOTE:Lcom/google/glass/voice/VoiceCommand;

    .line 67
    const-string v0, "post an update"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/glass/voice/VoiceCommand;->newStaticSecondaryCommand(Ljava/lang/String;I)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->POST_AN_UPDATE:Lcom/google/glass/voice/VoiceCommand;

    .line 69
    const-string v0, "check me in"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/glass/voice/VoiceCommand;->newStaticSecondaryCommand(Ljava/lang/String;I)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->CHECK_ME_IN:Lcom/google/glass/voice/VoiceCommand;

    .line 71
    const-string v0, "add a calendar event"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/glass/voice/VoiceCommand;->newStaticSecondaryCommand(Ljava/lang/String;I)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->ADD_A_CALENDAR_EVENT:Lcom/google/glass/voice/VoiceCommand;

    .line 73
    const-string v0, "find a recipe"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/glass/voice/VoiceCommand;->newStaticSecondaryCommand(Ljava/lang/String;I)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->FIND_A_RECIPE:Lcom/google/glass/voice/VoiceCommand;

    .line 75
    const-string v0, "find a place"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/google/glass/voice/VoiceCommand;->newStaticSecondaryCommand(Ljava/lang/String;I)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->FIND_A_PLACE:Lcom/google/glass/voice/VoiceCommand;

    .line 77
    const-string v0, "explore nearby"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/google/glass/voice/VoiceCommand;->newStaticSecondaryCommand(Ljava/lang/String;I)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->EXPLORE_NEARBY:Lcom/google/glass/voice/VoiceCommand;

    .line 80
    const-string v0, "listen to"

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->newStaticCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->LISTEN_TO:Lcom/google/glass/voice/VoiceCommand;

    .line 92
    const-string v0, ".*_tag_(.*?)(?=\\s|$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->SEMANTIC_TAG_PATTERN:Ljava/util/regex/Pattern;

    .line 164
    new-instance v0, Lcom/google/glass/voice/VoiceCommand$1;

    invoke-direct {v0}, Lcom/google/glass/voice/VoiceCommand$1;-><init>()V

    sput-object v0, Lcom/google/glass/voice/VoiceCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "literal"

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/google/glass/voice/VoiceCommand;->literal:Ljava/lang/String;

    .line 112
    return-void
.end method

.method private static newStaticCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;
    .locals 2
    .parameter "literal"

    .prologue
    .line 99
    new-instance v0, Lcom/google/glass/voice/VoiceCommand;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceCommand;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, command:Lcom/google/glass/voice/VoiceCommand;
    sget-object v1, Lcom/google/glass/voice/VoiceCommand;->staticCommands:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    return-object v0
.end method

.method private static newStaticSecondaryCommand(Ljava/lang/String;I)Lcom/google/glass/voice/VoiceCommand;
    .locals 3
    .parameter "literal"
    .parameter "commandType"

    .prologue
    .line 105
    invoke-static {p0}, Lcom/google/glass/voice/VoiceCommand;->newStaticCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    .line 106
    .local v0, command:Lcom/google/glass/voice/VoiceCommand;
    sget-object v1, Lcom/google/glass/voice/VoiceCommand;->mirrorApiCommands:Lcom/google/common/collect/BiMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    return-object v0
.end method

.method public static final normalizeSemanticTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "tag"

    .prologue
    .line 189
    const-string v0, "\\s"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 144
    if-ne p0, p1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v1

    .line 147
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 148
    goto :goto_0

    .line 150
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 151
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 153
    check-cast v0, Lcom/google/glass/voice/VoiceCommand;

    .line 154
    .local v0, other:Lcom/google/glass/voice/VoiceCommand;
    iget-object v3, p0, Lcom/google/glass/voice/VoiceCommand;->literal:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 155
    iget-object v3, v0, Lcom/google/glass/voice/VoiceCommand;->literal:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 156
    goto :goto_0

    .line 158
    :cond_4
    iget-object v3, p0, Lcom/google/glass/voice/VoiceCommand;->literal:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/voice/VoiceCommand;->literal:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 159
    goto :goto_0
.end method

.method public getLiteral()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/glass/voice/VoiceCommand;->literal:Ljava/lang/String;

    return-object v0
.end method

.method public getSemanticTag()Ljava/lang/String;
    .locals 3

    .prologue
    .line 121
    sget-object v1, Lcom/google/glass/voice/VoiceCommand;->SEMANTIC_TAG_PATTERN:Ljava/util/regex/Pattern;

    iget-object v2, p0, Lcom/google/glass/voice/VoiceCommand;->literal:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 122
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 125
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 136
    const/16 v0, 0x1f

    .line 137
    .local v0, prime:I
    const/4 v1, 0x1

    .line 138
    .local v1, result:I
    iget-object v2, p0, Lcom/google/glass/voice/VoiceCommand;->literal:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 139
    return v1

    .line 138
    :cond_0
    iget-object v2, p0, Lcom/google/glass/voice/VoiceCommand;->literal:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/glass/voice/VoiceCommand;->literal:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/glass/voice/VoiceCommand;->literal:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    return-void
.end method
