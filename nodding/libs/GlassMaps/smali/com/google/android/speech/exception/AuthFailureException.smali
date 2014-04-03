.class public Lcom/google/android/speech/exception/AuthFailureException;
.super Lcom/google/android/speech/exception/ServerRecognizeException;


# static fields
.field public static final ERROR_CODE_1:I = -0x12111

.field public static final ERROR_CODE_2:I = -0x12112

.field private static final serialVersionUID:J = 0x6d92b4a290b1069aL


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/speech/exception/ServerRecognizeException;-><init>(I)V

    invoke-static {p1}, Lcom/google/android/speech/exception/AuthFailureException;->isAuthErrorCode(I)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/ai;->a(Z)V

    return-void
.end method

.method public static isAuthErrorCode(I)Z
    .locals 1

    const v0, -0x12111

    if-eq p0, v0, :cond_0

    const v0, -0x12112

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
