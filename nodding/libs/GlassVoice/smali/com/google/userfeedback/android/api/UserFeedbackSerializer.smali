.class public Lcom/google/userfeedback/android/api/UserFeedbackSerializer;
.super Ljava/lang/Object;
.source "UserFeedbackSerializer.java"


# instance fields
.field private report:Lcom/google/userfeedback/android/api/UserFeedbackReport;


# direct methods
.method constructor <init>(Lcom/google/userfeedback/android/api/UserFeedbackReport;)V
    .locals 0
    .parameter "report"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    .line 47
    return-void
.end method

.method private serializeAndroidData()Lcom/x/google/common/io/protocol/ProtoBuf;
    .locals 3

    .prologue
    .line 164
    new-instance v0, Lcom/x/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->MOBILE_DATA:Lcom/x/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/x/google/common/io/protocol/ProtoBuf;-><init>(Lcom/x/google/common/io/protocol/ProtoBufType;)V

    .line 165
    .local v0, androidData:Lcom/x/google/common/io/protocol/ProtoBuf;
    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->serializeSystemData()Lcom/x/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/x/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/x/google/common/io/protocol/ProtoBuf;)V

    .line 166
    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->serializePackageData()Lcom/x/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/x/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/x/google/common/io/protocol/ProtoBuf;)V

    .line 167
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->serializeBuildData()Lcom/x/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/x/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/x/google/common/io/protocol/ProtoBuf;)V

    .line 168
    const/16 v1, 0x9

    invoke-direct {p0}, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->serializeUserInitiatedFeedbackData()Lcom/x/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/x/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/x/google/common/io/protocol/ProtoBuf;)V

    .line 170
    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    iget-object v1, v1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->crashData:Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

    if-eqz v1, :cond_0

    .line 171
    const/4 v1, 0x4

    invoke-direct {p0}, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->serializeCrashData()Lcom/x/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/x/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/x/google/common/io/protocol/ProtoBuf;)V

    .line 173
    :cond_0
    return-object v0
.end method

.method private serializeBuildData()Lcom/x/google/common/io/protocol/ProtoBuf;
    .locals 3

    .prologue
    .line 54
    new-instance v0, Lcom/x/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->BUILD_DATA:Lcom/x/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/x/google/common/io/protocol/ProtoBuf;-><init>(Lcom/x/google/common/io/protocol/ProtoBufType;)V

    .line 55
    .local v0, buildData:Lcom/x/google/common/io/protocol/ProtoBuf;
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    iget-object v2, v2, Lcom/google/userfeedback/android/api/UserFeedbackReport;->device:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/x/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 56
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    iget-object v2, v2, Lcom/google/userfeedback/android/api/UserFeedbackReport;->buildId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/x/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 57
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    iget-object v2, v2, Lcom/google/userfeedback/android/api/UserFeedbackReport;->buildType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/x/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 58
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    iget-object v2, v2, Lcom/google/userfeedback/android/api/UserFeedbackReport;->model:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/x/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 59
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    iget-object v2, v2, Lcom/google/userfeedback/android/api/UserFeedbackReport;->product:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/x/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 60
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    iget-object v2, v2, Lcom/google/userfeedback/android/api/UserFeedbackReport;->release:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/x/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 61
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    iget-object v2, v2, Lcom/google/userfeedback/android/api/UserFeedbackReport;->incremental:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/x/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 62
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    iget-object v2, v2, Lcom/google/userfeedback/android/api/UserFeedbackReport;->codename:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/x/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 63
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    iget-object v2, v2, Lcom/google/userfeedback/android/api/UserFeedbackReport;->board:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/x/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 64
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    iget-object v2, v2, Lcom/google/userfeedback/android/api/UserFeedbackReport;->brand:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/x/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 65
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    iget v2, v2, Lcom/google/userfeedback/android/api/UserFeedbackReport;->sdkInt:I

    invoke-virtual {v0, v1, v2}, Lcom/x/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 66
    return-object v0
.end method

.method private serializeCommonData()Lcom/x/google/common/io/protocol/ProtoBuf;
    .locals 3

    .prologue
    .line 70
    new-instance v0, Lcom/x/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->COMMON_DATA:Lcom/x/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/x/google/common/io/protocol/ProtoBuf;-><init>(Lcom/x/google/common/io/protocol/ProtoBufType;)V

    .line 71
    .local v0, commonData:Lcom/x/google/common/io/protocol/ProtoBuf;
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    iget-object v2, v2, Lcom/google/userfeedback/android/api/UserFeedbackReport;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/x/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 72
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    iget-object v2, v2, Lcom/google/userfeedback/android/api/UserFeedbackReport;->uiLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/x/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 73
    const-string v1, ""

    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    iget-object v2, v2, Lcom/google/userfeedback/android/api/UserFeedbackReport;->chosenAccount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    iget-object v2, v2, Lcom/google/userfeedback/android/api/UserFeedbackReport;->chosenAccount:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/x/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 76
    :cond_0
    return-object v0
.end method

.method private serializeCrashData()Lcom/x/google/common/io/protocol/ProtoBuf;
    .locals 3

    .prologue
    .line 177
    new-instance v0, Lcom/x/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->CRASH_DATA:Lcom/x/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/x/google/common/io/protocol/ProtoBuf;-><init>(Lcom/x/google/common/io/protocol/ProtoBufType;)V

    .line 178
    .local v0, crashData:Lcom/x/google/common/io/protocol/ProtoBuf;
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    iget-object v2, v2, Lcom/google/userfeedback/android/api/UserFeedbackReport;->crashData:Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

    iget-object v2, v2, Lcom/google/userfeedback/android/api/UserFeedbackCrashData;->exceptionClassName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/x/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 179
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    iget-object v2, v2, Lcom/google/userfeedback/android/api/UserFeedbackReport;->crashData:Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

    iget-object v2, v2, Lcom/google/userfeedback/android/api/UserFeedbackCrashData;->throwFileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/x/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 180
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    iget-object v2, v2, Lcom/google/userfeedback/android/api/UserFeedbackReport;->crashData:Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

    iget v2, v2, Lcom/google/userfeedback/android/api/UserFeedbackCrashData;->throwLineNumber:I

    invoke-virtual {v0, v1, v2}, Lcom/x/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 181
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    iget-object v2, v2, Lcom/google/userfeedback/android/api/UserFeedbackReport;->crashData:Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

    iget-object v2, v2, Lcom/google/userfeedback/android/api/UserFeedbackCrashData;->throwClassName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/x/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 182
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    iget-object v2, v2, Lcom/google/userfeedback/android/api/UserFeedbackReport;->crashData:Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

    iget-object v2, v2, Lcom/google/userfeedback/android/api/UserFeedbackCrashData;->throwMethodName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/x/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 183
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    iget-object v2, v2, Lcom/google/userfeedback/android/api/UserFeedbackReport;->crashData:Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

    iget-object v2, v2, Lcom/google/userfeedback/android/api/UserFeedbackCrashData;->stackTrace:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/x/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 184
    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    iget-object v1, v1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->crashData:Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

    iget-object v1, v1, Lcom/google/userfeedback/android/api/UserFeedbackCrashData;->exceptionMessage:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 185
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    iget-object v2, v2, Lcom/google/userfeedback/android/api/UserFeedbackReport;->crashData:Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

    iget-object v2, v2, Lcom/google/userfeedback/android/api/UserFeedbackCrashData;->exceptionMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/x/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 187
    :cond_0
    return-object v0
.end method

.method private serializePackageData()Lcom/x/google/common/io/protocol/ProtoBuf;
    .locals 3

    .prologue
    .line 101
    new-instance v0, Lcom/x/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->PACKAGE_DATA:Lcom/x/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/x/google/common/io/protocol/ProtoBuf;-><init>(Lcom/x/google/common/io/protocol/ProtoBufType;)V

    .line 102
    .local v0, packageData:Lcom/x/google/common/io/protocol/ProtoBuf;
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    iget-object v2, v2, Lcom/google/userfeedback/android/api/UserFeedbackReport;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/x/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 103
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    iget-object v2, v2, Lcom/google/userfeedback/android/api/UserFeedbackReport;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/x/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 104
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    iget-object v2, v2, Lcom/google/userfeedback/android/api/UserFeedbackReport;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/x/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 105
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    iget v2, v2, Lcom/google/userfeedback/android/api/UserFeedbackReport;->packageVersion:I

    invoke-virtual {v0, v1, v2}, Lcom/x/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 106
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    iget-object v2, v2, Lcom/google/userfeedback/android/api/UserFeedbackReport;->packageVersionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/x/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 107
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    iget-boolean v2, v2, Lcom/google/userfeedback/android/api/UserFeedbackReport;->isSystemApp:Z

    invoke-virtual {v0, v1, v2}, Lcom/x/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 108
    return-object v0
.end method

.method private serializeScreenshotData()Lcom/x/google/common/io/protocol/ProtoBuf;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 152
    new-instance v0, Lcom/x/google/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->IMAGE:Lcom/x/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v2}, Lcom/x/google/common/io/protocol/ProtoBuf;-><init>(Lcom/x/google/common/io/protocol/ProtoBufType;)V

    .line 153
    .local v0, screenshotData:Lcom/x/google/common/io/protocol/ProtoBuf;
    const-string v2, "image/jpeg"

    invoke-virtual {v0, v4, v2}, Lcom/x/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 154
    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    iget-object v2, v2, Lcom/google/userfeedback/android/api/UserFeedbackReport;->screenshot:[B

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/userfeedback/android/api/encode/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Lcom/x/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 156
    new-instance v1, Lcom/x/google/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->DIMENSIONS:Lcom/x/google/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/x/google/common/io/protocol/ProtoBuf;-><init>(Lcom/x/google/common/io/protocol/ProtoBufType;)V

    .line 157
    .local v1, screenshotDimensions:Lcom/x/google/common/io/protocol/ProtoBuf;
    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    iget v2, v2, Lcom/google/userfeedback/android/api/UserFeedbackReport;->screenshotHeight:I

    int-to-float v2, v2

    invoke-virtual {v1, v5, v2}, Lcom/x/google/common/io/protocol/ProtoBuf;->setFloat(IF)V

    .line 158
    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    iget v2, v2, Lcom/google/userfeedback/android/api/UserFeedbackReport;->screenshotWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Lcom/x/google/common/io/protocol/ProtoBuf;->setFloat(IF)V

    .line 159
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/x/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/x/google/common/io/protocol/ProtoBuf;)V

    .line 160
    return-object v0
.end method

.method private serializeSystemData()Lcom/x/google/common/io/protocol/ProtoBuf;
    .locals 6

    .prologue
    .line 80
    new-instance v2, Lcom/x/google/common/io/protocol/ProtoBuf;

    sget-object v3, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->SYSTEM_DATA:Lcom/x/google/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v3}, Lcom/x/google/common/io/protocol/ProtoBuf;-><init>(Lcom/x/google/common/io/protocol/ProtoBufType;)V

    .line 81
    .local v2, systemData:Lcom/x/google/common/io/protocol/ProtoBuf;
    invoke-static {}, Lcom/google/userfeedback/android/api/UserFeedback;->userFeedback()Lcom/google/userfeedback/android/api/UserFeedback;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/userfeedback/android/api/UserFeedback;->shouldIncludeSystemLogs()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    iget-object v4, v4, Lcom/google/userfeedback/android/api/UserFeedbackReport;->systemLog:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/x/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 84
    :cond_0
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    iget-wide v4, v4, Lcom/google/userfeedback/android/api/UserFeedbackReport;->timestamp:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/x/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 85
    const/4 v3, 0x6

    invoke-direct {p0}, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->serializeTelephonyData()Lcom/x/google/common/io/protocol/ProtoBuf;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/x/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/x/google/common/io/protocol/ProtoBuf;)V

    .line 86
    iget-object v3, p0, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    iget-object v3, v3, Lcom/google/userfeedback/android/api/UserFeedbackReport;->runningApplications:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 87
    .local v1, runningApp:Ljava/lang/String;
    const/4 v3, 0x5

    invoke-virtual {v2, v3, v1}, Lcom/x/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    goto :goto_0

    .line 89
    .end local v1           #runningApp:Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method private serializeTelephonyData()Lcom/x/google/common/io/protocol/ProtoBuf;
    .locals 3

    .prologue
    .line 93
    new-instance v0, Lcom/x/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->TELEPHONY_DATA:Lcom/x/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/x/google/common/io/protocol/ProtoBuf;-><init>(Lcom/x/google/common/io/protocol/ProtoBufType;)V

    .line 94
    .local v0, telephonyData:Lcom/x/google/common/io/protocol/ProtoBuf;
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    iget v2, v2, Lcom/google/userfeedback/android/api/UserFeedbackReport;->phoneType:I

    invoke-virtual {v0, v1, v2}, Lcom/x/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 95
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    iget v2, v2, Lcom/google/userfeedback/android/api/UserFeedbackReport;->networkType:I

    invoke-virtual {v0, v1, v2}, Lcom/x/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 96
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    iget-object v2, v2, Lcom/google/userfeedback/android/api/UserFeedbackReport;->networkName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/x/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 97
    return-object v0
.end method

.method private serializeUserFeedbackReport()Lcom/x/google/common/io/protocol/ProtoBuf;
    .locals 3

    .prologue
    .line 191
    new-instance v0, Lcom/x/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->MOBILE_BUG_REPORT:Lcom/x/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/x/google/common/io/protocol/ProtoBuf;-><init>(Lcom/x/google/common/io/protocol/ProtoBufType;)V

    .line 192
    .local v0, userFeedbackReport:Lcom/x/google/common/io/protocol/ProtoBuf;
    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->serializeCommonData()Lcom/x/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/x/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/x/google/common/io/protocol/ProtoBuf;)V

    .line 193
    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->serializeAndroidData()Lcom/x/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/x/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/x/google/common/io/protocol/ProtoBuf;)V

    .line 194
    return-object v0
.end method

.method private serializeUserInitiatedFeedbackData()Lcom/x/google/common/io/protocol/ProtoBuf;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 112
    new-instance v4, Lcom/x/google/common/io/protocol/ProtoBuf;

    sget-object v5, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->USER_INITIATED_FEEDBACK_DATA:Lcom/x/google/common/io/protocol/ProtoBufType;

    invoke-direct {v4, v5}, Lcom/x/google/common/io/protocol/ProtoBuf;-><init>(Lcom/x/google/common/io/protocol/ProtoBufType;)V

    .line 114
    .local v4, userInitiatedFeedbackData:Lcom/x/google/common/io/protocol/ProtoBuf;
    invoke-static {}, Lcom/google/userfeedback/android/api/UserFeedback;->userFeedback()Lcom/google/userfeedback/android/api/UserFeedback;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/userfeedback/android/api/UserFeedback;->shouldIncludeScreenshot()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/google/userfeedback/android/api/UserFeedback;->userFeedback()Lcom/google/userfeedback/android/api/UserFeedback;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/userfeedback/android/api/UserFeedback;->getSpec()Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->isScreenshotEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    iget-object v5, v5, Lcom/google/userfeedback/android/api/UserFeedbackReport;->screenshot:[B

    if-eqz v5, :cond_0

    .line 117
    const/4 v5, 0x4

    invoke-direct {p0}, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->serializeScreenshotData()Lcom/x/google/common/io/protocol/ProtoBuf;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/x/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/x/google/common/io/protocol/ProtoBuf;)V

    .line 120
    :cond_0
    iget-object v5, p0, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    iget-object v5, v5, Lcom/google/userfeedback/android/api/UserFeedbackReport;->categoryTag:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 121
    const/4 v5, 0x6

    iget-object v6, p0, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    iget-object v6, v6, Lcom/google/userfeedback/android/api/UserFeedbackReport;->categoryTag:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/x/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 124
    :cond_1
    iget-object v5, p0, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    iget-object v5, v5, Lcom/google/userfeedback/android/api/UserFeedbackReport;->bucket:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 125
    const/4 v5, 0x7

    iget-object v6, p0, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    iget-object v6, v6, Lcom/google/userfeedback/android/api/UserFeedbackReport;->bucket:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/x/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 131
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    iget v6, v6, Lcom/google/userfeedback/android/api/UserFeedbackReport;->numGoogleAccounts:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Lcom/x/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 134
    iget-object v5, p0, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    iget-object v5, v5, Lcom/google/userfeedback/android/api/UserFeedbackReport;->productSpecificBinaryData:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/userfeedback/android/api/ProductSpecificBinaryDataHolder;

    .line 135
    .local v0, binaryData:Lcom/google/userfeedback/android/api/ProductSpecificBinaryDataHolder;
    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/ProductSpecificBinaryDataHolder;->getData()[B

    move-result-object v1

    .line 137
    .local v1, data:[B
    if-eqz v1, :cond_3

    .line 138
    new-instance v3, Lcom/x/google/common/io/protocol/ProtoBuf;

    sget-object v5, Lcom/google/android/feedback/proto/MobileCommonMessageTypes;->PRODUCT_SPECIFIC_BINARY_DATA:Lcom/x/google/common/io/protocol/ProtoBufType;

    invoke-direct {v3, v5}, Lcom/x/google/common/io/protocol/ProtoBuf;-><init>(Lcom/x/google/common/io/protocol/ProtoBufType;)V

    .line 140
    .local v3, productBinaryData:Lcom/x/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/ProductSpecificBinaryDataHolder;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v7, v5}, Lcom/x/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/ProductSpecificBinaryDataHolder;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v8, v5}, Lcom/x/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 143
    const/4 v5, 0x3

    invoke-virtual {v3, v5, v1}, Lcom/x/google/common/io/protocol/ProtoBuf;->setBytes(I[B)V

    .line 144
    invoke-virtual {v4, v8, v3}, Lcom/x/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/x/google/common/io/protocol/ProtoBuf;)V

    goto :goto_0

    .line 148
    .end local v0           #binaryData:Lcom/google/userfeedback/android/api/ProductSpecificBinaryDataHolder;
    .end local v1           #data:[B
    .end local v3           #productBinaryData:Lcom/x/google/common/io/protocol/ProtoBuf;
    :cond_4
    return-object v4
.end method


# virtual methods
.method public serialize()Lcom/x/google/common/io/protocol/ProtoBuf;
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/userfeedback/android/api/UserFeedbackSerializer;->serializeUserFeedbackReport()Lcom/x/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method
