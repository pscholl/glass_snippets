.class final Lcom/google/glass/voice/menu/VoiceMenuRequirements$2;
.super Ljava/lang/Object;
.source "VoiceMenuRequirements.java"

# interfaces
.implements Lcom/google/glass/voice/menu/Requirement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/menu/VoiceMenuRequirements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getError(Lcom/google/glass/voice/menu/VoiceMenuEnvironment;)Lcom/google/glass/app/GlassError;
    .locals 2
    .parameter "environment"

    .prologue
    .line 37
    new-instance v0, Lcom/google/glass/app/GlassError;

    invoke-direct {v0}, Lcom/google/glass/app/GlassError;-><init>()V

    sget v1, Lcom/google/glass/voiceclient/R$string;->error_no_video_share_targets:I

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    sget v1, Lcom/google/glass/voiceclient/R$string;->error_edit_contacts:I

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setSecondaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setFinishWhenDone(Z)Lcom/google/glass/app/GlassError;

    move-result-object v0

    return-object v0
.end method

.method public isSatisfied(Lcom/google/glass/voice/menu/VoiceMenuEnvironment;)Z
    .locals 2
    .parameter "environment"

    .prologue
    .line 31
    invoke-interface {p1}, Lcom/google/glass/voice/menu/VoiceMenuEnvironment;->getContext()Lcom/google/glass/app/GlassActivity;

    move-result-object v0

    const-string v1, "video/mp4"

    invoke-static {v0, v1}, Lcom/google/glass/voice/EntityUtils;->hasShareTargets(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
