.class public final enum Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;
.super Ljava/lang/Enum;
.source "VoiceMenuEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/menu/VoiceMenuEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EntityType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;

.field public static final enum GENERAL:Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;

.field public static final enum PHOTO:Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;

.field public static final enum PLUS:Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;

.field public static final enum VIDEO:Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;

    const-string v1, "GENERAL"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;->GENERAL:Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;

    .line 24
    new-instance v0, Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;

    const-string v1, "PLUS"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;->PLUS:Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;

    .line 27
    new-instance v0, Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;

    const-string v1, "PHOTO"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;->PHOTO:Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;

    .line 30
    new-instance v0, Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v5}, Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;->VIDEO:Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;

    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;

    sget-object v1, Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;->GENERAL:Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;->PLUS:Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;->PHOTO:Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;->VIDEO:Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;->$VALUES:[Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;
    .locals 1
    .parameter "name"

    .prologue
    .line 19
    const-class v0, Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;->$VALUES:[Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;

    invoke-virtual {v0}, [Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;

    return-object v0
.end method
