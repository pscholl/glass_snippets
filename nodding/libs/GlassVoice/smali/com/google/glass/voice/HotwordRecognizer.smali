.class public interface abstract Lcom/google/glass/voice/HotwordRecognizer;
.super Ljava/lang/Object;
.source "HotwordRecognizer.java"


# virtual methods
.method public abstract activate()V
.end method

.method public abstract deactivate()V
.end method

.method public abstract destroy()V
.end method

.method public abstract stringToCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;
.end method

.method public abstract writeAudio(Ljava/nio/ByteBuffer;J)Lcom/google/glass/voice/HotwordResult;
.end method
