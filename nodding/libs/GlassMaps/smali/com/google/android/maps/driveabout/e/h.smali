.class public final Lcom/google/android/maps/driveabout/e/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/e/j;


# instance fields
.field private a:Lcom/google/android/maps/driveabout/e/ap;


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/e/ap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/e/h;->a:Lcom/google/android/maps/driveabout/e/ap;

    return-void
.end method

.method public static a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/e/aq;)Lcom/google/android/maps/driveabout/e/h;
    .locals 2

    invoke-static {p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-static {p0}, Lcom/google/android/maps/driveabout/e/az;->a(Ljava/io/DataInput;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/maps/driveabout/e/h;

    invoke-static {}, Lcom/google/android/maps/driveabout/e/ap;->a()Lcom/google/android/maps/driveabout/e/ap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/e/h;-><init>(Lcom/google/android/maps/driveabout/e/ap;)V

    return-object v0
.end method


# virtual methods
.method public final b()Lcom/google/android/maps/driveabout/e/ap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/h;->a:Lcom/google/android/maps/driveabout/e/ap;

    return-object v0
.end method

.method public final c()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
