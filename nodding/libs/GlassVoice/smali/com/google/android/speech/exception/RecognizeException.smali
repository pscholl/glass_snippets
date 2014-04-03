.class public Lcom/google/android/speech/exception/RecognizeException;
.super Ljava/lang/Exception;
.source "RecognizeException.java"


# static fields
.field private static final serialVersionUID:J = 0x51d144eebabd1743L


# instance fields
.field private mEngine:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/speech/exception/RecognizeException;->mEngine:I

    .line 18
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "description"
    .parameter "cause"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    return-void
.end method


# virtual methods
.method public getEngine()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/google/android/speech/exception/RecognizeException;->mEngine:I

    return v0
.end method

.method public setEngine(I)V
    .locals 0
    .parameter "engine"

    .prologue
    .line 29
    iput p1, p0, Lcom/google/android/speech/exception/RecognizeException;->mEngine:I

    .line 30
    return-void
.end method
