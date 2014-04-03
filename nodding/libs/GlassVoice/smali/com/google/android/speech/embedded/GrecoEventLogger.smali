.class public interface abstract Lcom/google/android/speech/embedded/GrecoEventLogger;
.super Ljava/lang/Object;
.source "GrecoEventLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/speech/embedded/GrecoEventLogger$Factory;
    }
.end annotation


# virtual methods
.method public abstract recognitionCompleted(Lcom/google/speech/logs/RecognizerOuterClass$RecognizerLog;)V
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
.end method

.method public abstract recognitionStarted()V
.end method
