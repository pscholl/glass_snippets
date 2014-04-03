.class public final Lcom/google/googlenav/common/graphics/android/AndroidImage;
.super Ljava/lang/Object;


# static fields
.field private static final b:Lcom/google/glass/logging/i;


# instance fields
.field protected a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/common/graphics/android/AndroidImage;->b:Lcom/google/glass/logging/i;

    return-void
.end method


# virtual methods
.method protected final finalize()V
    .locals 5

    iget v0, p0, Lcom/google/googlenav/common/graphics/android/AndroidImage;->a:I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/googlenav/common/graphics/android/AndroidImage;->b:Lcom/google/glass/logging/i;

    const-string v1, "Reference count = %s when finalized"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/googlenav/common/graphics/android/AndroidImage;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
