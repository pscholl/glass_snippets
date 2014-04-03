.class public Lcom/google/android/speech/logger/SpeechLibLogger$LogData;
.super Ljava/lang/Object;
.source "SpeechLibLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/speech/logger/SpeechLibLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogData"
.end annotation


# instance fields
.field public final audioPath:I

.field public final networkType:I

.field public final scoOutputDisabled:Z


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0
    .parameter "audioPath"
    .parameter "networkType"
    .parameter "scoOutputDisabled"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/google/android/speech/logger/SpeechLibLogger$LogData;->audioPath:I

    .line 16
    iput p2, p0, Lcom/google/android/speech/logger/SpeechLibLogger$LogData;->networkType:I

    .line 17
    iput-boolean p3, p0, Lcom/google/android/speech/logger/SpeechLibLogger$LogData;->scoOutputDisabled:Z

    .line 18
    return-void
.end method
