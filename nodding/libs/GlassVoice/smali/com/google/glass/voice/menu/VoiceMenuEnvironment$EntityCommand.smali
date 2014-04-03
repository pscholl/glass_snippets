.class public final enum Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityCommand;
.super Ljava/lang/Enum;
.source "VoiceMenuEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/menu/VoiceMenuEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EntityCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityCommand;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityCommand;

.field public static final enum CALL:Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityCommand;

.field public static final enum MESSAGE:Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityCommand;

.field public static final enum SHARE:Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityCommand;

.field public static final enum VIDEO_CALL:Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityCommand;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityCommand;

    const-string v1, "VIDEO_CALL"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityCommand;->VIDEO_CALL:Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityCommand;

    .line 38
    new-instance v0, Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityCommand;

    const-string v1, "CALL"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityCommand;->CALL:Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityCommand;

    .line 39
    new-instance v0, Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityCommand;

    const-string v1, "MESSAGE"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityCommand;->MESSAGE:Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityCommand;

    .line 40
    new-instance v0, Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityCommand;

    const-string v1, "SHARE"

    invoke-direct {v0, v1, v5}, Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityCommand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityCommand;->SHARE:Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityCommand;

    .line 36
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityCommand;

    sget-object v1, Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityCommand;->VIDEO_CALL:Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityCommand;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityCommand;->CALL:Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityCommand;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityCommand;->MESSAGE:Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityCommand;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityCommand;->SHARE:Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityCommand;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityCommand;->$VALUES:[Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityCommand;

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
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityCommand;
    .locals 1
    .parameter "name"

    .prologue
    .line 36
    const-class v0, Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityCommand;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityCommand;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityCommand;->$VALUES:[Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityCommand;

    invoke-virtual {v0}, [Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityCommand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityCommand;

    return-object v0
.end method
