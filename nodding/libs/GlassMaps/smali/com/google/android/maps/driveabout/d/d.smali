.class final Lcom/google/android/maps/driveabout/d/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/store/ap;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/d/c;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/d/c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/d/d;->a:Lcom/google/android/maps/driveabout/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/e/p;ILcom/google/android/maps/driveabout/e/o;)V
    .locals 3

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    const-string v0, "IndoorState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Building id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/d/d;->a:Lcom/google/android/maps/driveabout/d/c;

    invoke-static {v0, p3}, Lcom/google/android/maps/driveabout/d/c;->a(Lcom/google/android/maps/driveabout/d/c;Lcom/google/android/maps/driveabout/e/o;)V

    goto :goto_0
.end method
