.class final Lcom/google/android/maps/driveabout/h/d;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/h/b;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/h/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/h/d;->a:Lcom/google/android/maps/driveabout/h/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const-string v0, "ErrorReport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/h/d;->a:Lcom/google/android/maps/driveabout/h/b;

    invoke-static {v2}, Lcom/google/android/maps/driveabout/h/b;->a(Lcom/google/android/maps/driveabout/h/b;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " old logs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/h/d;->a:Lcom/google/android/maps/driveabout/h/b;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/h/b;->a(Lcom/google/android/maps/driveabout/h/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/h/d;->a:Lcom/google/android/maps/driveabout/h/b;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/h/b;->a(Lcom/google/android/maps/driveabout/h/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method
