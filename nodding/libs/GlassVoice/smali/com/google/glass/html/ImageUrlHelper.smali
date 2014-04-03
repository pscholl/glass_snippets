.class public Lcom/google/glass/html/ImageUrlHelper;
.super Ljava/lang/Object;
.source "ImageUrlHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/html/ImageUrlHelper$FifeParam;,
        Lcom/google/glass/html/ImageUrlHelper$ImageDownloadParams;
    }
.end annotation


# static fields
.field private static final FIFE_HOSTED_IMAGE_URL_RE:Ljava/util/regex/Pattern; = null

.field private static final INVALID_NUMBER:I = -0x1


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "^((http(s)?):)?\\/\\/((((lh[3-6]\\.((ggpht)|(googleusercontent)|(google)))|(gp[3-6]\\.((ggpht)|(googleusercontent)|(google)))|([1-4]\\.bp\\.blogspot)|(bp[0-3]\\.blogger))\\.com)|(dp[3-6]\\.googleusercontent\\.cn)|((dev|dev2|dev3|qa|qa2|qa3|qa-red|qa-blue|canary)[-.]lighthouse\\.sandbox\\.google\\.com/image)|(www\\.google\\.com\\/visualsearch\\/lh))\\/"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/html/ImageUrlHelper;->FIFE_HOSTED_IMAGE_URL_RE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/glass/html/ImageUrlHelper;->context:Landroid/content/Context;

    .line 51
    return-void
.end method

.method private isFifeHostedUrl(Ljava/lang/String;)Z
    .locals 1
    .parameter "url"

    .prologue
    .line 163
    sget-object v0, Lcom/google/glass/html/ImageUrlHelper;->FIFE_HOSTED_IMAGE_URL_RE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method private safeToIntMinusPrefix(Ljava/lang/String;)I
    .locals 3
    .parameter "value"

    .prologue
    const/4 v1, -0x1

    .line 168
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    :goto_0
    return v1

    .line 168
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method


# virtual methods
.method public getImageDownloadParams(Ljava/lang/String;)Lcom/google/glass/html/ImageUrlHelper$ImageDownloadParams;
    .locals 16
    .parameter "url"

    .prologue
    .line 93
    new-instance v9, Lcom/google/glass/html/ImageUrlHelper$ImageDownloadParams;

    invoke-direct {v9}, Lcom/google/glass/html/ImageUrlHelper$ImageDownloadParams;-><init>()V

    .line 94
    .local v9, params:Lcom/google/glass/html/ImageUrlHelper$ImageDownloadParams;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/html/ImageUrlHelper;->context:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 95
    .local v7, metrics:Landroid/util/DisplayMetrics;
    iget v14, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v15, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 97
    .local v6, maxDimension:I
    iput v6, v9, Lcom/google/glass/html/ImageUrlHelper$ImageDownloadParams;->width:I

    iput v6, v9, Lcom/google/glass/html/ImageUrlHelper$ImageDownloadParams;->height:I

    .line 98
    const/4 v14, 0x0

    iput v14, v9, Lcom/google/glass/html/ImageUrlHelper$ImageDownloadParams;->cropType:I

    .line 100
    invoke-direct/range {p0 .. p1}, Lcom/google/glass/html/ImageUrlHelper;->isFifeHostedUrl(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-object v9

    .line 104
    :cond_1
    const-string v14, "/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 105
    .local v10, pathParts:[Ljava/lang/String;
    array-length v14, v10

    const/4 v15, 0x2

    if-lt v14, v15, :cond_0

    .line 109
    array-length v14, v10

    add-int/lit8 v14, v14, -0x2

    aget-object v14, v10, v14

    const-string v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, fifeParts:[Ljava/lang/String;
    const/4 v13, -0x1

    .line 111
    .local v13, urlWidth:I
    const/4 v12, -0x1

    .line 112
    .local v12, urlHeight:I
    const/4 v11, 0x0

    .line 113
    .local v11, urlCropType:Ljava/lang/Integer;
    move-object v1, v3

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_4

    aget-object v8, v1, v4

    .line 114
    .local v8, p:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 113
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 117
    :cond_3
    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    sparse-switch v14, :sswitch_data_0

    .line 136
    const-string v14, "p"

    invoke-virtual {v8, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 137
    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_2

    .line 119
    :sswitch_0
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/google/glass/html/ImageUrlHelper;->safeToIntMinusPrefix(Ljava/lang/String;)I

    move-result v13

    .line 120
    goto :goto_2

    .line 123
    :sswitch_1
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/google/glass/html/ImageUrlHelper;->safeToIntMinusPrefix(Ljava/lang/String;)I

    move-result v12

    .line 124
    goto :goto_2

    .line 127
    :sswitch_2
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/google/glass/html/ImageUrlHelper;->safeToIntMinusPrefix(Ljava/lang/String;)I

    move-result v12

    move v13, v12

    .line 128
    goto :goto_2

    .line 142
    .end local v8           #p:Ljava/lang/String;
    :cond_4
    const/4 v14, -0x1

    if-eq v13, v14, :cond_0

    const/4 v14, -0x1

    if-eq v12, v14, :cond_0

    if-eqz v11, :cond_0

    .line 145
    if-gt v13, v6, :cond_5

    if-le v12, v6, :cond_6

    .line 146
    :cond_5
    int-to-float v14, v13

    int-to-float v15, v12

    div-float v2, v14, v15

    .line 147
    .local v2, aspectRatio:F
    if-le v13, v12, :cond_7

    .line 148
    move v13, v6

    .line 149
    int-to-float v14, v6

    div-float/2addr v14, v2

    float-to-int v12, v14

    .line 155
    .end local v2           #aspectRatio:F
    :cond_6
    :goto_3
    iput v13, v9, Lcom/google/glass/html/ImageUrlHelper$ImageDownloadParams;->width:I

    .line 156
    iput v12, v9, Lcom/google/glass/html/ImageUrlHelper$ImageDownloadParams;->height:I

    .line 157
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v14

    iput v14, v9, Lcom/google/glass/html/ImageUrlHelper$ImageDownloadParams;->cropType:I

    goto :goto_0

    .line 151
    .restart local v2       #aspectRatio:F
    :cond_7
    int-to-float v14, v6

    mul-float/2addr v14, v2

    float-to-int v13, v14

    .line 152
    move v12, v6

    goto :goto_3

    .line 117
    nop

    :sswitch_data_0
    .sparse-switch
        0x68 -> :sswitch_1
        0x73 -> :sswitch_2
        0x77 -> :sswitch_0
    .end sparse-switch
.end method
