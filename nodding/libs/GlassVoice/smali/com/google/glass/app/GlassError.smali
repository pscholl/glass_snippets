.class public Lcom/google/glass/app/GlassError;
.super Ljava/lang/Object;
.source "GlassError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/app/GlassError$3;,
        Lcom/google/glass/app/GlassError$OnConfirmAction;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private autoHide:Z

.field private finishWhenDone:Z

.field private iconId:I

.field private onConfirmAction:Lcom/google/glass/app/GlassError$OnConfirmAction;

.field private onConfirmRunnable:Ljava/lang/Runnable;

.field private primaryMessageId:I

.field private secondaryMessageId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/app/GlassError;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget v0, Lcom/google/glass/common/R$drawable;->ic_exclamation_big:I

    iput v0, p0, Lcom/google/glass/app/GlassError;->iconId:I

    .line 39
    return-void
.end method

.method private getSoundManager(Landroid/app/Activity;)Lcom/google/glass/sound/SoundManager;
    .locals 1
    .parameter "activity"

    .prologue
    .line 190
    invoke-static {p1}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method getConfirmActionRunnable(Lcom/google/glass/app/GlassError$OnConfirmAction;Landroid/content/Context;)Ljava/lang/Runnable;
    .locals 5
    .parameter "onConfirmAction"
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 203
    if-nez p1, :cond_0

    .line 217
    :goto_0
    return-object v0

    .line 207
    :cond_0
    sget-object v1, Lcom/google/glass/app/GlassError$3;->$SwitchMap$com$google$glass$app$GlassError$OnConfirmAction:[I

    invoke-virtual {p1}, Lcom/google/glass/app/GlassError$OnConfirmAction;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 216
    sget-object v1, Lcom/google/glass/app/GlassError;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Unexpected onConfirmAction: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 209
    :pswitch_0
    new-instance v0, Lcom/google/glass/app/GlassError$2;

    invoke-direct {v0, p0, p2}, Lcom/google/glass/app/GlassError$2;-><init>(Lcom/google/glass/app/GlassError;Landroid/content/Context;)V

    goto :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/google/glass/app/GlassError;->iconId:I

    return v0
.end method

.method public getOnConfirmAction()Lcom/google/glass/app/GlassError$OnConfirmAction;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/glass/app/GlassError;->onConfirmAction:Lcom/google/glass/app/GlassError$OnConfirmAction;

    return-object v0
.end method

.method public getOnConfirmRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/glass/app/GlassError;->onConfirmRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method getOnConfirmRunnable(Landroid/content/Context;)Ljava/lang/Runnable;
    .locals 1
    .parameter "context"

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/google/glass/app/GlassError;->getOnConfirmRunnable()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/google/glass/app/GlassError;->getOnConfirmRunnable()Ljava/lang/Runnable;

    move-result-object v0

    .line 198
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/app/GlassError;->getOnConfirmAction()Lcom/google/glass/app/GlassError$OnConfirmAction;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/google/glass/app/GlassError;->getConfirmActionRunnable(Lcom/google/glass/app/GlassError$OnConfirmAction;Landroid/content/Context;)Ljava/lang/Runnable;

    move-result-object v0

    goto :goto_0
.end method

.method public getPrimaryMessageId()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/google/glass/app/GlassError;->primaryMessageId:I

    return v0
.end method

.method public getSecondaryMessageId()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/google/glass/app/GlassError;->secondaryMessageId:I

    return v0
.end method

.method public isAutoHide()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/google/glass/app/GlassError;->autoHide:Z

    return v0
.end method

.method public setAutoHide(Z)Lcom/google/glass/app/GlassError;
    .locals 0
    .parameter "autoHide"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/google/glass/app/GlassError;->autoHide:Z

    .line 95
    return-object p0
.end method

.method public setFinishWhenDone(Z)Lcom/google/glass/app/GlassError;
    .locals 0
    .parameter "finishWhenDone"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/google/glass/app/GlassError;->finishWhenDone:Z

    .line 79
    return-object p0
.end method

.method public setIconId(I)Lcom/google/glass/app/GlassError;
    .locals 0
    .parameter "iconId"

    .prologue
    .line 121
    iput p1, p0, Lcom/google/glass/app/GlassError;->iconId:I

    .line 122
    return-object p0
.end method

.method public setOnConfirmAction(Lcom/google/glass/app/GlassError$OnConfirmAction;)Lcom/google/glass/app/GlassError;
    .locals 0
    .parameter "onConfirmAction"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/google/glass/app/GlassError;->onConfirmAction:Lcom/google/glass/app/GlassError$OnConfirmAction;

    .line 110
    return-object p0
.end method

.method public setOnConfirmRunnable(Ljava/lang/Runnable;)Lcom/google/glass/app/GlassError;
    .locals 0
    .parameter "onConfirmRunnable"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/glass/app/GlassError;->onConfirmRunnable:Ljava/lang/Runnable;

    .line 135
    return-object p0
.end method

.method public setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;
    .locals 0
    .parameter "primaryMessageId"

    .prologue
    .line 46
    iput p1, p0, Lcom/google/glass/app/GlassError;->primaryMessageId:I

    .line 47
    return-object p0
.end method

.method public setSecondaryMessageId(I)Lcom/google/glass/app/GlassError;
    .locals 0
    .parameter "secondaryMessageId"

    .prologue
    .line 62
    iput p1, p0, Lcom/google/glass/app/GlassError;->secondaryMessageId:I

    .line 63
    return-object p0
.end method

.method public shouldFinishWhenDone()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/google/glass/app/GlassError;->finishWhenDone:Z

    return v0
.end method

.method public show(Lcom/google/glass/app/GlassActivity;)V
    .locals 9
    .parameter "activity"

    .prologue
    const/4 v6, 0x1

    .line 143
    invoke-direct {p0, p1}, Lcom/google/glass/app/GlassError;->getSoundManager(Landroid/app/Activity;)Lcom/google/glass/sound/SoundManager;

    move-result-object v3

    .line 144
    .local v3, soundManager:Lcom/google/glass/sound/SoundManager;
    invoke-virtual {p0}, Lcom/google/glass/app/GlassError;->getSecondaryMessageId()I

    move-result v2

    .line 145
    .local v2, secondaryMessageId:I
    invoke-virtual {p0, p1}, Lcom/google/glass/app/GlassError;->getOnConfirmRunnable(Landroid/content/Context;)Ljava/lang/Runnable;

    move-result-object v1

    .line 146
    .local v1, onConfirmRunnable:Ljava/lang/Runnable;
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-direct {v0, p1, v3}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    .line 147
    .local v0, builder:Lcom/google/glass/widget/MessageDialog$Builder;
    invoke-virtual {v0, v6}, Lcom/google/glass/widget/MessageDialog$Builder;->setExpanded(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/glass/app/GlassError;->isAutoHide()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/glass/widget/MessageDialog$Builder;->setAutoHide(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/google/glass/widget/MessageDialog$Builder;->setHandleConfirm(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/glass/app/GlassError;->getPrimaryMessageId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/glass/app/GlassError;->getIconId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v4

    sget-object v5, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v4, v5}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/google/glass/app/GlassError$1;

    invoke-direct {v5, p0, p1, v1, v3}, Lcom/google/glass/app/GlassError$1;-><init>(Lcom/google/glass/app/GlassError;Lcom/google/glass/app/GlassActivity;Ljava/lang/Runnable;Lcom/google/glass/sound/SoundManager;)V

    invoke-virtual {v4, v5}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    .line 181
    if-eqz v2, :cond_0

    .line 182
    invoke-virtual {v0, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setSecondaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    .line 185
    :cond_0
    sget-object v4, Lcom/google/glass/app/GlassError;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Showing error: %s"

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/google/glass/app/GlassError;->getPrimaryMessageId()I

    move-result v8

    invoke-virtual {p1, v8}, Lcom/google/glass/app/GlassActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/glass/app/GlassActivity;->showError(Lcom/google/glass/widget/MessageDialog;)V

    .line 187
    return-void
.end method
