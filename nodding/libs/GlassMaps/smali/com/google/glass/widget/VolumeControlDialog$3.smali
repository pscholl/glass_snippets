.class Lcom/google/glass/widget/VolumeControlDialog$3;
.super Ljava/util/HashMap;


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/ar;

.field final synthetic val$numValues:I


# direct methods
.method constructor <init>(Lcom/google/glass/widget/ar;I)V
    .locals 4

    iput-object p1, p0, Lcom/google/glass/widget/VolumeControlDialog$3;->this$0:Lcom/google/glass/widget/ar;

    iput p2, p0, Lcom/google/glass/widget/VolumeControlDialog$3;->val$numValues:I

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/google/glass/d/e;->ic_volume_0_large:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/widget/VolumeControlDialog$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_0
    int-to-float v1, v0

    const/high16 v2, 0x3f00

    iget v3, p0, Lcom/google/glass/widget/VolumeControlDialog$3;->val$numValues:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/google/glass/d/e;->ic_volume_1_large:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/widget/VolumeControlDialog$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
