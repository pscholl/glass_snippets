.class final enum Lcom/google/glass/voice/GuardHintAnimator$AnimationState;
.super Ljava/lang/Enum;
.source "GuardHintAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/GuardHintAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AnimationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/voice/GuardHintAnimator$AnimationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

.field public static final enum ANIMATING_IN:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

.field public static final enum ANIMATING_OUT:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

.field public static final enum IDLE:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;->IDLE:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    .line 29
    new-instance v0, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    const-string v1, "ANIMATING_IN"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;->ANIMATING_IN:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    .line 31
    new-instance v0, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    const-string v1, "ANIMATING_OUT"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;->ANIMATING_OUT:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    sget-object v1, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;->IDLE:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;->ANIMATING_IN:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;->ANIMATING_OUT:Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;->$VALUES:[Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/voice/GuardHintAnimator$AnimationState;
    .locals 1
    .parameter "name"

    .prologue
    .line 25
    const-class v0, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/voice/GuardHintAnimator$AnimationState;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/glass/voice/GuardHintAnimator$AnimationState;->$VALUES:[Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    invoke-virtual {v0}, [Lcom/google/glass/voice/GuardHintAnimator$AnimationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/voice/GuardHintAnimator$AnimationState;

    return-object v0
.end method
