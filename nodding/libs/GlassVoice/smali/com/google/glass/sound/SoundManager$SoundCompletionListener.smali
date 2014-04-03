.class public interface abstract Lcom/google/glass/sound/SoundManager$SoundCompletionListener;
.super Ljava/lang/Object;
.source "SoundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/sound/SoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SoundCompletionListener"
.end annotation


# virtual methods
.method public abstract onSoundDone(Lcom/google/glass/sound/SoundManager$SoundId;)V
.end method

.method public abstract onSoundFailed(Lcom/google/glass/sound/SoundManager$SoundId;I)V
.end method
