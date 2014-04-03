.class public Lcom/google/userfeedback/android/api/UserFeedbackCrashData;
.super Ljava/lang/Object;
.source "UserFeedbackCrashData.java"


# instance fields
.field public exceptionClassName:Ljava/lang/String;

.field public exceptionMessage:Ljava/lang/String;

.field public stackTrace:Ljava/lang/String;

.field public throwClassName:Ljava/lang/String;

.field public throwFileName:Ljava/lang/String;

.field public throwLineNumber:I

.field public throwMethodName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/userfeedback/android/api/UserFeedbackCrashData;)V
    .locals 8
    .parameter "crashData"

    .prologue
    .line 43
    iget-object v1, p1, Lcom/google/userfeedback/android/api/UserFeedbackCrashData;->exceptionClassName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/userfeedback/android/api/UserFeedbackCrashData;->throwFileName:Ljava/lang/String;

    iget v3, p1, Lcom/google/userfeedback/android/api/UserFeedbackCrashData;->throwLineNumber:I

    iget-object v4, p1, Lcom/google/userfeedback/android/api/UserFeedbackCrashData;->throwClassName:Ljava/lang/String;

    iget-object v5, p1, Lcom/google/userfeedback/android/api/UserFeedbackCrashData;->throwMethodName:Ljava/lang/String;

    iget-object v6, p1, Lcom/google/userfeedback/android/api/UserFeedbackCrashData;->stackTrace:Ljava/lang/String;

    iget-object v7, p1, Lcom/google/userfeedback/android/api/UserFeedbackCrashData;->exceptionMessage:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/userfeedback/android/api/UserFeedbackCrashData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "exceptionClassName"
    .parameter "throwFileName"
    .parameter "throwLineNumber"
    .parameter "throwClassName"
    .parameter "throwMethodName"
    .parameter "stackTrace"
    .parameter "exceptionMessage"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackCrashData;->exceptionClassName:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/google/userfeedback/android/api/UserFeedbackCrashData;->throwFileName:Ljava/lang/String;

    .line 34
    iput p3, p0, Lcom/google/userfeedback/android/api/UserFeedbackCrashData;->throwLineNumber:I

    .line 35
    iput-object p4, p0, Lcom/google/userfeedback/android/api/UserFeedbackCrashData;->throwClassName:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Lcom/google/userfeedback/android/api/UserFeedbackCrashData;->throwMethodName:Ljava/lang/String;

    .line 37
    iput-object p6, p0, Lcom/google/userfeedback/android/api/UserFeedbackCrashData;->stackTrace:Ljava/lang/String;

    .line 38
    iput-object p7, p0, Lcom/google/userfeedback/android/api/UserFeedbackCrashData;->exceptionMessage:Ljava/lang/String;

    .line 39
    return-void
.end method
