.class public final Lcom/google/android/maps/driveabout/b/q;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/google/android/maps/driveabout/nav/ao;

.field private c:[Lcom/google/android/maps/driveabout/nav/ao;

.field private d:Z

.field private e:I

.field private f:Ljava/lang/String;

.field private g:[Lcom/google/android/maps/driveabout/nav/b;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "+"

    const-string v1, "%20"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/q;->a:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/b/q;->i:I

    return-void
.end method

.method public static a(Lcom/google/android/maps/driveabout/nav/ao;Lcom/google/android/maps/driveabout/nav/ao;I[Lcom/google/android/maps/driveabout/nav/b;)Landroid/net/Uri;
    .locals 1

    new-instance v0, Lcom/google/android/maps/driveabout/b/r;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/b/r;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/b/r;->b(Lcom/google/android/maps/driveabout/nav/ao;)Lcom/google/android/maps/driveabout/b/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/b/r;->a(Lcom/google/android/maps/driveabout/nav/ao;)Lcom/google/android/maps/driveabout/b/r;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/maps/driveabout/b/r;->a(I)Lcom/google/android/maps/driveabout/b/r;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/maps/driveabout/b/r;->a([Lcom/google/android/maps/driveabout/nav/b;)Lcom/google/android/maps/driveabout/b/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/b/r;->a()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static a([Lcom/google/android/maps/driveabout/nav/ao;I[Lcom/google/android/maps/driveabout/nav/b;)Landroid/net/Uri;
    .locals 1

    new-instance v0, Lcom/google/android/maps/driveabout/b/r;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/b/r;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/b/r;->a([Lcom/google/android/maps/driveabout/nav/ao;)Lcom/google/android/maps/driveabout/b/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/b/r;->a(I)Lcom/google/android/maps/driveabout/b/r;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/maps/driveabout/b/r;->a([Lcom/google/android/maps/driveabout/nav/b;)Lcom/google/android/maps/driveabout/b/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/b/r;->a()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/maps/driveabout/nav/ao;
    .locals 2

    invoke-static {p1}, Lcom/google/android/maps/driveabout/b/q;->b(Ljava/lang/String;)Lcom/google/android/maps/driveabout/e/m;

    move-result-object v1

    if-nez p0, :cond_0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/maps/driveabout/nav/ao;

    invoke-direct {v0, p0, v1, p2, p3}, Lcom/google/android/maps/driveabout/nav/ao;-><init>(Ljava/lang/String;Lcom/google/android/maps/driveabout/e/m;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/e/m;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/maps/driveabout/b/q;->b(Lcom/google/android/maps/driveabout/e/m;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a([Lcom/google/android/maps/driveabout/nav/b;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/maps/driveabout/b/q;->b([Lcom/google/android/maps/driveabout/nav/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "google.navigation"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Lcom/google/android/maps/driveabout/e/m;
    .locals 8

    const-wide v6, 0x412e848000000000L

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const/4 v4, 0x1

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    new-instance v1, Lcom/google/android/maps/driveabout/e/m;

    mul-double/2addr v2, v6

    double-to-int v2, v2

    mul-double v3, v4, v6

    double-to-int v3, v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/maps/driveabout/e/m;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static b(Lcom/google/android/maps/driveabout/e/m;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/m;->a()I

    move-result v1

    invoke-static {v1}, Lcom/google/googlenav/common/e/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/m;->b()I

    move-result v1

    invoke-static {v1}, Lcom/google/googlenav/common/e/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b([Lcom/google/android/maps/driveabout/nav/b;)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p0, v0

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/b;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/b;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;)[Lcom/google/android/maps/driveabout/nav/b;
    .locals 11

    const/4 v0, 0x0

    const/4 v10, 0x2

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-array v0, v2, [Lcom/google/android/maps/driveabout/nav/b;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v1, v5

    new-array v1, v1, [Lcom/google/android/maps/driveabout/nav/b;

    array-length v6, v5

    move v3, v2

    :goto_1
    if-ge v2, v6, :cond_2

    aget-object v4, v5, v2

    const-string v7, ":"

    invoke-virtual {v4, v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    array-length v7, v4

    if-ne v7, v10, :cond_0

    const/4 v7, 0x0

    :try_start_0
    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v4, v3, 0x1

    new-instance v9, Lcom/google/android/maps/driveabout/nav/b;

    invoke-direct {v9, v7, v8}, Lcom/google/android/maps/driveabout/nav/b;-><init>(II)V

    aput-object v9, v1, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private g()Z
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/q;->a:Ljava/lang/String;

    const-string v3, "http:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/q;->a:Ljava/lang/String;

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/q;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "1"

    const-string v4, "nav"

    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "daddr"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "dirflg"

    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput v0, p0, Lcom/google/android/maps/driveabout/b/q;->e:I

    if-eqz v2, :cond_2

    const-string v4, "w"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x2

    iput v2, p0, Lcom/google/android/maps/driveabout/b/q;->e:I

    :cond_2
    :goto_1
    new-array v2, v1, [Lcom/google/android/maps/driveabout/nav/ao;

    new-instance v4, Lcom/google/android/maps/driveabout/nav/ao;

    invoke-direct {v4, v3, v5, v5, v5}, Lcom/google/android/maps/driveabout/nav/ao;-><init>(Ljava/lang/String;Lcom/google/android/maps/driveabout/e/m;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v0

    iput-object v2, p0, Lcom/google/android/maps/driveabout/b/q;->c:[Lcom/google/android/maps/driveabout/nav/ao;

    move v0, v1

    goto :goto_0

    :cond_3
    const-string v4, "b"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v2, 0x3

    iput v2, p0, Lcom/google/android/maps/driveabout/b/q;->e:I

    goto :goto_1

    :cond_4
    const-string v4, "r"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput v1, p0, Lcom/google/android/maps/driveabout/b/q;->e:I

    goto :goto_1
.end method


# virtual methods
.method public final a()Z
    .locals 8

    const/4 v5, 0x3

    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/b/q;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/b/q;->j:Z

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const-string v0, "google.navigation:"

    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/q;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/q;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&x=y"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v1, v0

    :goto_1
    const-string v0, "sync_layers"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "true"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/b/q;->k:Z

    :cond_2
    const-string v0, "resume"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "true"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput v7, p0, Lcom/google/android/maps/driveabout/b/q;->i:I

    move v0, v2

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/?"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&x=y"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_4
    const-string v0, "mode"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-boolean v3, p0, Lcom/google/android/maps/driveabout/b/q;->d:Z

    iput v3, p0, Lcom/google/android/maps/driveabout/b/q;->e:I

    const-string v4, "w"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iput v7, p0, Lcom/google/android/maps/driveabout/b/q;->e:I

    :goto_2
    const-string v0, "entry"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/b/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/q;->f:Ljava/lang/String;

    const-string v0, "fd"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "true"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iput v5, p0, Lcom/google/android/maps/driveabout/b/q;->i:I

    move v0, v2

    goto/16 :goto_0

    :cond_5
    const-string v4, "b"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iput v5, p0, Lcom/google/android/maps/driveabout/b/q;->e:I

    goto :goto_2

    :cond_6
    const-string v4, "r"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iput v2, p0, Lcom/google/android/maps/driveabout/b/q;->e:I

    goto :goto_2

    :cond_7
    const-string v4, "d"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iput v3, p0, Lcom/google/android/maps/driveabout/b/q;->e:I

    goto :goto_2

    :cond_8
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/b/q;->d:Z

    goto :goto_2

    :cond_9
    const-string v0, "opt"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/b/q;->c(Ljava/lang/String;)[Lcom/google/android/maps/driveabout/nav/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/q;->g:[Lcom/google/android/maps/driveabout/nav/b;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/q;->g:[Lcom/google/android/maps/driveabout/nav/b;

    if-nez v0, :cond_a

    move v0, v3

    goto/16 :goto_0

    :cond_a
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "altvia"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/b/q;->b(Ljava/lang/String;)Lcom/google/android/maps/driveabout/e/m;

    move-result-object v0

    if-nez v0, :cond_b

    move v0, v3

    goto/16 :goto_0

    :cond_b
    new-instance v6, Lcom/google/android/maps/driveabout/nav/ao;

    invoke-direct {v6, v0}, Lcom/google/android/maps/driveabout/nav/ao;-><init>(Lcom/google/android/maps/driveabout/e/m;)V

    invoke-virtual {v6, v7}, Lcom/google/android/maps/driveabout/nav/ao;->a(I)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_c
    const-string v0, "r"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/q;->h:Ljava/lang/String;

    const-string v0, "s"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "sll"

    invoke-virtual {v1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "stitle"

    invoke-virtual {v1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "stoken"

    invoke-virtual {v1, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v5, v6, v7}, Lcom/google/android/maps/driveabout/b/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/q;->b:Lcom/google/android/maps/driveabout/nav/ao;

    const-string v0, "sr"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "true"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/q;->b:Lcom/google/android/maps/driveabout/nav/ao;

    if-nez v0, :cond_d

    move v0, v3

    goto/16 :goto_0

    :cond_d
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/maps/driveabout/b/q;->i:I

    :cond_e
    const-string v0, "q"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "ll"

    invoke-virtual {v1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "title"

    invoke-virtual {v1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "token"

    invoke-virtual {v1, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v5, v6, v7}, Lcom/google/android/maps/driveabout/b/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v0

    if-nez v0, :cond_f

    move v0, v3

    goto/16 :goto_0

    :cond_f
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/maps/driveabout/nav/ao;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/maps/driveabout/nav/ao;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/q;->c:[Lcom/google/android/maps/driveabout/nav/ao;

    const-string v0, "true"

    const-string v4, "goff"

    invoke-virtual {v1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/q;->c:[Lcom/google/android/maps/driveabout/nav/ao;

    array-length v0, v0

    if-lt v0, v2, :cond_10

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/q;->b:Lcom/google/android/maps/driveabout/nav/ao;

    if-nez v0, :cond_11

    :cond_10
    move v0, v3

    goto/16 :goto_0

    :cond_11
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/maps/driveabout/b/q;->i:I

    :cond_12
    move v0, v2

    goto/16 :goto_0
.end method

.method public final b()Lcom/google/android/maps/driveabout/nav/ao;
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/q;->c:[Lcom/google/android/maps/driveabout/nav/ao;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/q;->c:[Lcom/google/android/maps/driveabout/nav/ao;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/q;->c:[Lcom/google/android/maps/driveabout/nav/ao;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/q;->c:[Lcom/google/android/maps/driveabout/nav/ao;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Lcom/google/android/maps/driveabout/nav/ao;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/q;->b:Lcom/google/android/maps/driveabout/nav/ao;

    return-object v0
.end method

.method public final d()[Lcom/google/android/maps/driveabout/nav/ao;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/q;->c:[Lcom/google/android/maps/driveabout/nav/ao;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/b/q;->d:Z

    return v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/b/q;->e:I

    return v0
.end method
