.class public final Lcom/google/android/maps/driveabout/store/bi;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/store/bj;

.field private final b:F

.field private final c:F


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/store/bj;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/store/bi;->a:Lcom/google/android/maps/driveabout/store/bj;

    iput p2, p0, Lcom/google/android/maps/driveabout/store/bi;->b:F

    iput p3, p0, Lcom/google/android/maps/driveabout/store/bi;->c:F

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/maps/driveabout/store/bj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/store/bi;->a:Lcom/google/android/maps/driveabout/store/bj;

    return-object v0
.end method

.method public final b()F
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/store/bi;->b:F

    return v0
.end method

.method public final c()F
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/store/bi;->c:F

    return v0
.end method
