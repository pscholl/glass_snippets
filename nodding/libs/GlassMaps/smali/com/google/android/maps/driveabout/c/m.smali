.class public final Lcom/google/android/maps/driveabout/c/m;
.super Lcom/google/android/maps/driveabout/c/f;


# instance fields
.field private final b:Lcom/google/android/maps/driveabout/location/z;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/location/z;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/location/z;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/c/f;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/c/m;->b:Lcom/google/android/maps/driveabout/location/z;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/c/f;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v0, Lcom/google/android/maps/driveabout/location/z;

    const-string v1, "provider"

    invoke-static {p1, v1}, Lcom/google/android/maps/driveabout/c/m;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "time"

    invoke-static {p1, v2}, Lcom/google/android/maps/driveabout/c/m;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "orientation"

    invoke-static {p1, v4}, Lcom/google/android/maps/driveabout/c/m;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const-string v5, "pitch"

    const-string v6, "45"

    invoke-static {p1, v5, v6}, Lcom/google/android/maps/driveabout/c/m;->a(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/location/z;-><init>(Ljava/lang/String;JFF)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/c/m;->b:Lcom/google/android/maps/driveabout/location/z;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/maps/driveabout/location/z;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/c/m;->b:Lcom/google/android/maps/driveabout/location/z;

    return-object v0
.end method

.method protected final a(Ljava/io/Writer;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<orientation provider=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/c/m;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/c/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' time=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/c/m;->b:Lcom/google/android/maps/driveabout/location/z;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/location/z;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' orientation=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/c/m;->b:Lcom/google/android/maps/driveabout/location/z;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/location/z;->c()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' pitch=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/c/m;->b:Lcom/google/android/maps/driveabout/location/z;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/location/z;->d()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method
