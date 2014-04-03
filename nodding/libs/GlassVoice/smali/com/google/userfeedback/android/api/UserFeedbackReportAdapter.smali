.class public Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;
.super Landroid/widget/BaseAdapter;
.source "UserFeedbackReportAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$PublishBitmapTask;,
        Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;
    }
.end annotation


# static fields
.field private static final CONVERT_DATE:I = 0x1

.field private static final CONVERT_NONE:I = 0x0

.field static final EXTRA_FIELD_NAME:Ljava/lang/String; = "feedback.FIELD_NAME"

.field private static final TAG:Ljava/lang/String; = "UserFeedbackReportAdapter"

.field private static inSampleSize:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    sput v0, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->inSampleSize:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/userfeedback/android/api/UserFeedbackReport;)V
    .locals 0
    .parameter "context"
    .parameter "report"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 169
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->mContext:Landroid/content/Context;

    .line 170
    invoke-direct {p0, p2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->buildRows(Lcom/google/userfeedback/android/api/UserFeedbackReport;)V

    .line 171
    return-void
.end method

.method static synthetic access$000(Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;[BII)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->decodeSampledBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private addRow(Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 6
    .parameter "report"
    .parameter "fieldName"
    .parameter "labelResId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 406
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;I)V

    .line 407
    return-void
.end method

.method private addRow(Ljava/lang/Object;Ljava/lang/String;II)V
    .locals 6
    .parameter "report"
    .parameter "fieldName"
    .parameter "labelResId"
    .parameter "convertType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 414
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;I)V

    .line 415
    return-void
.end method

.method private addRow(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;)V
    .locals 6
    .parameter "report"
    .parameter "fieldName"
    .parameter "labelResId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 422
    .local p4, viewerActivity:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;I)V

    .line 423
    return-void
.end method

.method private addRow(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;I)V
    .locals 8
    .parameter "report"
    .parameter "fieldName"
    .parameter "labelResId"
    .parameter
    .parameter "convertType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 427
    .local p4, viewerActivity:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 428
    .local v6, c:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Object;>;"
    invoke-virtual {v6, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 430
    .local v3, field:Ljava/lang/reflect/Field;
    iget-object v7, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->mRows:Ljava/util/List;

    new-instance v0, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;

    move v1, p3

    move-object v2, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;-><init>(ILjava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Class;I)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    return-void
.end method

.method private addSectionHeader(I)V
    .locals 2
    .parameter "headerResId"

    .prologue
    .line 398
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->mRows:Ljava/util/List;

    new-instance v1, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;

    invoke-direct {v1, p1}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    return-void
.end method

.method private buildRows(Lcom/google/userfeedback/android/api/UserFeedbackReport;)V
    .locals 4
    .parameter "report"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 331
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->mRows:Ljava/util/List;

    .line 333
    iget-object v1, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->description:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->description:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 334
    const-string v1, "description"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_error_report_description:I

    invoke-direct {p0, p1, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 336
    :cond_0
    const-string v1, "packageName"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_error_report_package_name:I

    invoke-direct {p0, p1, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 337
    const-string v1, "packageVersion"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_error_report_package_version:I

    invoke-direct {p0, p1, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 338
    const-string v1, "packageVersionName"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_error_report_package_version_name:I

    invoke-direct {p0, p1, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 339
    const-string v1, "installerPackageName"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_error_report_installer_package_name:I

    invoke-direct {p0, p1, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 340
    const-string v1, "processName"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_error_report_process_name:I

    invoke-direct {p0, p1, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 341
    const-string v1, "timestamp"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_error_report_time:I

    const/4 v3, 0x1

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;II)V

    .line 342
    const-string v1, "isSystemApp"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_error_report_system_app:I

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;II)V

    .line 344
    sget v1, Lcom/google/userfeedback/android/api/R$string;->gf_network_data:I

    invoke-direct {p0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addSectionHeader(I)V

    .line 345
    const-string v1, "networkName"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_network_name:I

    invoke-direct {p0, p1, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 347
    sget v1, Lcom/google/userfeedback/android/api/R$string;->gf_error_report_system:I

    invoke-direct {p0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addSectionHeader(I)V

    .line 348
    const-string v1, "device"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_error_report_device:I

    invoke-direct {p0, p1, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 349
    const-string v1, "buildId"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_error_report_build_id:I

    invoke-direct {p0, p1, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 350
    const-string v1, "buildType"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_error_report_build_type:I

    invoke-direct {p0, p1, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 351
    const-string v1, "model"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_error_report_model:I

    invoke-direct {p0, p1, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 352
    const-string v1, "product"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_error_report_product:I

    invoke-direct {p0, p1, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 353
    const-string v1, "sdkInt"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_error_report_sdk_version:I

    invoke-direct {p0, p1, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 354
    const-string v1, "release"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_error_report_release:I

    invoke-direct {p0, p1, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 355
    const-string v1, "incremental"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_error_report_incremental:I

    invoke-direct {p0, p1, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 356
    const-string v1, "codename"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_error_report_codename:I

    invoke-direct {p0, p1, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 357
    const-string v1, "board"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_error_report_board:I

    invoke-direct {p0, p1, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 358
    const-string v1, "brand"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_error_report_brand:I

    invoke-direct {p0, p1, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 359
    const-string v1, "numGoogleAccounts"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_error_report_user_accounts:I

    invoke-direct {p0, p1, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 362
    iget-object v1, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->installedPackages:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->installedPackages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 363
    const-string v1, "installedPackages"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_error_report_installed_packages:I

    const-class v3, Lcom/google/userfeedback/android/api/ShowStringListActivity;

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;)V

    .line 366
    :cond_1
    iget-object v1, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->runningApplications:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->runningApplications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 367
    const-string v1, "runningApplications"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_error_report_running_apps:I

    const-class v3, Lcom/google/userfeedback/android/api/ShowStringListActivity;

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;)V

    .line 371
    :cond_2
    iget-object v1, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->systemLog:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/google/userfeedback/android/api/UserFeedback;->userFeedback()Lcom/google/userfeedback/android/api/UserFeedback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/userfeedback/android/api/UserFeedback;->shouldIncludeSystemLogs()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 372
    const-string v1, "systemLog"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_error_report_system_log:I

    const-class v3, Lcom/google/userfeedback/android/api/ShowTextActivity;

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;)V

    .line 375
    :cond_3
    iget-object v1, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->crashData:Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

    if-eqz v1, :cond_5

    .line 376
    iget-object v0, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->crashData:Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

    .line 377
    .local v0, crashData:Lcom/google/userfeedback/android/api/UserFeedbackCrashData;
    sget v1, Lcom/google/userfeedback/android/api/R$string;->gf_crash_header:I

    invoke-direct {p0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addSectionHeader(I)V

    .line 378
    const-string v1, "exceptionClassName"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_exception_class_name:I

    invoke-direct {p0, v0, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 379
    const-string v1, "throwFileName"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_throw_file_name:I

    invoke-direct {p0, v0, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 380
    const-string v1, "throwLineNumber"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_throw_line_number:I

    invoke-direct {p0, v0, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 381
    const-string v1, "throwClassName"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_throw_class_name:I

    invoke-direct {p0, v0, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 382
    const-string v1, "throwMethodName"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_throw_method_name:I

    invoke-direct {p0, v0, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 383
    iget-object v1, v0, Lcom/google/userfeedback/android/api/UserFeedbackCrashData;->exceptionMessage:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 384
    const-string v1, "exceptionMessage"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_exception_message:I

    invoke-direct {p0, v0, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 386
    :cond_4
    const-string v1, "stackTrace"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_stack_trace:I

    const-class v3, Lcom/google/userfeedback/android/api/ShowTextActivity;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;)V

    .line 388
    .end local v0           #crashData:Lcom/google/userfeedback/android/api/UserFeedbackCrashData;
    :cond_5
    iget-object v1, p1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->screenshot:[B

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/google/userfeedback/android/api/UserFeedback;->userFeedback()Lcom/google/userfeedback/android/api/UserFeedback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/userfeedback/android/api/UserFeedback;->shouldIncludeScreenshot()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 389
    sget v1, Lcom/google/userfeedback/android/api/R$string;->gf_screenshot_preview:I

    invoke-direct {p0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addSectionHeader(I)V

    .line 390
    const-string v1, "screenshot"

    sget v2, Lcom/google/userfeedback/android/api/R$string;->gf_screenshot_preview:I

    invoke-direct {p0, p1, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 392
    :cond_6
    return-void
.end method

.method private static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 6
    .parameter "options"
    .parameter "reqWidth"
    .parameter "reqHeight"

    .prologue
    .line 315
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 316
    .local v0, height:I
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 317
    .local v2, width:I
    if-gt v0, p2, :cond_0

    if-le v2, p1, :cond_1

    .line 318
    :cond_0
    int-to-float v4, v0

    int-to-float v5, p2

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 319
    .local v1, heightRatio:I
    int-to-float v4, v2

    int-to-float v5, p1

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 321
    .local v3, widthRatio:I
    if-le v1, v3, :cond_2

    .end local v1           #heightRatio:I
    :goto_0
    sput v1, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->inSampleSize:I

    .line 323
    .end local v3           #widthRatio:I
    :cond_1
    sget v4, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->inSampleSize:I

    return v4

    .restart local v1       #heightRatio:I
    .restart local v3       #widthRatio:I
    :cond_2
    move v1, v3

    .line 321
    goto :goto_0
.end method

.method private decodeSampledBitmap([BII)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "bitmap"
    .parameter "reqWidth"
    .parameter "reqHeight"

    .prologue
    const/4 v2, 0x0

    .line 297
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 298
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 299
    array-length v1, p1

    invoke-static {p1, v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 300
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 301
    :cond_0
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/lit8 p2, v1, 0x2

    .line 302
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/lit8 p3, v1, 0x2

    .line 305
    :cond_1
    invoke-static {v0, p2, p3}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 306
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 307
    array-length v1, p1

    invoke-static {p1, v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->mRows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 189
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 205
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->mRows:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;

    .line 207
    .local v10, row:Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->mContext:Landroid/content/Context;

    const-string v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 210
    .local v6, inflater:Landroid/view/LayoutInflater;
    move-object/from16 v8, p2

    .line 212
    .local v8, result:Landroid/view/View;
    invoke-virtual {v10}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->isHeader()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 213
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v14

    sget v15, Lcom/google/userfeedback/android/api/R$id;->gf_section_header_row:I

    if-eq v14, v15, :cond_1

    .line 214
    :cond_0
    sget v14, Lcom/google/userfeedback/android/api/R$layout;->gf_section_header_row:I

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v6, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 215
    invoke-static {}, Lcom/google/userfeedback/android/api/UserFeedback;->userFeedback()Lcom/google/userfeedback/android/api/UserFeedback;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/userfeedback/android/api/UserFeedback;->getSpec()Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getUiConfigurationOptions()Lcom/google/userfeedback/android/api/UiConfigurationOptions;

    move-result-object v1

    .line 217
    .local v1, config:Lcom/google/userfeedback/android/api/UiConfigurationOptions;
    if-eqz v1, :cond_1

    .line 218
    invoke-virtual {v1}, Lcom/google/userfeedback/android/api/UiConfigurationOptions;->getSectionHeaderBackgroundResourceId()I

    move-result v14

    if-gez v14, :cond_2

    .line 219
    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
    :goto_0
    invoke-virtual {v1}, Lcom/google/userfeedback/android/api/UiConfigurationOptions;->getSectionHeaderFontColor()I

    move-result v14

    if-eqz v14, :cond_1

    move-object v14, v8

    .line 225
    check-cast v14, Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v1}, Lcom/google/userfeedback/android/api/UiConfigurationOptions;->getSectionHeaderFontColor()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .end local v1           #config:Lcom/google/userfeedback/android/api/UiConfigurationOptions;
    :cond_1
    move-object v7, v8

    .line 230
    check-cast v7, Landroid/widget/TextView;

    .line 231
    .local v7, label:Landroid/widget/TextView;
    iget v14, v10, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->labelResId:I

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setText(I)V

    move-object v9, v8

    .line 287
    .end local v7           #label:Landroid/widget/TextView;
    .end local v8           #result:Landroid/view/View;
    .local v9, result:Landroid/view/View;
    :goto_1
    return-object v9

    .line 221
    .end local v9           #result:Landroid/view/View;
    .restart local v1       #config:Lcom/google/userfeedback/android/api/UiConfigurationOptions;
    .restart local v8       #result:Landroid/view/View;
    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v1}, Lcom/google/userfeedback/android/api/UiConfigurationOptions;->getSectionHeaderBackgroundResourceId()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 236
    .end local v1           #config:Lcom/google/userfeedback/android/api/UiConfigurationOptions;
    :cond_3
    invoke-virtual {v10}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->isExpandable()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 237
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v14

    sget v15, Lcom/google/userfeedback/android/api/R$id;->gf_expandable_row:I

    if-eq v14, v15, :cond_5

    .line 238
    :cond_4
    sget v14, Lcom/google/userfeedback/android/api/R$layout;->gf_expandable_row:I

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v6, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 251
    :cond_5
    :goto_2
    invoke-virtual {v10}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->isImageView()Z

    move-result v14

    if-nez v14, :cond_b

    .line 252
    sget v14, Lcom/google/userfeedback/android/api/R$id;->gf_label:I

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 253
    .restart local v7       #label:Landroid/widget/TextView;
    iget v14, v10, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->labelResId:I

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setText(I)V

    .line 261
    .end local v7           #label:Landroid/widget/TextView;
    :goto_3
    iget-object v14, v10, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->viewerActivity:Ljava/lang/Class;

    if-nez v14, :cond_6

    .line 262
    sget v14, Lcom/google/userfeedback/android/api/R$id;->gf_value:I

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 264
    .local v13, value:Landroid/widget/TextView;
    :try_start_0
    iget v14, v10, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->convertType:I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v14, :pswitch_data_0

    .end local v13           #value:Landroid/widget/TextView;
    :cond_6
    :goto_4
    move-object v9, v8

    .line 287
    .end local v8           #result:Landroid/view/View;
    .restart local v9       #result:Landroid/view/View;
    goto :goto_1

    .line 240
    .end local v9           #result:Landroid/view/View;
    .restart local v8       #result:Landroid/view/View;
    :cond_7
    invoke-virtual {v10}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->isImageView()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 241
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v14

    sget v15, Lcom/google/userfeedback/android/api/R$id;->gf_screenshot_row:I

    if-eq v14, v15, :cond_5

    .line 242
    :cond_8
    sget v14, Lcom/google/userfeedback/android/api/R$layout;->gf_screenshot_row:I

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v6, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    goto :goto_2

    .line 246
    :cond_9
    if-eqz v8, :cond_a

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v14

    sget v15, Lcom/google/userfeedback/android/api/R$id;->gf_label_value_row:I

    if-eq v14, v15, :cond_5

    .line 247
    :cond_a
    sget v14, Lcom/google/userfeedback/android/api/R$layout;->gf_label_value_row:I

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v6, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    goto :goto_2

    .line 255
    :cond_b
    sget v14, Lcom/google/userfeedback/android/api/R$id;->gf_feedback_screenshot_view:I

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 256
    .local v5, im:Landroid/widget/ImageView;
    new-instance v14, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$PublishBitmapTask;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v5}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$PublishBitmapTask;-><init>(Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;Landroid/widget/ImageView;)V

    const/4 v15, 0x1

    new-array v15, v15, [Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;

    const/16 v16, 0x0

    aput-object v10, v15, v16

    invoke-virtual {v14, v15}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$PublishBitmapTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_3

    .line 266
    .end local v5           #im:Landroid/widget/ImageView;
    .restart local v13       #value:Landroid/widget/TextView;
    :pswitch_0
    :try_start_1
    iget-object v14, v10, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v14

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 267
    iget-object v14, v10, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->field:Ljava/lang/reflect/Field;

    iget-object v15, v10, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->report:Ljava/lang/Object;

    invoke-virtual {v14, v15}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 282
    :catch_0
    move-exception v3

    .line 283
    .local v3, e:Ljava/lang/IllegalAccessException;
    const-string v14, "UserFeedbackReportAdapter"

    const-string v15, "failed to obtain field value"

    invoke-static {v14, v15, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 268
    .end local v3           #e:Ljava/lang/IllegalAccessException;
    :cond_c
    :try_start_2
    iget-object v14, v10, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v14

    const-class v15, Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 269
    iget-object v14, v10, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->field:Ljava/lang/reflect/Field;

    iget-object v15, v10, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->report:Ljava/lang/Object;

    invoke-virtual {v14, v15}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 270
    :cond_d
    iget-object v14, v10, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v14

    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 271
    iget-object v14, v10, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->field:Ljava/lang/reflect/Field;

    iget-object v15, v10, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->report:Ljava/lang/Object;

    invoke-virtual {v14, v15}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 276
    :pswitch_1
    iget-object v14, v10, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->field:Ljava/lang/reflect/Field;

    iget-object v15, v10, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->report:Ljava/lang/Object;

    invoke-virtual {v14, v15}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v11

    .line 277
    .local v11, unixDate:J
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v11, v12}, Ljava/util/Date;-><init>(J)V

    .line 278
    .local v2, date:Ljava/util/Date;
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v4

    .line 279
    .local v4, format:Ljava/text/DateFormat;
    invoke-virtual {v4, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4

    .line 264
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 199
    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->mRows:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;

    .line 200
    .local v0, row:Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;
    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->isHeader()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onListItemClick(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 437
    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->mRows:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;

    .line 439
    .local v1, row:Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;
    invoke-virtual {v1}, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->isExpandable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 446
    :goto_0
    return-void

    .line 443
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->viewerActivity:Ljava/lang/Class;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 444
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "feedback.FIELD_NAME"

    iget-object v3, v1, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter$Row;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackReportAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
