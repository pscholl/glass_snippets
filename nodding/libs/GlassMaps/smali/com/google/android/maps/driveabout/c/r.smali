.class public final Lcom/google/android/maps/driveabout/c/r;
.super Lcom/google/android/maps/driveabout/c/q;


# instance fields
.field private a:Ljava/lang/String;

.field private final b:I


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/c/q;-><init>(Lorg/w3c/dom/Node;)V

    const-string v0, "param"

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/c/r;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/c/r;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/c/r;->b:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/c/r;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/c/r;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/c/r;->a:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/c/r;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected final b(Ljava/io/Writer;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "param=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/c/r;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/c/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method
