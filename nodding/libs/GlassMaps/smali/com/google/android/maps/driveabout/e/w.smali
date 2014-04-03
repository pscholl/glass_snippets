.class public final Lcom/google/android/maps/driveabout/e/w;
.super Lcom/google/android/maps/driveabout/e/v;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/e/k;Lcom/google/android/maps/driveabout/e/af;[Lcom/google/android/maps/driveabout/e/s;Lcom/google/android/maps/driveabout/e/ap;ILjava/lang/String;IFI[I)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/google/android/maps/driveabout/e/v;-><init>(Lcom/google/android/maps/driveabout/e/k;Lcom/google/android/maps/driveabout/e/af;[Lcom/google/android/maps/driveabout/e/s;Lcom/google/android/maps/driveabout/e/ap;ILjava/lang/String;IFI[I)V

    return-void
.end method

.method public static b(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/e/aq;[Ljava/lang/String;)Lcom/google/android/maps/driveabout/e/v;
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/maps/driveabout/e/v;->a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/e/av;Lcom/google/android/maps/driveabout/e/aq;[Ljava/lang/String;Z)Lcom/google/android/maps/driveabout/e/v;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final c()I
    .locals 1

    const/16 v0, 0xb

    return v0
.end method
