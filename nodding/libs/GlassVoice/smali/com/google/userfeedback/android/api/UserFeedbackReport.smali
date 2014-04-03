.class public Lcom/google/userfeedback/android/api/UserFeedbackReport;
.super Ljava/lang/Object;
.source "UserFeedbackReport.java"


# instance fields
.field public accounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public board:Ljava/lang/String;

.field public brand:Ljava/lang/String;

.field public bucket:Ljava/lang/String;

.field public buildId:Ljava/lang/String;

.field public buildType:Ljava/lang/String;

.field public categoryTag:Ljava/lang/String;

.field public chosenAccount:Ljava/lang/String;

.field public codename:Ljava/lang/String;

.field public crashData:Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

.field public description:Ljava/lang/String;

.field public device:Ljava/lang/String;

.field public incremental:Ljava/lang/String;

.field public installedPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public installerPackageName:Ljava/lang/String;

.field private isSubmitted:Z

.field public isSystemApp:Z

.field public model:Ljava/lang/String;

.field public networkName:Ljava/lang/String;

.field public networkType:I

.field public numGoogleAccounts:I

.field public packageName:Ljava/lang/String;

.field public packageVersion:I

.field public packageVersionName:Ljava/lang/String;

.field public phoneType:I

.field public processName:Ljava/lang/String;

.field public product:Ljava/lang/String;

.field public productSpecificBinaryData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/userfeedback/android/api/ProductSpecificBinaryDataHolder;",
            ">;"
        }
    .end annotation
.end field

.field private readyToBeSubmitted:Z

.field public release:Ljava/lang/String;

.field public runningApplications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public screenshot:[B

.field public screenshotHeight:I

.field public screenshotWidth:I

.field public sdkInt:I

.field public systemLog:Ljava/lang/String;

.field public timestamp:J

.field public uiLanguage:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackReport;->installedPackages:Ljava/util/List;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackReport;->runningApplications:Ljava/util/List;

    .line 204
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackReport;->productSpecificBinaryData:Ljava/util/List;

    .line 226
    invoke-virtual {p0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackReport;->setSubmitted(Z)V

    .line 227
    invoke-virtual {p0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackReport;->setReadyToSubmit(Z)V

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackReport;->crashData:Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

    .line 229
    return-void
.end method


# virtual methods
.method public declared-synchronized setReadyToSubmit(Z)V
    .locals 1
    .parameter "shouldBeSubmitted"

    .prologue
    .line 236
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackReport;->readyToBeSubmitted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    monitor-exit p0

    return-void

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSubmitted(Z)V
    .locals 1
    .parameter "isSubmitted"

    .prologue
    .line 232
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackReport;->isSubmitted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    monitor-exit p0

    return-void

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public shouldSubmitReport()Z
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackReport;->isSubmitted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackReport;->readyToBeSubmitted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
