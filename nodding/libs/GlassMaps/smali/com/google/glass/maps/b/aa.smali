.class public final Lcom/google/glass/maps/b/aa;
.super Ljava/lang/Object;


# static fields
.field private static final m:Ljava/lang/ThreadLocal;


# instance fields
.field public final a:Lcom/google/android/maps/driveabout/e/ab;

.field public final b:Lcom/google/android/maps/driveabout/e/ab;

.field public final c:Lcom/google/android/maps/driveabout/e/ab;

.field public final d:Lcom/google/android/maps/driveabout/e/ab;

.field public final e:Lcom/google/android/maps/driveabout/e/ab;

.field public final f:Lcom/google/android/maps/driveabout/e/ab;

.field public final g:Lcom/google/android/maps/driveabout/e/ab;

.field public final h:Lcom/google/android/maps/driveabout/e/ab;

.field public final i:Lcom/google/android/maps/driveabout/e/ab;

.field public final j:Lcom/google/android/maps/driveabout/e/ab;

.field public final k:Lcom/google/android/maps/driveabout/e/ab;

.field public final l:Lcom/google/android/maps/driveabout/e/ab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/glass/maps/b/ab;

    invoke-direct {v0}, Lcom/google/glass/maps/b/ab;-><init>()V

    sput-object v0, Lcom/google/glass/maps/b/aa;->m:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/b/aa;->a:Lcom/google/android/maps/driveabout/e/ab;

    new-instance v0, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/b/aa;->b:Lcom/google/android/maps/driveabout/e/ab;

    new-instance v0, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/b/aa;->c:Lcom/google/android/maps/driveabout/e/ab;

    new-instance v0, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/b/aa;->d:Lcom/google/android/maps/driveabout/e/ab;

    new-instance v0, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/b/aa;->e:Lcom/google/android/maps/driveabout/e/ab;

    new-instance v0, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/b/aa;->f:Lcom/google/android/maps/driveabout/e/ab;

    new-instance v0, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/b/aa;->g:Lcom/google/android/maps/driveabout/e/ab;

    new-instance v0, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/b/aa;->h:Lcom/google/android/maps/driveabout/e/ab;

    new-instance v0, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/b/aa;->i:Lcom/google/android/maps/driveabout/e/ab;

    new-instance v0, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/b/aa;->j:Lcom/google/android/maps/driveabout/e/ab;

    new-instance v0, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/b/aa;->k:Lcom/google/android/maps/driveabout/e/ab;

    new-instance v0, Lcom/google/android/maps/driveabout/e/ab;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/e/ab;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/b/aa;->l:Lcom/google/android/maps/driveabout/e/ab;

    return-void
.end method

.method public static a()Lcom/google/glass/maps/b/aa;
    .locals 1

    sget-object v0, Lcom/google/glass/maps/b/aa;->m:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/b/aa;

    return-object v0
.end method
