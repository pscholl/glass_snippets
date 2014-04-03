.class public final enum Lcom/google/android/speech/params/SessionParams$Mode;
.super Ljava/lang/Enum;
.source "SessionParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/speech/params/SessionParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/speech/params/SessionParams$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/speech/params/SessionParams$Mode;

.field public static final enum DICTATION:Lcom/google/android/speech/params/SessionParams$Mode;

.field public static final enum HANDS_FREE_COMMANDS:Lcom/google/android/speech/params/SessionParams$Mode;

.field public static final enum HANDS_FREE_CONTACTS:Lcom/google/android/speech/params/SessionParams$Mode;

.field public static final enum HOTWORD:Lcom/google/android/speech/params/SessionParams$Mode;

.field public static final enum INTENT_API:Lcom/google/android/speech/params/SessionParams$Mode;

.field public static final enum SERVICE_API:Lcom/google/android/speech/params/SessionParams$Mode;

.field public static final enum SOUND_SEARCH:Lcom/google/android/speech/params/SessionParams$Mode;

.field public static final enum VOICE_ACTIONS:Lcom/google/android/speech/params/SessionParams$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    new-instance v0, Lcom/google/android/speech/params/SessionParams$Mode;

    const-string v1, "INTENT_API"

    invoke-direct {v0, v1, v3}, Lcom/google/android/speech/params/SessionParams$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/speech/params/SessionParams$Mode;->INTENT_API:Lcom/google/android/speech/params/SessionParams$Mode;

    .line 29
    new-instance v0, Lcom/google/android/speech/params/SessionParams$Mode;

    const-string v1, "SERVICE_API"

    invoke-direct {v0, v1, v4}, Lcom/google/android/speech/params/SessionParams$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/speech/params/SessionParams$Mode;->SERVICE_API:Lcom/google/android/speech/params/SessionParams$Mode;

    .line 31
    new-instance v0, Lcom/google/android/speech/params/SessionParams$Mode;

    const-string v1, "VOICE_ACTIONS"

    invoke-direct {v0, v1, v5}, Lcom/google/android/speech/params/SessionParams$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/speech/params/SessionParams$Mode;->VOICE_ACTIONS:Lcom/google/android/speech/params/SessionParams$Mode;

    .line 33
    new-instance v0, Lcom/google/android/speech/params/SessionParams$Mode;

    const-string v1, "DICTATION"

    invoke-direct {v0, v1, v6}, Lcom/google/android/speech/params/SessionParams$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/speech/params/SessionParams$Mode;->DICTATION:Lcom/google/android/speech/params/SessionParams$Mode;

    .line 35
    new-instance v0, Lcom/google/android/speech/params/SessionParams$Mode;

    const-string v1, "HANDS_FREE_CONTACTS"

    invoke-direct {v0, v1, v7}, Lcom/google/android/speech/params/SessionParams$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/speech/params/SessionParams$Mode;->HANDS_FREE_CONTACTS:Lcom/google/android/speech/params/SessionParams$Mode;

    .line 37
    new-instance v0, Lcom/google/android/speech/params/SessionParams$Mode;

    const-string v1, "HANDS_FREE_COMMANDS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/speech/params/SessionParams$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/speech/params/SessionParams$Mode;->HANDS_FREE_COMMANDS:Lcom/google/android/speech/params/SessionParams$Mode;

    .line 39
    new-instance v0, Lcom/google/android/speech/params/SessionParams$Mode;

    const-string v1, "HOTWORD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/speech/params/SessionParams$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/speech/params/SessionParams$Mode;->HOTWORD:Lcom/google/android/speech/params/SessionParams$Mode;

    .line 41
    new-instance v0, Lcom/google/android/speech/params/SessionParams$Mode;

    const-string v1, "SOUND_SEARCH"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/android/speech/params/SessionParams$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/speech/params/SessionParams$Mode;->SOUND_SEARCH:Lcom/google/android/speech/params/SessionParams$Mode;

    .line 25
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/android/speech/params/SessionParams$Mode;

    sget-object v1, Lcom/google/android/speech/params/SessionParams$Mode;->INTENT_API:Lcom/google/android/speech/params/SessionParams$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/speech/params/SessionParams$Mode;->SERVICE_API:Lcom/google/android/speech/params/SessionParams$Mode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/speech/params/SessionParams$Mode;->VOICE_ACTIONS:Lcom/google/android/speech/params/SessionParams$Mode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/speech/params/SessionParams$Mode;->DICTATION:Lcom/google/android/speech/params/SessionParams$Mode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/speech/params/SessionParams$Mode;->HANDS_FREE_CONTACTS:Lcom/google/android/speech/params/SessionParams$Mode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/speech/params/SessionParams$Mode;->HANDS_FREE_COMMANDS:Lcom/google/android/speech/params/SessionParams$Mode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/speech/params/SessionParams$Mode;->HOTWORD:Lcom/google/android/speech/params/SessionParams$Mode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/speech/params/SessionParams$Mode;->SOUND_SEARCH:Lcom/google/android/speech/params/SessionParams$Mode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/speech/params/SessionParams$Mode;->$VALUES:[Lcom/google/android/speech/params/SessionParams$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/speech/params/SessionParams$Mode;
    .locals 1
    .parameter "name"

    .prologue
    .line 25
    const-class v0, Lcom/google/android/speech/params/SessionParams$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/speech/params/SessionParams$Mode;

    return-object v0
.end method

.method public static values()[Lcom/google/android/speech/params/SessionParams$Mode;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/android/speech/params/SessionParams$Mode;->$VALUES:[Lcom/google/android/speech/params/SessionParams$Mode;

    invoke-virtual {v0}, [Lcom/google/android/speech/params/SessionParams$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/speech/params/SessionParams$Mode;

    return-object v0
.end method
