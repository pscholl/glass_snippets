.class public interface abstract Lcom/google/glass/voice/menu/VoiceMenuEnvironment;
.super Ljava/lang/Object;
.source "VoiceMenuEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityCommand;,
        Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;
    }
.end annotation


# virtual methods
.method public abstract getContext()Lcom/google/glass/app/GlassActivity;
.end method

.method public abstract isConnected()Z
.end method

.method public abstract logUserEvent(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V
.end method

.method public abstract playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V
.end method

.method public abstract playSound(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/SoundManager$SoundCompletionListener;)V
.end method

.method public abstract postToUiThread(Ljava/lang/Runnable;)V
.end method

.method public abstract selectMenuItem(Lcom/google/glass/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V
.end method

.method public abstract selectSecondaryMenuItem(Lcom/google/glass/voice/menu/VoiceMenuItem;JLjava/lang/Runnable;)V
.end method

.method public abstract selectSecondaryMenuItem(Lcom/google/glass/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V
.end method

.method public abstract setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract showAppsList(Lcom/google/glass/voice/menu/VoiceMenuItem;ILjava/lang/String;)V
.end method

.method public abstract showError(Lcom/google/glass/app/GlassError;)V
.end method

.method public abstract showPeopleList(Lcom/google/glass/voice/menu/VoiceMenuItem;Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityType;Lcom/google/glass/voice/menu/VoiceMenuEnvironment$EntityCommand;)V
.end method

.method public abstract showProgressBar()V
.end method
