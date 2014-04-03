.class Lcom/google/glass/input/VoiceInputHelper$UserActivityVoiceCommandObserver;
.super Ljava/lang/Object;
.source "VoiceInputHelper.java"

# interfaces
.implements Lcom/google/glass/input/VoiceInputHelper$VoiceCommandObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/input/VoiceInputHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserActivityVoiceCommandObserver"
.end annotation


# instance fields
.field private final powerHelper:Lcom/google/glass/util/PowerHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Lcom/google/glass/util/PowerHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/input/VoiceInputHelper$UserActivityVoiceCommandObserver;->powerHelper:Lcom/google/glass/util/PowerHelper;

    .line 87
    return-void
.end method


# virtual methods
.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;Z)V
    .locals 1
    .parameter "voiceCommand"
    .parameter "handled"

    .prologue
    .line 91
    if-eqz p2, :cond_0

    .line 92
    iget-object v0, p0, Lcom/google/glass/input/VoiceInputHelper$UserActivityVoiceCommandObserver;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->userActivity()V

    .line 94
    :cond_0
    return-void
.end method
