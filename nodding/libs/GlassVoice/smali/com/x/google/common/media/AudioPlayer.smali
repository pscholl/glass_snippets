.class public interface abstract Lcom/x/google/common/media/AudioPlayer;
.super Ljava/lang/Object;


# static fields
.field public static final PERMISSION_EXCEPTION_MESSAGE:Ljava/lang/String; = "AP"

.field public static final PLAYING:I = 0x3

.field public static final READY:I = 0x2

.field public static final STOP:I = 0x4

.field public static final UNREALIZED:I


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getStatus()I
.end method

.method public abstract prepare(Ljava/lang/String;)Z
.end method

.method public abstract startAudio()V
.end method

.method public abstract stopAudio()V
.end method
