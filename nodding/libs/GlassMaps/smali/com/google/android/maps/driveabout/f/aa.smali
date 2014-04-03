.class public final Lcom/google/android/maps/driveabout/f/aa;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/google/android/maps/driveabout/f/d;

.field public final b:Lcom/google/android/maps/driveabout/f/d;

.field public final c:[Lcom/google/android/maps/driveabout/g/e;

.field public final d:[I


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/f/d;Lcom/google/android/maps/driveabout/f/d;[Lcom/google/android/maps/driveabout/g/e;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/f/aa;->a:Lcom/google/android/maps/driveabout/f/d;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/f/aa;->b:Lcom/google/android/maps/driveabout/f/d;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/f/aa;->c:[Lcom/google/android/maps/driveabout/g/e;

    iput-object p4, p0, Lcom/google/android/maps/driveabout/f/aa;->d:[I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/f/aa;->a:Lcom/google/android/maps/driveabout/f/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/f/aa;->b:Lcom/google/android/maps/driveabout/f/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
