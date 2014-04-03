.class Lcom/google/android/maps/driveabout/f/ab;
.super Ljava/lang/Object;


# instance fields
.field public final b:Lcom/google/android/maps/driveabout/g/e;

.field public c:I

.field public final d:I

.field public e:I

.field public f:Lcom/google/android/maps/driveabout/f/ab;

.field public g:Z


# direct methods
.method public constructor <init>(ILcom/google/android/maps/driveabout/g/e;Lcom/google/android/maps/driveabout/f/ab;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/maps/driveabout/f/ab;->c:I

    iput-object p2, p0, Lcom/google/android/maps/driveabout/f/ab;->b:Lcom/google/android/maps/driveabout/g/e;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/f/ab;->f:Lcom/google/android/maps/driveabout/f/ab;

    iput p4, p0, Lcom/google/android/maps/driveabout/f/ab;->d:I

    iget v0, p0, Lcom/google/android/maps/driveabout/f/ab;->c:I

    iget v1, p0, Lcom/google/android/maps/driveabout/f/ab;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/f/ab;->e:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/f/ab;->g:Z

    return-void
.end method
