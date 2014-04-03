.class public final Lcom/google/android/maps/driveabout/a/bb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/a/c;


# static fields
.field public static final a:[J

.field public static final b:[J

.field public static final c:[J

.field public static final d:[J

.field public static final e:[J


# instance fields
.field private final f:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x6

    new-array v0, v1, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/maps/driveabout/a/bb;->a:[J

    new-array v0, v1, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/maps/driveabout/a/bb;->b:[J

    new-array v0, v1, [J

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/maps/driveabout/a/bb;->c:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/maps/driveabout/a/bb;->d:[J

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/android/maps/driveabout/a/bb;->e:[J

    return-void

    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xdct 0x5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xdct 0x5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/a/bb;->f:Landroid/os/Vibrator;

    return-void
.end method

.method private static a(ILcom/google/android/maps/driveabout/nav/ah;)[J
    .locals 1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/google/android/maps/driveabout/a/bb;->d:[J

    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/ah;->b()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/nav/ah;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/ah;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/google/android/maps/driveabout/a/bb;->c:[J

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/google/android/maps/driveabout/a/bb;->a:[J

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/google/android/maps/driveabout/a/bb;->b:[J

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/maps/driveabout/a/bb;->e:[J

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/a/at;)Lcom/google/android/maps/driveabout/a/a;
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/a/at;->c()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/a/at;->d()Lcom/google/android/maps/driveabout/nav/i;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/a/at;->d()Lcom/google/android/maps/driveabout/nav/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/i;->e()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v0

    :goto_0
    invoke-static {v2, v0}, Lcom/google/android/maps/driveabout/a/bb;->a(ILcom/google/android/maps/driveabout/nav/ah;)[J

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/maps/driveabout/a/ba;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/a/bb;->f:Landroid/os/Vibrator;

    invoke-direct {v1, v2, v0}, Lcom/google/android/maps/driveabout/a/ba;-><init>(Landroid/os/Vibrator;[J)V

    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final a()V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method
