.class public Lcom/google/glass/maps/directions/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/nav/DataType;


# static fields
.field private static final v:Ljava/lang/String;

.field private static final w:Lcom/google/glass/logging/i;


# instance fields
.field public final a:I

.field public b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:J

.field public final g:J

.field public h:J

.field public i:J

.field public final j:I

.field public final k:Z

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:Z

.field public final s:J

.field public final t:Z

.field public final u:Z

.field private x:[Lcom/google/glass/maps/SchematicSegment;

.field private final y:Lcom/google/glass/maps/directions/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/glass/maps/directions/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/directions/b;->v:Ljava/lang/String;

    sget-object v0, Lcom/google/glass/maps/directions/b;->v:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/j;->a(Ljava/lang/String;)Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/directions/b;->w:Lcom/google/glass/logging/i;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/common/io/b/a;[Lcom/google/glass/maps/directions/d;)V
    .locals 8

    const/16 v1, 0x8

    const/4 v7, 0x1

    const/high16 v6, -0x100

    const/4 v5, -0x1

    const-wide/16 v3, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/b/a;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/b/a;->f(I)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v0, v7, v1, v2}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/a;IJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/maps/directions/b;->f:J

    :goto_0
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/b/f;->b(Lcom/google/googlenav/common/io/b/a;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/directions/b;->b:Ljava/lang/String;

    const/16 v0, 0xb

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/b/f;->b(Lcom/google/googlenav/common/io/b/a;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/directions/b;->c:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/b/f;->b(Lcom/google/googlenav/common/io/b/a;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/directions/b;->d:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/b/f;->b(Lcom/google/googlenav/common/io/b/a;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/directions/b;->e:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {p1, v0, v3, v4}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/a;IJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/maps/directions/b;->h:J

    const/4 v0, 0x4

    invoke-static {p1, v0, v3, v4}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/a;IJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/maps/directions/b;->i:J

    const/16 v0, 0xa

    invoke-static {p1, v0, v3, v4}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/a;IJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/maps/directions/b;->g:J

    const/4 v0, 0x5

    invoke-static {p1, v0, v5}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/a;II)I

    move-result v0

    iput v0, p0, Lcom/google/glass/maps/directions/b;->j:I

    const/16 v0, 0xe

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/b/f;->e(Lcom/google/googlenav/common/io/b/a;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/maps/directions/b;->k:Z

    const/16 v0, 0x1d

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/b/f;->b(Lcom/google/googlenav/common/io/b/a;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/directions/b;->l:Ljava/lang/String;

    const/16 v0, 0x1e

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/b/f;->b(Lcom/google/googlenav/common/io/b/a;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/directions/b;->m:Ljava/lang/String;

    invoke-static {p1, v7}, Lcom/google/googlenav/common/io/b/f;->c(Lcom/google/googlenav/common/io/b/a;I)I

    move-result v0

    iput v0, p0, Lcom/google/glass/maps/directions/b;->a:I

    const/16 v0, 0x6f

    invoke-static {p1, v0, v5}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/a;II)I

    move-result v0

    iput v0, p0, Lcom/google/glass/maps/directions/b;->n:I

    const/16 v0, 0x6c

    invoke-static {p1, v0, v5}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/a;II)I

    move-result v0

    or-int/2addr v0, v6

    iput v0, p0, Lcom/google/glass/maps/directions/b;->p:I

    invoke-virtual {p0}, Lcom/google/glass/maps/directions/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, -0xff1112

    :goto_1
    const/16 v1, 0x66

    invoke-static {p1, v1, v0}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/a;II)I

    move-result v0

    or-int/2addr v0, v6

    iput v0, p0, Lcom/google/glass/maps/directions/b;->o:I

    const/16 v0, 0x6b

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/maps/directions/b;->q:I

    const/16 v0, 0x18

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/b/f;->e(Lcom/google/googlenav/common/io/b/a;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/maps/directions/b;->r:Z

    const/16 v0, 0xc

    invoke-static {p1, v0, v3, v4}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/a;IJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/maps/directions/b;->s:J

    const/16 v0, 0x17

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/b/f;->e(Lcom/google/googlenav/common/io/b/a;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/maps/directions/b;->t:Z

    const/16 v0, 0xf

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/b/f;->d(Lcom/google/googlenav/common/io/b/a;I)J

    move-result-wide v0

    long-to-int v0, v0

    if-eqz p2, :cond_2

    if-ltz v0, :cond_2

    array-length v1, p2

    if-ge v0, v1, :cond_2

    aget-object v0, p2, v0

    iput-object v0, p0, Lcom/google/glass/maps/directions/b;->y:Lcom/google/glass/maps/directions/d;

    :goto_2
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/maps/directions/b;->u:Z

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/maps/directions/b;->f:J

    goto/16 :goto_0

    :cond_1
    const v0, -0xffff01

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/maps/directions/b;->y:Lcom/google/glass/maps/directions/d;

    goto :goto_2
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StepType (Drive=0 Transit=1 Walk=2 Bike=3 Dest=4): \t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/glass/maps/directions/b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/glass/maps/directions/b;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DepartureAddress: \t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/glass/maps/directions/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/google/glass/maps/directions/b;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ArrivalAddress: \t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/glass/maps/directions/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "DepartureIntervalSecs: \t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/glass/maps/directions/b;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/glass/maps/directions/b;->l:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "DeparturePlatform: \t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/glass/maps/directions/b;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "DepartureTimeSec: \t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_8

    iget-wide v1, p0, Lcom/google/glass/maps/directions/b;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ",\n  DeparturePointIndex: \t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/glass/maps/directions/b;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\n  DistanceMeters: \t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/glass/maps/directions/b;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",\n  DurationSecs: \t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/glass/maps/directions/b;->i:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/glass/maps/directions/b;->b:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "Instructions: \t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/glass/maps/directions/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lcom/google/glass/maps/directions/b;->m:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, "ArrivalPlatform: \t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/glass/maps/directions/b;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, "VehicleType: \t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/glass/maps/directions/b;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\n  LineColor: \t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/glass/maps/directions/b;->o:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\n  TextColor: \t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/glass/maps/directions/b;->p:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\n  NumOfStops: \t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/glass/maps/directions/b;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\n  ShowInInstruction: \t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/glass/maps/directions/b;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",\n  HasStreetViewPanoId: \t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/glass/maps/directions/b;->u:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n ShowLineName: \t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/glass/maps/directions/b;->t:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",\n  ShowIcon: \t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/glass/maps/directions/b;->r:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/glass/maps/directions/b;->r:Z

    if-eqz v1, :cond_5

    const-string v1, "IconId: \t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/glass/maps/directions/b;->s:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, p0, Lcom/google/glass/maps/directions/b;->c:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string v1, "TransitDirection: \t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/glass/maps/directions/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v1, p0, Lcom/google/glass/maps/directions/b;->y:Lcom/google/glass/maps/directions/d;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/glass/maps/directions/b;->y:Lcom/google/glass/maps/directions/d;

    invoke-virtual {v1}, Lcom/google/glass/maps/directions/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8
    iget-wide v1, p0, Lcom/google/glass/maps/directions/b;->f:J

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/google/glass/util/w;->a(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;[Lcom/google/glass/maps/directions/b;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/glass/maps/directions/b;->a(Landroid/content/Context;[Lcom/google/glass/maps/directions/b;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;[Lcom/google/glass/maps/directions/b;Z)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-wide v2, v0, Lcom/google/glass/maps/directions/b;->f:J

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p1, v0

    iget-wide v0, v0, Lcom/google/glass/maps/directions/b;->f:J

    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    aget-object v4, p1, v4

    iget-wide v4, v4, Lcom/google/glass/maps/directions/b;->i:J

    add-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    sget-object v0, Lcom/google/glass/maps/directions/b;->w:Lcom/google/glass/logging/i;

    const-string v1, "formatFromToDuration: end time is earlier than start time"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v4}, Lcom/google/glass/logging/i;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move-wide v0, v2

    :cond_0
    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v2

    const/4 v6, 0x0

    invoke-static {p0, v4, v5, v6}, Lcom/google/glass/util/w;->a(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    mul-long/2addr v5, v0

    const/4 v7, 0x0

    invoke-static {p0, v5, v6, v7}, Lcom/google/glass/util/w;->a(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v5

    if-eqz p2, :cond_2

    invoke-static {p0}, Lcom/google/glass/maps/c/o;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/glass/maps/c/o;->a()Lcom/google/glass/maps/c/o;

    move-result-object v6

    const-wide/16 v7, 0x3c

    div-long/2addr v0, v7

    const-wide/16 v7, 0x3c

    div-long/2addr v2, v7

    sub-long/2addr v0, v2

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x3c

    invoke-virtual {v6, v0}, Lcom/google/glass/maps/c/o;->a(I)Landroid/text/Spannable;

    move-result-object v0

    sget v1, Lcom/google/glass/maps/bs;->from_to_duration:I

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v5, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    sget v0, Lcom/google/glass/maps/bs;->from_to:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v4, v1, v2

    const/4 v2, 0x1

    aput-object v5, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;[Lcom/google/glass/maps/directions/b;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/glass/maps/directions/b;->a(Landroid/content/Context;[Lcom/google/glass/maps/directions/b;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private j()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/glass/maps/directions/b;->a:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/google/android/maps/driveabout/nav/DataType$Type;
    .locals 1

    sget-object v0, Lcom/google/android/maps/driveabout/nav/DataType$Type;->STEP_TYPE:Lcom/google/android/maps/driveabout/nav/DataType$Type;

    return-object v0
.end method

.method public final a(Lcom/google/glass/maps/directions/b;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/glass/maps/directions/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/glass/maps/directions/b;->c()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v0, p0, Lcom/google/glass/maps/directions/b;->h:J

    iget-wide v2, p1, Lcom/google/glass/maps/directions/b;->h:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/glass/maps/directions/b;->h:J

    iget-wide v0, p0, Lcom/google/glass/maps/directions/b;->i:J

    iget-wide v2, p1, Lcom/google/glass/maps/directions/b;->i:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/glass/maps/directions/b;->i:J

    goto :goto_0
.end method

.method public final a([Lcom/google/glass/maps/SchematicSegment;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/maps/directions/b;->x:[Lcom/google/glass/maps/SchematicSegment;

    return-void
.end method

.method public final b()I
    .locals 3

    const/high16 v0, -0x100

    iget v1, p0, Lcom/google/glass/maps/directions/b;->p:I

    iget v2, p0, Lcom/google/glass/maps/directions/b;->o:I

    invoke-static {v1, v2}, Lcom/google/glass/util/s;->a(II)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v0, p0, Lcom/google/glass/maps/directions/b;->p:I

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/google/glass/maps/directions/b;->o:I

    invoke-static {v0, v1}, Lcom/google/glass/util/s;->a(II)Z

    move-result v1

    if-nez v1, :cond_0

    iget v0, p0, Lcom/google/glass/maps/directions/b;->p:I

    goto :goto_0
.end method

.method public final c()Z
    .locals 2

    iget v0, p0, Lcom/google/glass/maps/directions/b;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 2

    iget v0, p0, Lcom/google/glass/maps/directions/b;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()[Lcom/google/glass/maps/SchematicSegment;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/directions/b;->x:[Lcom/google/glass/maps/SchematicSegment;

    return-object v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/glass/maps/directions/b;->t:Z

    return v0
.end method

.method public final g()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/glass/maps/directions/b;->s:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/maps/directions/b;->t:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Lcom/google/glass/maps/directions/d;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/maps/directions/b;->y:Lcom/google/glass/maps/directions/d;

    return-object v0
.end method

.method public final i()I
    .locals 1

    invoke-direct {p0}, Lcom/google/glass/maps/directions/b;->j()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/glass/maps/directions/b;->n:I

    sparse-switch v0, :sswitch_data_0

    sget v0, Lcom/google/glass/maps/bl;->vehicle_type_bus:I

    goto :goto_0

    :sswitch_0
    sget v0, Lcom/google/glass/maps/bl;->vehicle_type_airplane:I

    goto :goto_0

    :sswitch_1
    sget v0, Lcom/google/glass/maps/bl;->vehicle_type_bus:I

    goto :goto_0

    :sswitch_2
    sget v0, Lcom/google/glass/maps/bl;->vehicle_type_cable_car:I

    goto :goto_0

    :sswitch_3
    sget v0, Lcom/google/glass/maps/bl;->vehicle_type_ferry:I

    goto :goto_0

    :sswitch_4
    sget v0, Lcom/google/glass/maps/bl;->vehicle_type_funicular:I

    goto :goto_0

    :sswitch_5
    sget v0, Lcom/google/glass/maps/bl;->vehicle_type_gondola:I

    goto :goto_0

    :sswitch_6
    sget v0, Lcom/google/glass/maps/bl;->vehicle_type_horse_carriage:I

    goto :goto_0

    :sswitch_7
    sget v0, Lcom/google/glass/maps/bl;->vehicle_type_monorail:I

    goto :goto_0

    :sswitch_8
    sget v0, Lcom/google/glass/maps/bl;->vehicle_type_rail:I

    goto :goto_0

    :sswitch_9
    sget v0, Lcom/google/glass/maps/bl;->vehicle_type_taxi:I

    goto :goto_0

    :sswitch_a
    sget v0, Lcom/google/glass/maps/bl;->vehicle_type_subway:I

    goto :goto_0

    :sswitch_b
    sget v0, Lcom/google/glass/maps/bl;->vehicle_type_tram:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x5 -> :sswitch_a
        0x6 -> :sswitch_0
        0x11 -> :sswitch_8
        0x12 -> :sswitch_8
        0x21 -> :sswitch_1
        0x23 -> :sswitch_9
        0x41 -> :sswitch_5
        0x42 -> :sswitch_4
        0x51 -> :sswitch_6
        0x111 -> :sswitch_a
        0x112 -> :sswitch_b
        0x113 -> :sswitch_7
        0x121 -> :sswitch_8
        0x122 -> :sswitch_8
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/glass/maps/directions/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
