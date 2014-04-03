.class public Lcom/google/glass/barcode/BarcodeScanner;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Lcom/google/glass/logging/i;


# instance fields
.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/glass/barcode/BarcodeScanner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/barcode/BarcodeScanner;->a:Ljava/lang/String;

    sget-object v0, Lcom/google/glass/barcode/BarcodeScanner;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/j;->a(Ljava/lang/String;)Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/barcode/BarcodeScanner;->b:Lcom/google/glass/logging/i;

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/glass/barcode/BarcodeScanner;->c:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/glass/barcode/BarcodeScanner;->b:Lcom/google/glass/logging/i;

    const-string v1, "BarcodeScanner finalized while bound to camera service!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/i;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
