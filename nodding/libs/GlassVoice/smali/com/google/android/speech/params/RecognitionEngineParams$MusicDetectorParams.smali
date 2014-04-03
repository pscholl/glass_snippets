.class public Lcom/google/android/speech/params/RecognitionEngineParams$MusicDetectorParams;
.super Ljava/lang/Object;
.source "RecognitionEngineParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/speech/params/RecognitionEngineParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MusicDetectorParams"
.end annotation


# instance fields
.field private final mSettings:Lcom/google/android/speech/SpeechSettings;


# direct methods
.method public constructor <init>(Lcom/google/android/speech/SpeechSettings;)V
    .locals 0
    .parameter "settings"

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lcom/google/android/speech/params/RecognitionEngineParams$MusicDetectorParams;->mSettings:Lcom/google/android/speech/SpeechSettings;

    .line 155
    return-void
.end method


# virtual methods
.method public getSettings()Lcom/google/android/speech/SpeechSettings;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/speech/params/RecognitionEngineParams$MusicDetectorParams;->mSettings:Lcom/google/android/speech/SpeechSettings;

    return-object v0
.end method
