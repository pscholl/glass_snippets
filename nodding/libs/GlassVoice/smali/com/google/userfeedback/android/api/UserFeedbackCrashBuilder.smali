.class public Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;
.super Ljava/lang/Object;
.source "UserFeedbackCrashBuilder.java"


# instance fields
.field private exceptionClassName:Ljava/lang/String;

.field private exceptionMessage:Ljava/lang/String;

.field private stackTrace:Ljava/lang/String;

.field private throwClassName:Ljava/lang/String;

.field private throwFileName:Ljava/lang/String;

.field private throwLineNumber:I

.field private throwMethodName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->setExceptionClassName(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;

    .line 29
    invoke-virtual {p0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->setThrowFileName(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;

    .line 30
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->setThrowLineNumber(I)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;

    .line 31
    invoke-virtual {p0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->setThrowClassName(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;

    .line 32
    invoke-virtual {p0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->setThrowMethodName(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;

    .line 33
    invoke-virtual {p0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->setStackTrace(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;

    .line 35
    invoke-virtual {p0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->setExceptionMessage(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;

    .line 36
    return-void
.end method

.method public static newInstance()Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;

    invoke-direct {v0}, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/userfeedback/android/api/UserFeedbackCrashData;
    .locals 8

    .prologue
    .line 78
    const-string v0, "exceptionClassName not set"

    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->exceptionClassName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/x/google/debug/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    const-string v0, "throwFileName not set"

    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->throwFileName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/x/google/debug/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    const-string v1, "throwLineNumber not set"

    iget v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->throwLineNumber:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/x/google/debug/Assert;->assertFalse(Ljava/lang/String;Z)V

    .line 81
    const-string v0, "throwClassName not set"

    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->throwClassName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/x/google/debug/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    const-string v0, "throwMethodName not set"

    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->throwMethodName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/x/google/debug/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    const-string v0, "stackTrace not set"

    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->stackTrace:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/x/google/debug/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    new-instance v0, Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->exceptionClassName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->throwFileName:Ljava/lang/String;

    iget v3, p0, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->throwLineNumber:I

    iget-object v4, p0, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->throwClassName:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->throwMethodName:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->stackTrace:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->exceptionMessage:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcom/google/userfeedback/android/api/UserFeedbackCrashData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 80
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setExceptionClassName(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;
    .locals 0
    .parameter "exceptionClassName"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->exceptionClassName:Ljava/lang/String;

    .line 49
    return-object p0
.end method

.method public setExceptionMessage(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;
    .locals 0
    .parameter "exceptionMessage"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->exceptionMessage:Ljava/lang/String;

    .line 74
    return-object p0
.end method

.method public setStackTrace(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;
    .locals 0
    .parameter "stackTrace"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->stackTrace:Ljava/lang/String;

    .line 44
    return-object p0
.end method

.method public setThrowClassName(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;
    .locals 0
    .parameter "throwClassName"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->throwClassName:Ljava/lang/String;

    .line 64
    return-object p0
.end method

.method public setThrowFileName(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;
    .locals 0
    .parameter "throwFileName"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->throwFileName:Ljava/lang/String;

    .line 54
    return-object p0
.end method

.method public setThrowLineNumber(I)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;
    .locals 0
    .parameter "throwLineNumber"

    .prologue
    .line 58
    iput p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->throwLineNumber:I

    .line 59
    return-object p0
.end method

.method public setThrowMethodName(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;
    .locals 0
    .parameter "throwMethodName"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->throwMethodName:Ljava/lang/String;

    .line 69
    return-object p0
.end method
