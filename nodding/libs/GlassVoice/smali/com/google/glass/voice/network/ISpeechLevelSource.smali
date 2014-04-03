.class public interface abstract Lcom/google/glass/voice/network/ISpeechLevelSource;
.super Ljava/lang/Object;
.source "ISpeechLevelSource.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/network/ISpeechLevelSource$Stub;
    }
.end annotation


# virtual methods
.method public abstract getSpeechLevel()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
