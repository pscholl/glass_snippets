.class public final enum Lcom/google/glass/util/Feedback$RecoveryAction;
.super Ljava/lang/Enum;
.source "Feedback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/Feedback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecoveryAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/util/Feedback$RecoveryAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/util/Feedback$RecoveryAction;

.field public static final enum SHOULD_CONTINUE:Lcom/google/glass/util/Feedback$RecoveryAction;

.field public static final enum SHOULD_REBOOT:Lcom/google/glass/util/Feedback$RecoveryAction;

.field public static final enum SHOULD_SHUTDOWN:Lcom/google/glass/util/Feedback$RecoveryAction;


# instance fields
.field public final buildTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/glass/build/BuildHelper$Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 38
    new-instance v0, Lcom/google/glass/util/Feedback$RecoveryAction;

    const-string v1, "SHOULD_SHUTDOWN"

    new-array v2, v6, [Lcom/google/glass/build/BuildHelper$Type;

    sget-object v3, Lcom/google/glass/build/BuildHelper$Type;->USER:Lcom/google/glass/build/BuildHelper$Type;

    aput-object v3, v2, v4

    sget-object v3, Lcom/google/glass/build/BuildHelper$Type;->USERDEBUG:Lcom/google/glass/build/BuildHelper$Type;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v4, v2}, Lcom/google/glass/util/Feedback$RecoveryAction;-><init>(Ljava/lang/String;I[Lcom/google/glass/build/BuildHelper$Type;)V

    sput-object v0, Lcom/google/glass/util/Feedback$RecoveryAction;->SHOULD_SHUTDOWN:Lcom/google/glass/util/Feedback$RecoveryAction;

    .line 39
    new-instance v0, Lcom/google/glass/util/Feedback$RecoveryAction;

    const-string v1, "SHOULD_REBOOT"

    new-array v2, v6, [Lcom/google/glass/build/BuildHelper$Type;

    sget-object v3, Lcom/google/glass/build/BuildHelper$Type;->USER:Lcom/google/glass/build/BuildHelper$Type;

    aput-object v3, v2, v4

    sget-object v3, Lcom/google/glass/build/BuildHelper$Type;->USERDEBUG:Lcom/google/glass/build/BuildHelper$Type;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v5, v2}, Lcom/google/glass/util/Feedback$RecoveryAction;-><init>(Ljava/lang/String;I[Lcom/google/glass/build/BuildHelper$Type;)V

    sput-object v0, Lcom/google/glass/util/Feedback$RecoveryAction;->SHOULD_REBOOT:Lcom/google/glass/util/Feedback$RecoveryAction;

    .line 40
    new-instance v0, Lcom/google/glass/util/Feedback$RecoveryAction;

    const-string v1, "SHOULD_CONTINUE"

    new-array v2, v5, [Lcom/google/glass/build/BuildHelper$Type;

    sget-object v3, Lcom/google/glass/build/BuildHelper$Type;->ENG:Lcom/google/glass/build/BuildHelper$Type;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v6, v2}, Lcom/google/glass/util/Feedback$RecoveryAction;-><init>(Ljava/lang/String;I[Lcom/google/glass/build/BuildHelper$Type;)V

    sput-object v0, Lcom/google/glass/util/Feedback$RecoveryAction;->SHOULD_CONTINUE:Lcom/google/glass/util/Feedback$RecoveryAction;

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/glass/util/Feedback$RecoveryAction;

    sget-object v1, Lcom/google/glass/util/Feedback$RecoveryAction;->SHOULD_SHUTDOWN:Lcom/google/glass/util/Feedback$RecoveryAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/util/Feedback$RecoveryAction;->SHOULD_REBOOT:Lcom/google/glass/util/Feedback$RecoveryAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/glass/util/Feedback$RecoveryAction;->SHOULD_CONTINUE:Lcom/google/glass/util/Feedback$RecoveryAction;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/glass/util/Feedback$RecoveryAction;->$VALUES:[Lcom/google/glass/util/Feedback$RecoveryAction;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[Lcom/google/glass/build/BuildHelper$Type;)V
    .locals 1
    .parameter
    .parameter
    .parameter "buildTypes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/glass/build/BuildHelper$Type;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/Feedback$RecoveryAction;->buildTypes:Ljava/util/Set;

    .line 50
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/util/Feedback$RecoveryAction;
    .locals 1
    .parameter "name"

    .prologue
    .line 37
    const-class v0, Lcom/google/glass/util/Feedback$RecoveryAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/Feedback$RecoveryAction;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/util/Feedback$RecoveryAction;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/google/glass/util/Feedback$RecoveryAction;->$VALUES:[Lcom/google/glass/util/Feedback$RecoveryAction;

    invoke-virtual {v0}, [Lcom/google/glass/util/Feedback$RecoveryAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/util/Feedback$RecoveryAction;

    return-object v0
.end method
