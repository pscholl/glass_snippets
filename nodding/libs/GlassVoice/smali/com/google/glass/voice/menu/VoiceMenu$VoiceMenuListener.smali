.class public interface abstract Lcom/google/glass/voice/menu/VoiceMenu$VoiceMenuListener;
.super Ljava/lang/Object;
.source "VoiceMenu.java"

# interfaces
.implements Lcom/google/glass/voice/menu/VoiceMenuEnvironment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/menu/VoiceMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VoiceMenuListener"
.end annotation


# virtual methods
.method public abstract onError(Lcom/google/glass/app/GlassError;)V
.end method

.method public abstract onShowSecondaryMenu()V
.end method
