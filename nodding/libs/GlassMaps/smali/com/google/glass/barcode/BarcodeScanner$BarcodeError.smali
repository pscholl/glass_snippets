.class public final enum Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;

.field public static final enum CAMERA:Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;

.field public static final enum TIMEOUT:Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;

    const-string v1, "TIMEOUT"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;->TIMEOUT:Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;

    new-instance v0, Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;

    const-string v1, "CAMERA"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;->CAMERA:Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;

    sget-object v1, Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;->TIMEOUT:Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;->CAMERA:Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;->$VALUES:[Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;
    .locals 1

    const-class v0, Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;
    .locals 1

    sget-object v0, Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;->$VALUES:[Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;

    invoke-virtual {v0}, [Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/barcode/BarcodeScanner$BarcodeError;

    return-object v0
.end method
