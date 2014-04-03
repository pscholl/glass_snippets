.class public final Lcom/google/glass/widget/m;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/glass/logging/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/m;->a:Lcom/google/glass/logging/i;

    return-void
.end method

.method public static a(Ljava/util/List;II)Lcom/google/glass/widget/j;
    .locals 1

    sget-object v0, Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;->DEFAULT:Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;

    invoke-static {p0, v0, p1, p2}, Lcom/google/glass/widget/m;->a(Ljava/util/List;Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;II)Lcom/google/glass/widget/j;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/List;Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;II)Lcom/google/glass/widget/j;
    .locals 6

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v2

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    new-instance v4, Lcom/google/googlex/glass/common/proto/ac;

    invoke-direct {v4}, Lcom/google/googlex/glass/common/proto/ac;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/google/googlex/glass/common/proto/ac;->c:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v5, v2

    iput-object v5, v4, Lcom/google/googlex/glass/common/proto/ac;->j:[Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/glass/widget/h;

    invoke-direct {v0, v3, p1, p2, p3}, Lcom/google/glass/widget/h;-><init>(Ljava/util/List;Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;II)V

    return-object v0
.end method
