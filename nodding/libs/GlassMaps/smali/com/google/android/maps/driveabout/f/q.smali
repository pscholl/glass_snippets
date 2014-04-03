.class public final Lcom/google/android/maps/driveabout/f/q;
.super Ljava/lang/Object;


# instance fields
.field private final a:[Lcom/google/android/maps/driveabout/nav/ah;


# direct methods
.method public constructor <init>([Lcom/google/android/maps/driveabout/nav/ah;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/f/q;->a:[Lcom/google/android/maps/driveabout/nav/ah;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/q;->a:[Lcom/google/android/maps/driveabout/nav/ah;

    array-length v0, v0

    return v0
.end method

.method public final a(I)Lcom/google/android/maps/driveabout/nav/ah;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/q;->a:[Lcom/google/android/maps/driveabout/nav/ah;

    aget-object v0, v0, p1

    return-object v0
.end method
