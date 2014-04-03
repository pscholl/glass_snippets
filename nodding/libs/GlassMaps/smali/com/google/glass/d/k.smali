.class public final Lcom/google/glass/d/k;
.super Ljava/lang/Object;


# static fields
.field public static final OptionMenuItem:[I = null

.field public static final OptionMenuItem_id:I = 0x0

.field public static final OptionMenuItem_image:I = 0x2

.field public static final OptionMenuItem_isDefaultItem:I = 0x3

.field public static final OptionMenuItem_name:I = 0x1

.field public static final TipsView:[I

.field public static final TipsView_tip:I

.field public static final TypophileTextView:[I

.field public static final TypophileTextView_fontWeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/glass/d/k;->OptionMenuItem:[I

    new-array v0, v3, [I

    const v1, 0x7f010005

    aput v1, v0, v2

    sput-object v0, Lcom/google/glass/d/k;->TipsView:[I

    new-array v0, v3, [I

    const/high16 v1, 0x7f01

    aput v1, v0, v2

    sput-object v0, Lcom/google/glass/d/k;->TypophileTextView:[I

    return-void

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
        0x4t 0x0t 0x1t 0x7ft
    .end array-data
.end method
