.class public final Lcom/google/userfeedback/android/api/ac;
.super Landroid/widget/BaseAdapter;


# static fields
.field private static a:I


# instance fields
.field private b:Ljava/util/List;

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/google/userfeedback/android/api/ac;->a:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/userfeedback/android/api/ab;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/google/userfeedback/android/api/ac;->c:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/google/userfeedback/android/api/ac;->a(Lcom/google/userfeedback/android/api/ab;)V

    return-void
.end method

.method private static a(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v0, p2, :cond_0

    if-le v1, p1, :cond_1

    :cond_0
    int-to-float v0, v0

    int-to-float v2, p2

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v1, v1

    int-to-float v2, p1

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-le v0, v1, :cond_2

    :goto_0
    sput v0, Lcom/google/userfeedback/android/api/ac;->a:I

    :cond_1
    sget v0, Lcom/google/userfeedback/android/api/ac;->a:I

    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/userfeedback/android/api/ac;[BII)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/google/userfeedback/android/api/ac;->a([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static a([BII)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v1, p0

    invoke-static {p0, v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/lit8 p1, v1, 0x2

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/lit8 p2, v1, 0x2

    :cond_1
    invoke-static {v0, p1, p2}, Lcom/google/userfeedback/android/api/ac;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v1, p0

    invoke-static {p0, v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/userfeedback/android/api/ab;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/userfeedback/android/api/ac;->b:Ljava/util/List;

    iget-object v0, p1, Lcom/google/userfeedback/android/api/ab;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/userfeedback/android/api/ab;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "description"

    sget v1, Lcom/google/userfeedback/android/api/i;->gf_error_report_description:I

    invoke-direct {p0, p1, v0, v1}, Lcom/google/userfeedback/android/api/ac;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    :cond_0
    const-string v0, "packageName"

    sget v1, Lcom/google/userfeedback/android/api/i;->gf_error_report_package_name:I

    invoke-direct {p0, p1, v0, v1}, Lcom/google/userfeedback/android/api/ac;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    const-string v0, "packageVersion"

    sget v1, Lcom/google/userfeedback/android/api/i;->gf_error_report_package_version:I

    invoke-direct {p0, p1, v0, v1}, Lcom/google/userfeedback/android/api/ac;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    const-string v0, "packageVersionName"

    sget v1, Lcom/google/userfeedback/android/api/i;->gf_error_report_package_version_name:I

    invoke-direct {p0, p1, v0, v1}, Lcom/google/userfeedback/android/api/ac;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    const-string v0, "installerPackageName"

    sget v1, Lcom/google/userfeedback/android/api/i;->gf_error_report_installer_package_name:I

    invoke-direct {p0, p1, v0, v1}, Lcom/google/userfeedback/android/api/ac;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    const-string v0, "processName"

    sget v1, Lcom/google/userfeedback/android/api/i;->gf_error_report_process_name:I

    invoke-direct {p0, p1, v0, v1}, Lcom/google/userfeedback/android/api/ac;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    const-string v0, "timestamp"

    sget v1, Lcom/google/userfeedback/android/api/i;->gf_error_report_time:I

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/userfeedback/android/api/ac;->a(Ljava/lang/Object;Ljava/lang/String;II)V

    const-string v0, "isSystemApp"

    sget v1, Lcom/google/userfeedback/android/api/i;->gf_error_report_system_app:I

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/userfeedback/android/api/ac;->a(Ljava/lang/Object;Ljava/lang/String;II)V

    sget v0, Lcom/google/userfeedback/android/api/i;->gf_network_data:I

    invoke-direct {p0, v0}, Lcom/google/userfeedback/android/api/ac;->b(I)V

    const-string v0, "networkName"

    sget v1, Lcom/google/userfeedback/android/api/i;->gf_network_name:I

    invoke-direct {p0, p1, v0, v1}, Lcom/google/userfeedback/android/api/ac;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    sget v0, Lcom/google/userfeedback/android/api/i;->gf_error_report_system:I

    invoke-direct {p0, v0}, Lcom/google/userfeedback/android/api/ac;->b(I)V

    const-string v0, "device"

    sget v1, Lcom/google/userfeedback/android/api/i;->gf_error_report_device:I

    invoke-direct {p0, p1, v0, v1}, Lcom/google/userfeedback/android/api/ac;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    const-string v0, "buildId"

    sget v1, Lcom/google/userfeedback/android/api/i;->gf_error_report_build_id:I

    invoke-direct {p0, p1, v0, v1}, Lcom/google/userfeedback/android/api/ac;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    const-string v0, "buildType"

    sget v1, Lcom/google/userfeedback/android/api/i;->gf_error_report_build_type:I

    invoke-direct {p0, p1, v0, v1}, Lcom/google/userfeedback/android/api/ac;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    const-string v0, "model"

    sget v1, Lcom/google/userfeedback/android/api/i;->gf_error_report_model:I

    invoke-direct {p0, p1, v0, v1}, Lcom/google/userfeedback/android/api/ac;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    const-string v0, "product"

    sget v1, Lcom/google/userfeedback/android/api/i;->gf_error_report_product:I

    invoke-direct {p0, p1, v0, v1}, Lcom/google/userfeedback/android/api/ac;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    const-string v0, "sdkInt"

    sget v1, Lcom/google/userfeedback/android/api/i;->gf_error_report_sdk_version:I

    invoke-direct {p0, p1, v0, v1}, Lcom/google/userfeedback/android/api/ac;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    const-string v0, "release"

    sget v1, Lcom/google/userfeedback/android/api/i;->gf_error_report_release:I

    invoke-direct {p0, p1, v0, v1}, Lcom/google/userfeedback/android/api/ac;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    const-string v0, "incremental"

    sget v1, Lcom/google/userfeedback/android/api/i;->gf_error_report_incremental:I

    invoke-direct {p0, p1, v0, v1}, Lcom/google/userfeedback/android/api/ac;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    const-string v0, "codename"

    sget v1, Lcom/google/userfeedback/android/api/i;->gf_error_report_codename:I

    invoke-direct {p0, p1, v0, v1}, Lcom/google/userfeedback/android/api/ac;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    const-string v0, "board"

    sget v1, Lcom/google/userfeedback/android/api/i;->gf_error_report_board:I

    invoke-direct {p0, p1, v0, v1}, Lcom/google/userfeedback/android/api/ac;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    const-string v0, "brand"

    sget v1, Lcom/google/userfeedback/android/api/i;->gf_error_report_brand:I

    invoke-direct {p0, p1, v0, v1}, Lcom/google/userfeedback/android/api/ac;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    const-string v0, "numGoogleAccounts"

    sget v1, Lcom/google/userfeedback/android/api/i;->gf_error_report_user_accounts:I

    invoke-direct {p0, p1, v0, v1}, Lcom/google/userfeedback/android/api/ac;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    iget-object v0, p1, Lcom/google/userfeedback/android/api/ab;->o:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/userfeedback/android/api/ab;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "installedPackages"

    sget v1, Lcom/google/userfeedback/android/api/i;->gf_error_report_installed_packages:I

    const-class v2, Lcom/google/userfeedback/android/api/ShowStringListActivity;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/userfeedback/android/api/ac;->a(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;)V

    :cond_1
    iget-object v0, p1, Lcom/google/userfeedback/android/api/ab;->p:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/userfeedback/android/api/ab;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "runningApplications"

    sget v1, Lcom/google/userfeedback/android/api/i;->gf_error_report_running_apps:I

    const-class v2, Lcom/google/userfeedback/android/api/ShowStringListActivity;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/userfeedback/android/api/ac;->a(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;)V

    :cond_2
    iget-object v0, p1, Lcom/google/userfeedback/android/api/ab;->q:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/google/userfeedback/android/api/m;->b()Lcom/google/userfeedback/android/api/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/m;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "systemLog"

    sget v1, Lcom/google/userfeedback/android/api/i;->gf_error_report_system_log:I

    const-class v2, Lcom/google/userfeedback/android/api/ShowTextActivity;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/userfeedback/android/api/ac;->a(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;)V

    :cond_3
    iget-object v0, p1, Lcom/google/userfeedback/android/api/ab;->I:Lcom/google/userfeedback/android/api/aa;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/google/userfeedback/android/api/ab;->I:Lcom/google/userfeedback/android/api/aa;

    sget v1, Lcom/google/userfeedback/android/api/i;->gf_crash_header:I

    invoke-direct {p0, v1}, Lcom/google/userfeedback/android/api/ac;->b(I)V

    const-string v1, "exceptionClassName"

    sget v2, Lcom/google/userfeedback/android/api/i;->gf_exception_class_name:I

    invoke-direct {p0, v0, v1, v2}, Lcom/google/userfeedback/android/api/ac;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    const-string v1, "throwFileName"

    sget v2, Lcom/google/userfeedback/android/api/i;->gf_throw_file_name:I

    invoke-direct {p0, v0, v1, v2}, Lcom/google/userfeedback/android/api/ac;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    const-string v1, "throwLineNumber"

    sget v2, Lcom/google/userfeedback/android/api/i;->gf_throw_line_number:I

    invoke-direct {p0, v0, v1, v2}, Lcom/google/userfeedback/android/api/ac;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    const-string v1, "throwClassName"

    sget v2, Lcom/google/userfeedback/android/api/i;->gf_throw_class_name:I

    invoke-direct {p0, v0, v1, v2}, Lcom/google/userfeedback/android/api/ac;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    const-string v1, "throwMethodName"

    sget v2, Lcom/google/userfeedback/android/api/i;->gf_throw_method_name:I

    invoke-direct {p0, v0, v1, v2}, Lcom/google/userfeedback/android/api/ac;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    iget-object v1, v0, Lcom/google/userfeedback/android/api/aa;->g:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, "exceptionMessage"

    sget v2, Lcom/google/userfeedback/android/api/i;->gf_exception_message:I

    invoke-direct {p0, v0, v1, v2}, Lcom/google/userfeedback/android/api/ac;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    :cond_4
    const-string v1, "stackTrace"

    sget v2, Lcom/google/userfeedback/android/api/i;->gf_stack_trace:I

    const-class v3, Lcom/google/userfeedback/android/api/ShowTextActivity;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/userfeedback/android/api/ac;->a(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;)V

    :cond_5
    iget-object v0, p1, Lcom/google/userfeedback/android/api/ab;->u:[B

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/google/userfeedback/android/api/m;->b()Lcom/google/userfeedback/android/api/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/m;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    sget v0, Lcom/google/userfeedback/android/api/i;->gf_screenshot_preview:I

    invoke-direct {p0, v0}, Lcom/google/userfeedback/android/api/ac;->b(I)V

    const-string v0, "screenshot"

    sget v1, Lcom/google/userfeedback/android/api/i;->gf_screenshot_preview:I

    invoke-direct {p0, p1, v0, v1}, Lcom/google/userfeedback/android/api/ac;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    :cond_6
    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/userfeedback/android/api/ac;->a(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;I)V

    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/String;II)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/userfeedback/android/api/ac;->a(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;I)V

    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/userfeedback/android/api/ac;->a(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;I)V

    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;I)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iget-object v6, p0, Lcom/google/userfeedback/android/api/ac;->b:Ljava/util/List;

    new-instance v0, Lcom/google/userfeedback/android/api/ae;

    move v1, p3

    move-object v2, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/userfeedback/android/api/ae;-><init>(ILjava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Class;I)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private b(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/userfeedback/android/api/ac;->b:Ljava/util/List;

    new-instance v1, Lcom/google/userfeedback/android/api/ae;

    invoke-direct {v1, p1}, Lcom/google/userfeedback/android/api/ae;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    iget-object v0, p0, Lcom/google/userfeedback/android/api/ac;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/userfeedback/android/api/ae;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/ae;->c()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/userfeedback/android/api/ac;->c:Landroid/content/Context;

    iget-object v3, v0, Lcom/google/userfeedback/android/api/ae;->d:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "feedback.FIELD_NAME"

    iget-object v0, v0, Lcom/google/userfeedback/android/api/ae;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/userfeedback/android/api/ac;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/userfeedback/android/api/ac;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/userfeedback/android/api/ac;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/userfeedback/android/api/ac;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/userfeedback/android/api/ae;

    iget-object v1, p0, Lcom/google/userfeedback/android/api/ac;->c:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/ae;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcom/google/userfeedback/android/api/g;->gf_section_header_row:I

    if-eq v2, v3, :cond_e

    :cond_0
    sget v2, Lcom/google/userfeedback/android/api/h;->gf_section_header_row:I

    invoke-virtual {v1, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-static {}, Lcom/google/userfeedback/android/api/m;->b()Lcom/google/userfeedback/android/api/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/userfeedback/android/api/m;->a()Lcom/google/userfeedback/android/api/aj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/userfeedback/android/api/aj;->m()Lcom/google/userfeedback/android/api/l;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/google/userfeedback/android/api/l;->c()I

    move-result v1

    if-gez v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {v3}, Lcom/google/userfeedback/android/api/l;->e()I

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v2

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/userfeedback/android/api/l;->e()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_1
    move-object v1, v2

    check-cast v1, Landroid/widget/TextView;

    iget v0, v0, Lcom/google/userfeedback/android/api/ae;->a:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_2
    return-object v2

    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v3}, Lcom/google/userfeedback/android/api/l;->c()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/ae;->c()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcom/google/userfeedback/android/api/g;->gf_expandable_row:I

    if-eq v2, v3, :cond_5

    :cond_4
    sget v2, Lcom/google/userfeedback/android/api/h;->gf_expandable_row:I

    invoke-virtual {v1, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_5
    :goto_3
    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/ae;->a()Z

    move-result v1

    if-nez v1, :cond_b

    sget v1, Lcom/google/userfeedback/android/api/g;->gf_label:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v2, v0, Lcom/google/userfeedback/android/api/ae;->a:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_4
    iget-object v1, v0, Lcom/google/userfeedback/android/api/ae;->d:Ljava/lang/Class;

    if-nez v1, :cond_6

    sget v1, Lcom/google/userfeedback/android/api/g;->gf_value:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    :try_start_0
    iget v2, v0, Lcom/google/userfeedback/android/api/ae;->e:I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v2, :pswitch_data_0

    :cond_6
    :goto_5
    move-object v2, p2

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/ae;->a()Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcom/google/userfeedback/android/api/g;->gf_screenshot_row:I

    if-eq v2, v3, :cond_5

    :cond_8
    sget v2, Lcom/google/userfeedback/android/api/h;->gf_screenshot_row:I

    invoke-virtual {v1, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_3

    :cond_9
    if-eqz p2, :cond_a

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcom/google/userfeedback/android/api/g;->gf_label_value_row:I

    if-eq v2, v3, :cond_5

    :cond_a
    sget v2, Lcom/google/userfeedback/android/api/h;->gf_label_value_row:I

    invoke-virtual {v1, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_3

    :cond_b
    sget v1, Lcom/google/userfeedback/android/api/g;->gf_feedback_screenshot_view:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v2, Lcom/google/userfeedback/android/api/ad;

    invoke-direct {v2, p0, v1}, Lcom/google/userfeedback/android/api/ad;-><init>(Lcom/google/userfeedback/android/api/ac;Landroid/widget/ImageView;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/userfeedback/android/api/ae;

    aput-object v0, v1, v4

    invoke-virtual {v2, v1}, Lcom/google/userfeedback/android/api/ad;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_4

    :pswitch_0
    :try_start_1
    iget-object v2, v0, Lcom/google/userfeedback/android/api/ae;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v0, Lcom/google/userfeedback/android/api/ae;->c:Ljava/lang/reflect/Field;

    iget-object v0, v0, Lcom/google/userfeedback/android/api/ae;->b:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_c
    iget-object v2, v0, Lcom/google/userfeedback/android/api/ae;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, v0, Lcom/google/userfeedback/android/api/ae;->c:Ljava/lang/reflect/Field;

    iget-object v0, v0, Lcom/google/userfeedback/android/api/ae;->b:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_d
    iget-object v2, v0, Lcom/google/userfeedback/android/api/ae;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/google/userfeedback/android/api/ae;->c:Ljava/lang/reflect/Field;

    iget-object v0, v0, Lcom/google/userfeedback/android/api/ae;->b:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :pswitch_1
    iget-object v2, v0, Lcom/google/userfeedback/android/api/ae;->c:Ljava/lang/reflect/Field;

    iget-object v0, v0, Lcom/google/userfeedback/android/api/ae;->b:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    :cond_e
    move-object v2, p2

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final isEnabled(I)Z
    .locals 1

    iget-object v0, p0, Lcom/google/userfeedback/android/api/ac;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/userfeedback/android/api/ae;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/ae;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
