.class synthetic Lcom/google/glass/util/Feedback$1;
.super Ljava/lang/Object;
.source "Feedback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/Feedback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$glass$util$Feedback$RecoveryAction:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    invoke-static {}, Lcom/google/glass/util/Feedback$RecoveryAction;->values()[Lcom/google/glass/util/Feedback$RecoveryAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/glass/util/Feedback$1;->$SwitchMap$com$google$glass$util$Feedback$RecoveryAction:[I

    :try_start_0
    sget-object v0, Lcom/google/glass/util/Feedback$1;->$SwitchMap$com$google$glass$util$Feedback$RecoveryAction:[I

    sget-object v1, Lcom/google/glass/util/Feedback$RecoveryAction;->SHOULD_SHUTDOWN:Lcom/google/glass/util/Feedback$RecoveryAction;

    invoke-virtual {v1}, Lcom/google/glass/util/Feedback$RecoveryAction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/google/glass/util/Feedback$1;->$SwitchMap$com$google$glass$util$Feedback$RecoveryAction:[I

    sget-object v1, Lcom/google/glass/util/Feedback$RecoveryAction;->SHOULD_REBOOT:Lcom/google/glass/util/Feedback$RecoveryAction;

    invoke-virtual {v1}, Lcom/google/glass/util/Feedback$RecoveryAction;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/google/glass/util/Feedback$1;->$SwitchMap$com$google$glass$util$Feedback$RecoveryAction:[I

    sget-object v1, Lcom/google/glass/util/Feedback$RecoveryAction;->SHOULD_CONTINUE:Lcom/google/glass/util/Feedback$RecoveryAction;

    invoke-virtual {v1}, Lcom/google/glass/util/Feedback$RecoveryAction;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
